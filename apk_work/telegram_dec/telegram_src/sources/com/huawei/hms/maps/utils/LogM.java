package com.huawei.hms.maps.utils;

import android.text.TextUtils;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Pattern;
import org.telegram.messenger.LiteMode;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class LogM {
    private static StringBuffer a = new StringBuffer();
    private static final Pattern b = Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");
    private static boolean c = Log.isLoggable("HmsMapSite", 2);
    private static boolean d = Log.isLoggable("HmsMapSite", 3);
    private static boolean e = Log.isLoggable("HmsMapSite", 4);
    private static boolean f = Log.isLoggable("HmsMapSite", 5);
    private static boolean g = Log.isLoggable("HmsMapSite", 6);

    private LogM() {
    }

    private static String a(long j) {
        return new SimpleDateFormat("yyyy/MM/dd HH:mm:ss SSS").format(new Date(j));
    }

    private static String a(String str) {
        if (str == null) {
            return "HmsMapKit";
        }
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        return "HmsMapKit_" + str + "_" + (stackTrace.length > 5 ? stackTrace[5].getLineNumber() : 0);
    }

    private static String a(String str, boolean z) {
        StringBuilder sb = new StringBuilder(LiteMode.FLAG_CALLS_ANIMATIONS);
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                str = maf.a(str);
            }
            sb.append(str);
        }
        return sb.toString();
    }

    private static void a(String str, String str2) {
        StringBuffer stringBuffer;
        if (TextUtils.isEmpty(str)) {
            str = "HmsMapKit";
        }
        if (a.length() == 0) {
            stringBuffer = a;
        } else {
            stringBuffer = a;
            stringBuffer.append(System.lineSeparator());
        }
        stringBuffer.append(a(System.currentTimeMillis()));
        stringBuffer.append(" ");
        stringBuffer.append(str);
        stringBuffer.append(":");
        stringBuffer.append(str2);
        if (a.length() > 3072) {
            a.setLength(0);
        }
    }

    public static void d(String str, String str2) {
        if (d) {
            d(str, str2, (Throwable) null, false);
        }
    }

    public static void d(String str, String str2, String str3) {
        if (d) {
            d(str, str2, str3, (Throwable) null);
        }
    }

    public static void d(String str, String str2, String str3, Throwable th) {
        if (d) {
            String strA = a(str);
            if (th == null) {
                maf.a(strA, str2, str3);
            } else {
                maf.a(strA, str2, str3, th);
            }
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (d) {
            d(str, str2, th, false);
        }
    }

    public static void d(String str, String str2, Throwable th, boolean z) {
        if (d) {
            String strA = a(str);
            if (th == null) {
                maf.a(strA, str2, z);
            } else {
                maf.a(strA, str2, th, z);
            }
        }
    }

    public static void d(String str, String str2, boolean z) {
        if (d) {
            d(str, str2, (Throwable) null, z);
        }
    }

    public static void e(String str, String str2) {
        if (g) {
            e(str, str2, (Throwable) null, false);
        }
    }

    public static void e(String str, String str2, String str3) {
        if (g) {
            e(str, str2, str3, (Throwable) null);
        }
    }

    public static void e(String str, String str2, String str3, Throwable th) {
        String logMsg;
        if (g) {
            String strA = a(str);
            if (th == null) {
                maf.d(strA, str2, str3);
                logMsg = getLogMsg(str2, str3);
            } else {
                maf.d(strA, str2, str3, th);
                logMsg = getLogMsg(str2, str3) + System.lineSeparator() + Log.getStackTraceString(maf.a(th));
            }
            a(str, logMsg);
        }
    }

    public static void e(String str, String str2, Throwable th, boolean z) {
        String strA;
        if (g) {
            String strA2 = a(str);
            if (th == null) {
                maf.d(strA2, str2, z);
                strA = a(str2, z);
            } else {
                maf.d(strA2, str2, th, z);
                strA = a(str2, z) + System.lineSeparator() + Log.getStackTraceString(maf.a(th));
            }
            a(str, strA);
        }
    }

    public static void e(String str, String str2, boolean z) {
        if (g) {
            e(str, str2, (Throwable) null, z);
        }
    }

    public static String getErrLog() {
        if (a.length() <= 0) {
            return "";
        }
        String string = a.toString();
        a.setLength(0);
        return string;
    }

    public static String getLogMsg(String str, String str2) {
        StringBuilder sb = new StringBuilder(LiteMode.FLAG_CALLS_ANIMATIONS);
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            sb.append(maf.a(str2));
        }
        return sb.toString();
    }

    public static void i(String str, String str2) {
        if (e) {
            i(str, str2, (Throwable) null, false);
        }
    }

    public static void i(String str, String str2, String str3) {
        if (e) {
            i(str, str2, str3, (Throwable) null);
        }
    }

    public static void i(String str, String str2, String str3, Throwable th) {
        if (e) {
            String strA = a(str);
            if (th == null) {
                maf.b(strA, str2, str3);
            } else {
                maf.b(strA, str2, str3, th);
            }
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (e) {
            i(str, str2, th, false);
        }
    }

    public static void i(String str, String str2, Throwable th, boolean z) {
        if (e) {
            String strA = a(str);
            if (th == null) {
                maf.b(strA, str2, z);
            } else {
                maf.b(strA, str2, th, z);
            }
        }
    }

    public static void i(String str, String str2, boolean z) {
        if (e) {
            i(str, str2, (Throwable) null, z);
        }
    }

    public static void v(String str, String str2) {
        if (c) {
            maf.a(a(str), str2);
        }
    }

    public static void w(String str, String str2) {
        if (f) {
            w(str, str2, (Throwable) null, false);
        }
    }

    public static void w(String str, String str2, String str3) {
        if (f) {
            w(str, str2, str3, (Throwable) null);
        }
    }

    public static void w(String str, String str2, String str3, Throwable th) {
        String logMsg;
        if (f) {
            String strA = a(str);
            if (th == null) {
                maf.c(strA, str2, str3);
                logMsg = getLogMsg(str2, str3);
            } else {
                maf.c(strA, str2, str3, th);
                logMsg = getLogMsg(str2, str3) + System.lineSeparator() + Log.getStackTraceString(maf.a(th));
            }
            a(str, logMsg);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (f) {
            w(str, str2, th, false);
        }
    }

    public static void w(String str, String str2, Throwable th, boolean z) {
        String strA;
        if (f) {
            String strA2 = a(str);
            if (th == null) {
                maf.c(strA2, str2, z);
                strA = a(str2, z);
            } else {
                maf.c(strA2, str2, th, z);
                strA = a(str2, z) + System.lineSeparator() + Log.getStackTraceString(maf.a(th));
            }
            a(str, strA);
        }
    }

    public static void w(String str, String str2, boolean z) {
        if (f) {
            w(str, str2, (Throwable) null, z);
        }
    }
}
