package com.google.firebase;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public class FirebaseException extends Exception {
    protected FirebaseException() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(String str) {
        super(str);
        Preconditions.checkNotEmpty(str, "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(String str, Throwable th) {
        super(str, th);
        Preconditions.checkNotEmpty(str, "Detail message must not be empty");
    }
}
