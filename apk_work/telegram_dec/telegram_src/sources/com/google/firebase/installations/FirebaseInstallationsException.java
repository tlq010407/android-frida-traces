package com.google.firebase.installations;

import com.google.firebase.FirebaseException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class FirebaseInstallationsException extends FirebaseException {
    private final Status status;

    public enum Status {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public FirebaseInstallationsException(Status status) {
        this.status = status;
    }

    public FirebaseInstallationsException(String str, Status status) {
        super(str);
        this.status = status;
    }
}
