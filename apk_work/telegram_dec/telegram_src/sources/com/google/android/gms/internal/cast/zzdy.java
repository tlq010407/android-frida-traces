package com.google.android.gms.internal.cast;

import android.os.Build;
import org.telegram.tgnet.ConnectionsManager;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zzdy {
    public static final int zza;

    static {
        zza = Build.VERSION.SDK_INT >= 23 ? ConnectionsManager.FileTypeFile : 0;
    }
}
