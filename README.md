# android-frida-traces

## 1. For **“dangerous” permissions**

According to Google’s dangerous permission groups, hook these Java APIs in the app that access those resources:

- Location: android.location.LocationManager.requestLocationUpdates, FusedLocationProviderClient.requestLocationUpdates (Google Play Services)
- Camera: android.hardware.Camera.open(), android.hardware.camera2.\* APIs, android.media.MediaRecorder.start()
- Microphone: android.media.MediaRecorder.start(), AudioRecord constructors/methods
- Contacts: android.provider.ContactsContract.\* queries via ContentResolver.query(...) targeting contacts URIs
- SMS: android.telephony.SmsManager.sendTextMessage(...)
- Phone state / device id: android.telephony.TelephonyManager.getDeviceId(), getImei(), getLine1Number()
- Storage (read/write external): java.io.File / FileInputStream usage is noisy but you can hook open()/FileInputStream.<init> / ContentResolver.openInputStream()
- Camera/Location permission checks: calls to ContextCompat.checkSelfPermission or ActivityCompat.requestPermissions.

## 2. How to Obtain an APK for a Popular Android App

### Prerequisites

- **Android SDK Platform Tools** (`adb`) — required to interact with emulator/device.
- **apktool** — decode APK resources and produce smali.
- **unzip, strings, find** — usually built-in on macOS/Linux.

### Recommended: Pull APK from an Android Emulator (easy & rootable)

Using an Android Studio emulator is the simplest approach because you can run `adb root` and access protected directories.

1. **List connected devices**

```bash
adb devices -l
```

2. Find the package name (example: Telegram)

```bash
   adb shell pm list packages | grep -i telegram
```

Common package names:

- Telegram: org.telegram.messenger
- WhatsApp: com.whatsapp
- Chrome: com.android.chrome (or com.google.android.apps.chrome)

3. Get APK path inside the emulator:

```bash
adb shell pm path org.telegram.messenger
```

This prints something like /data/app/org.telegram.messenger-XXXX/base.apk.

4. Enable root on the emulator:

```bash
adb root
# (emulator will restart adbd as root)
```

5. Pull the APK to the machine:

```bash
mkdir -p ~/android-frida-traces/apk
adb pull /data/app/org.telegram.messenger-XXXX/base.apk ~/android-frida-traces/apk/telegram.apk
```

6. Verify the pulled APK:

```bash
ls -lh ~/android-frida-traces/apk/telegram.apk
unzip -l ~/android-frida-traces/apk/telegram.apk | head -n 40
```

### Inspect / Extract APK Contents

Once telegram.apk is local, inspect and extract components:

```bash
# list contents
unzip -l ~/android-frida-traces/apk/telegram.apk | head -n 40

# extract all native libs (keeps ABI subdirs)
mkdir -p telegram_libs
unzip ~/android-frida-traces/apk/telegram.apk 'lib/*' -d telegram_libs
find telegram_libs -type f -name "*.so" -print

# extract dex files for Java analysis
mkdir -p dex_files
unzip ~/android-frida-traces/apk/telegram.apk '*.dex' -d dex_files
ls -lh dex_files
```

### Decode resources & smali (apktool)

```bash
apktool d ~/android-frida-traces/apk/telegram.apk -o telegram_dec
# decoded resources: telegram_dec/res
# smali: telegram_dec/smali, smali_classes2, etc.
```

### Quick native-symbol inspection

```bash
# quick text search for JNI / crypto / network related symbols
strings telegram_libs/lib/arm64-v8a/libtmessages.49.so | egrep -i 'Java_|jni_|encrypt|send|socket|ssl|crypto|auth'

# if readelf is available:
readelf -s telegram_libs/lib/arm64-v8a/libtmessages.49.so | grep Java_
```

### Troubleshooting & notes

Problems may hit & how I resolved them

- adb pull permission denied
  - Cause: physical device not rooted.
  - Fix: use an emulator (run adb root) or obtain the APK through a trusted mirror.
- pm path shows system/product location (e.g. /product/app/...)
  - Cause: app is installed in a protected partition.
  - Fix: adb root and retry; emulator is easiest for access.
- App installed as app bundle (.aab) or split APKs
  - Cause: Google Play may deliver split APKs.
  - Fix: use bundletool to generate device-specific .apks, or extract split APKs from the device.
- APK not found or package name mismatch
  - Cause: wrong package name or app not installed.
  - Fix: run adb shell pm list packages and confirm exact package name.

## 3. Use Frida to hook APIs in the app

### Quick overview

**Goal:** instrument the app (Java + native) to capture calls that touch “dangerous” Android resources (location, camera/mic, contacts/SMS, phone identifiers, storage, network, crypto) so you can produce a privacy/security timeline and CSV/JSON artifacts for analysis.

Run frida-server on a rooted emulator, attach the target app, install lightweight Frida scripts that hook a compact list of Java APIs and a small set of native entry points (or RegisterNatives), collect structured logs, then convert and analyze them. Start small (4–6 APIs) to check stability, expand to cover the full set once stable.

### Prepare emulator / device & start frida-server

1. Confirm device/emulator and ABI:

```bash
adb devices -l
adb shell getprop ro.product.cpu.abi
```

2. Push and run frida-server on the emulator (replace version/filenames as required):

```bash
# on host
curl -L -o frida-server.xz "https://github.com/frida/frida/releases/download/17.3.2/frida-server-17.3.2-android-arm64.xz"
xz -d frida-server.xz
chmod +x frida-server-17.3.2-android-arm64
adb root
adb push frida-server-17.3.2-android-arm64 /data/local/tmp/frida-server
adb shell "chmod 755 /data/local/tmp/frida-server; /data/local/tmp/frida-server > /data/local/tmp/frida-server.log 2>&1 &"
adb shell ps | grep frida-server
```

3. From host, check Frida can see the device:

```bash
frida-ls-devices
frida-ps -D emulator-5554      # list processes on that device
```

### Basic Frida usage patterns

1. Attach to a running process by PID

```bash
# find pid
adb shell pidof org.telegram.messenger
# attach and log output to file
frida -D emulator-5554 -p <PID> -l scripts/hook_java_generic.js -o logs/telegram_java_hook.log
```

2. Run Frida in background and collect logs

```bash
frida -D emulator-5554 -p <PID> -l scripts/hook_combined.js -o logs/telegram_combo.log &
```

### What to hook

For the assignment (dangerous permissions + investigation), useful classes and methods include:

- Location / GPS: android.location.LocationManager.requestLocationUpdates, getLastKnownLocation
- Telephony / Device IDs: android.telephony.TelephonyManager.getDeviceId, getImei, getSubscriberId
- SMS / Contacts: android.telephony.SmsManager.sendTextMessage, android.content.ContentResolver.query(android.provider ContactsContract...)
- Camera / Microphone: camera APIs and MediaRecorder, AudioRecord
- Files & Storage: java.io.File, java.io.FileOutputStream, openFileOutput, Context.getFilesDir
- Network APIs: java.net.Socket, HttpURLConnection, OkHttp okhttp3.OkHttpClient.newCall (hook library methods)
- Sensitive app-specific JNI methods (crypto, network send): e.g. org.telegram.tgnet.ConnectionsManager.native_sendRequest, Utilities.aesIgeEncryption, etc.
- SQLite: org.telegram.SQLite.SQLitePreparedStatement.prepare / step

Hook both Java wrappers and the native implementations to get complete coverage.

### Hooking strategy

- Java-level hooks first: cheap, high signal — hook the specific Java classes/methods listed above and collect timestamp, thread, caller, readable args and return values. Java hooks run inside Java.perform and are resilient to most app designs if timed correctly.
- Early-initialization: spawn the app paused when you need to catch Application.onCreate or early native library loads.
- Native coverage: when an app uses JNI or stripped native libraries, intercept RegisterNatives (or exported native symbols) to map Java methods to native addresses and then hook those native functions. Only add native hooks once Java hooks are stable to avoid crashes.
- Be selective: start with a small subset (location + telephony + network) and expand once stable.

### Logging, post-processing & reporting

- Log to files using Frida -o option: -o logs/telegram_combo.log.
- Sanitize logs if they contain personal data.
- Convert to CSV for analysis: include timestamp, thread, call name, args, return. You can use the tools/frida_log_to_csv.py and tools/analyze_frida_csv.py scripts in this repo (update their paths).
- Produce a summary JSON and basic timeline charts (optional).

### Workflow for a full instrument & test run

1. Start frida-server and verify:

```bash
adb root
adb shell /data/local/tmp/frida-server &
frida-ls-devices
frida-ps -D emulator-5554 | grep -i telegram
```

2. Launch or attach to Telegram:

```bash
adb shell monkey -p org.telegram.messenger -c android.intent.category.LAUNCHER 1
sleep 2
PID=$(adb shell pidof org.telegram.messenger)
frida -D emulator-5554 -p $PID -l scripts/hook_java_generic.js -o logs/telegram_java_hook.log
```

3. Manual interactions in the emulator (send a message, open settings, enable location, make a call, etc.). The Java + native hooks will log API calls.

4. After tests, stop frida (Ctrl-C) and collect logs:

```bash
python3 tools/frida_log_to_csv.py logs/telegram_java_hook.log > logs/telegram_java_hook.csv
python3 tools/analyze_frida_csv.py logs/telegram_java_hook.csv > logs/telegram_summary.json
```

### Troubleshooting & gotchas

- **Failed to attach: closed or unable to find process:** ensure the PID is correct, the process still runs, and frida-server is running on the device. Use frida-ps -D emulator-5554 to confirm.
- **Frida versions mismatch:** frida-client (host) and frida-server (device) should be the same major/minor. If things act weird, re-download matching frida-server.
- **App crashes after hook:** your script might have a bug or invalid memory access (native hooks). Disable suspect hooks and re-run. Use try/catch liberally in JS to avoid throwing exceptions that break the app.
- **Can’t pull APK from a physical device:** physical devices are usually not rootable; use emulator or download APK from a trusted mirror instead.
- **Missing symbols for native hooking:** many native functions are static (not exported) or stripped. Use strings to find Java\_\* JNI names, or intercept RegisterNatives to map Java->native addresses.
- **Anti-Frida/anti-debugging:** some apps detect Frida and actively prevent instrumentation. Techniques: patch out checks (advanced), run on rooted emulator, embed gadget into a modified APK, or use a restored device image with debugging disabled.

## 4. Native libraries (Telegram APK)

<img width="526" height="254" alt="image" src="https://github.com/user-attachments/assets/431d17a8-266a-4e57-b744-5e69fc01d4ee" />

Here in this part lists native libraries found in the Telegram APK unpacked, several concrete native functions (JNI and C++), commands you can re-run to find symbols, and immediate recommendations for auditing/hooking.

Libraries identified

- lib/arm64-v8a/libtmessages.49.so — main Telegram native binary. Contains networking, crypto, VoIP, media, and JNI glue.
- lib/arm64-v8a/libucs-credential.so — credential/security helper (Huawei wise-security library in this APK).
- lib/arm64-v8a/liblanguage_id_jni.so — language identification JNI glue (Google ML/Kit related).
- lib/arm64-v8a/libTransform.so — small transform/codec helper for media processing.

### A few concrete native functions found in libtmessages.49.so

#### JNI bridge functions (Java → native)

These JNI functions are excellent hook targets because Java code calls them directly:

- Java_org_telegram_messenger_Utilities_aesIgeEncryption
- Java_org_telegram_messenger_Utilities_aesIgeEncryptionByteArray
- Java_org_telegram_messenger_Utilities_aesCtrDecryption
- Java_org_telegram_messenger_Utilities_pbkdf2
- Java_org_telegram_messenger_MediaController_startRecord
- Java_org_telegram_messenger_MediaController_writeFrame
- Java_org_telegram_messenger_MediaController_stopRecord
- Java_org_telegram_messenger_MediaController_getWaveform
- Java_org_telegram_messenger_NativeLoader_init
- Java*org_telegram_messenger_voip_ConferenceCall_call_1create (and other voip_ConferenceCall*\* JNI methods)

Hooking these gives insight into crypto, media capture, and VoIP flows.

#### C++ (mangled) / exported native functions (networking / connection)

Mangled C++ names indicate important native paths (use demangling tools or symbol matching):

- \_ZN18ConnectionsManager11sendRequestEP8TLObjectNSt6\_\_ndk18functionIFvS1_P8TL_errorilliEEENS3_IFvvEEES9_S9_jj14ConnectionTypebi - ConnectionsManager::sendRequest (native send path; network requests)
- \_ZN16ConnectionSocket18onHostNameResolvedENSt6\_\_ndk112basic_stringIc... — DNS/connection callback
- Many ZN7WelsEnc\* symbols — video encoder internals (used for video/voip)
- JNI_OnLoad / JNI_OnUnload — library init/uninit entrypoints
  If the binary is not stripped, these symbols might be visible via readelf/nm. If stripped, runtime interception of RegisterNatives is the recommended approach.

#### Media / codec JNI wrappers (ExoPlayer extensions)

These wrappers come from bundled media libraries (ExoPlayer native extensions):

- Java_com_google_android_exoplayer2_ext_flac_FlacDecoderJni_flacInit and related FLAC functions
- Java_com_google_android_exoplayer2_ext_opus_OpusDecoder_opusInit, opusDecode, etc.
- ffmpeg related functions: Java_com_google_android_exoplayer2_ext_ffmpeg_FfmpegLibrary_ffmpegGetVersion, ffmpegDecode...

These are useful for hooking media decode/encode pipelines.

## 5. Android Monkey Testing for Telegram (with Frida Hooks)
I am use Android Monkey which is a built-in Android testing tool to automatically generate random user events (like taps, swipes, button presses, etc.) on the Telegram app running inside an emulator.

### Why Use Android Monkey

- **Purpose Description:** Dynamic coverage Monkey generates thousands of random UI events to explore different execution paths, increasing the probability of triggering sensitive or security-relevant APIs (e.g., getDeviceId, sendTextMessage, aesIgeEncryption).
- **Automation** : It eliminates manual testing — you don’t have to click through the UI; Monkey can continuously send pseudo-random events.
- **Integration with Frida** : While Monkey runs, Frida hooks record all Java/native function calls, arguments, and return values — automatically building up execution traces for analysis.
- **User simulation** : Simulates realistic user behavior (touch, navigation, rotation) at configurable speed and ratios (--pct-touch, --pct-nav, etc.).
- **Stress and fuzz testing** : Helps detect crashes, ANRs, or unstable behaviors while monitoring with Frida, logcat, and dumpsys.

### Test Setup

1. Running the Monkey Test

- Step 1 — Launch the app

```bash
adb shell monkey -p org.telegram.messenger -c android.intent.category.LAUNCHER 1
```

- Step 2 — Find the app’s PID

```bash
adb shell pidof org.telegram.messenger
```

- Step 3 — Attach Frida Hooks

In separate terminals:

```bash
# Java layer
frida -D emulator-5554 -p <PID> -l ~/android-frida-traces/scripts/frida_java_hooks_jsonl.js -o ~/android-frida-traces/logs/telegram_java.log

# Native layer
frida -D emulator-5554 -p <PID> -l ~/android-frida-traces/scripts/frida_native_hooks_jsonl.js -o ~/android-frida-traces/logs/telegram_native.log
```

- Step 4 — Run Android Monkey

Once Frida is attached, start the Monkey tool to send random UI events:

```bash
adb shell monkey -p org.telegram.messenger --throttle 50 -v 1000
```

- Step 5 — Collect Logs

After the test finishes:

```bash
ls ~/android-frida-traces/logs/
cat ~/android-frida-traces/logs/telegram_java.log | jq .
```

all output logs Frida, Monkey, logcat, and dumpsys are automatically collected and timestamped under:

```bash
~/android-frida-traces/runs/org.telegram.messenger_<timestamp>/
```
