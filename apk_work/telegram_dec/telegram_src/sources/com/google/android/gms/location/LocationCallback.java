package com.google.android.gms.location;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class LocationCallback {
    public void onLocationAvailability(LocationAvailability locationAvailability) {
    }

    public abstract void onLocationResult(LocationResult locationResult);
}
