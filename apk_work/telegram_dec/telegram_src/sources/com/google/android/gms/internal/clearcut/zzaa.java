package com.google.android.gms.internal.clearcut;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class zzaa {
    private static volatile UserManager zzdc;
    private static volatile boolean zzdd = !zzf();

    public static boolean zze(Context context) {
        return zzf() && !zzf(context);
    }

    private static boolean zzf() {
        return Build.VERSION.SDK_INT >= 24;
    }

    private static boolean zzf(Context context) {
        boolean zIsUserUnlocked = zzdd;
        if (!zIsUserUnlocked) {
            UserManager userManager = zzdc;
            if (userManager == null) {
                synchronized (zzaa.class) {
                    try {
                        userManager = zzdc;
                        if (userManager == null) {
                            UserManager userManager2 = (UserManager) context.getSystemService(UserManager.class);
                            zzdc = userManager2;
                            if (userManager2 == null) {
                                zzdd = true;
                                return true;
                            }
                            userManager = userManager2;
                        }
                    } finally {
                    }
                }
            }
            zIsUserUnlocked = userManager.isUserUnlocked();
            zzdd = zIsUserUnlocked;
            if (zIsUserUnlocked) {
                zzdc = null;
            }
        }
        return zIsUserUnlocked;
    }
}
