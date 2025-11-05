package com.googlecode.mp4parser.util;

import java.util.Date;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes.dex */
public abstract class DateHelper {
    public static long convert(Date date) {
        return (date.getTime() / 1000) + 2082844800;
    }

    public static Date convert(long j) {
        return new Date((j - 2082844800) * 1000);
    }
}
