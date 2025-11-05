package com.huawei.location.lite.common.log;

import com.huawei.location.lite.common.report.ReportBuilder;
import com.huawei.location.lite.common.report.Tracker;
import com.huawei.location.lite.common.util.CollectionsUtils;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class Vw {
    private static int FB;
    private static final byte[] yn = new byte[0];
    private static byte[] Vw = new byte[2048];

    static String yn(List list) {
        StringBuffer stringBuffer = new StringBuffer();
        if (CollectionsUtils.isEmpty(list)) {
            stringBuffer.append("|");
            stringBuffer.append('\r');
            stringBuffer.append('\n');
        } else {
            for (int i = 0; i < list.size(); i++) {
                if (i != list.size() - 1) {
                    stringBuffer.append("|");
                    stringBuffer.append((String) list.get(i));
                } else {
                    stringBuffer.append('\r');
                    stringBuffer.append('\n');
                }
            }
        }
        return stringBuffer.toString();
    }

    static void yn(String str, byte[] bArr) {
        if (bArr.length + FB + 1 > 2048) {
            ReportBuilder reportBuilder = new ReportBuilder();
            reportBuilder.setTag(str);
            String str2 = "";
            int i = FB;
            if (i > 0) {
                try {
                    byte[] bArr2 = Vw;
                    int i2 = i + 1;
                    if (i2 > 2048) {
                        i2 = 2048;
                    }
                    str2 = new String(bArr2, 0, i2, "UTF-8");
                } catch (UnsupportedEncodingException unused) {
                    LogConsole.w("LogCache", "toString() UnsupportedEncodingException");
                }
            }
            reportBuilder.setErrorMessage(str2);
            Tracker.getInstance().onEvent(1, "Location_errorLogReport", reportBuilder.build());
            synchronized (yn) {
                Vw = new byte[2048];
                FB = 0;
            }
        }
        synchronized (yn) {
            try {
                for (byte b : bArr) {
                    int i3 = FB;
                    if (i3 >= 0 && i3 < 2048) {
                        Vw[i3] = b;
                        FB = i3 + 1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static byte[] yn(String str, String str2) {
        byte[] bArr = new byte[0];
        try {
            return (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date()) + "|" + str + "|" + str2 + "\r\n").getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            LogConsole.w("LogCache", "putStr() UnsupportedEncodingException");
            return bArr;
        }
    }

    static byte[] yn(String str, List list) {
        String string;
        String str2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date());
        byte[] bArr = new byte[0];
        try {
            if (CollectionsUtils.isEmpty(list)) {
                string = str2 + "|" + str + "\r\n";
            } else {
                StringBuffer stringBuffer = new StringBuffer(str2);
                for (int i = 0; i < list.size(); i++) {
                    if (i != list.size() - 1) {
                        stringBuffer.append("|");
                        stringBuffer.append((String) list.get(i));
                    } else {
                        stringBuffer.append('\r');
                        stringBuffer.append('\n');
                    }
                }
                string = stringBuffer.toString();
            }
            return string.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            LogConsole.w("LogCache", "putStr() UnsupportedEncodingException");
            return bArr;
        }
    }
}
