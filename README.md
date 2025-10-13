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
