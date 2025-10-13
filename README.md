# android-frida-traces
## 1. For **“dangerous” permissions**
    - Location（ACCESS_FINE_LOCATION / ACCESS_COARSE_LOCATION）
        - android.location.LocationManager.requestLocationUpdates(String provider, long minTime, float minDistance, LocationListener listener)
        - com.google.android.gms.location.FusedLocationProviderClient.getLastLocation() or requestLocationUpdates(...)
    - CAMERA
        - android.hardware.camera2.CameraManager.openCamera(...)
    - Mic（RECORD_AUDIO）
        - android.media.MediaRecorder.start()
        - android.media.AudioRecord.read(...)
    - Contact（READ_CONTACTS / WRITE_CONTACTS）
        - android.content.ContentResolver.query(ContactsContract.Contacts.CONTENT_URI, ...)
    - Message（SEND_SMS / RECEIVE_SMS）
        - android.telephony.SmsManager.sendTextMessage(...)
    - Storage（READ_EXTERNAL_STORAGE / WRITE_EXTERNAL_STORAGE / MediaStore）
        - java.io.FileInputStream, MediaStore
    - Telephone（READ_PHONE_STATE）
        - android.telephony.TelephonyManager.getDeviceId(), getLine1Number()
