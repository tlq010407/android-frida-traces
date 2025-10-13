# android-frida-traces
## 1. For **“dangerous” permissions**
According to Google’s dangerous permission groups, hook these Java APIs in the app that access those resources:
- Location: android.location.LocationManager.requestLocationUpdates, FusedLocationProviderClient.requestLocationUpdates (Google Play Services)
- Camera: android.hardware.Camera.open(), android.hardware.camera2.* APIs, android.media.MediaRecorder.start()
- Microphone: android.media.MediaRecorder.start(), AudioRecord constructors/methods
- Contacts: android.provider.ContactsContract.* queries via ContentResolver.query(...) targeting contacts URIs
- SMS: android.telephony.SmsManager.sendTextMessage(...)
- Phone state / device id: android.telephony.TelephonyManager.getDeviceId(), getImei(), getLine1Number()
- Storage (read/write external): java.io.File / FileInputStream usage is noisy but you can hook open()/FileInputStream.<init> / ContentResolver.openInputStream()
- Camera/Location permission checks: calls to ContextCompat.checkSelfPermission or ActivityCompat.requestPermissions.

## 2. How to Obtain an APK for a Popular Android App

### Prerequisites
- **Android SDK Platform Tools** (`adb`) — required to interact with emulator/device. 
- **apktool** — decode APK resources and produce smali.  
- **unzip, strings, find** — usually built-in on macOS/Linux.  

### 1) Recommended: Pull APK from an Android Emulator (easy & rootable)

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
6.	Verify the pulled APK:
```bash
ls -lh ~/android-frida-traces/apk/telegram.apk
unzip -l ~/android-frida-traces/apk/telegram.apk | head -n 40
```

### 2) Inspect / Extract APK Contents

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

### 3) Decode resources & smali (apktool)
```bash
apktool d ~/android-frida-traces/apk/telegram.apk -o telegram_dec
# decoded resources: telegram_dec/res
# smali: telegram_dec/smali, smali_classes2, etc.
```

### 4) Quick native-symbol inspection
```bash
# quick text search for JNI / crypto / network related symbols
strings telegram_libs/lib/arm64-v8a/libtmessages.49.so | egrep -i 'Java_|jni_|encrypt|send|socket|ssl|crypto|auth'

# if readelf is available:
readelf -s telegram_libs/lib/arm64-v8a/libtmessages.49.so | grep Java_
```

## Troubleshooting & notes
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
