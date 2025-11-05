package com.huawei.location.lite.common.log;

import android.util.Log;
import com.huawei.location.base.activity.constant.ActivityRecognitionConstants;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class FB {
    private int FB;
    private long LW;
    private String Vw;
    private final StringBuilder yn = new StringBuilder();

    FB(int i, String str) {
        this.Vw = ActivityRecognitionConstants.LOCATION_MODULE;
        this.LW = 0L;
        this.FB = i;
        if (str != null) {
            this.Vw = str;
        }
        this.LW = System.currentTimeMillis();
    }

    private StringBuilder yn(StringBuilder sb) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
        sb.append('[');
        sb.append(simpleDateFormat.format(Long.valueOf(this.LW)));
        sb.append(' ');
        int i = this.FB;
        sb.append(i != 3 ? i != 4 ? i != 5 ? i != 6 ? String.valueOf(i) : "E" : "W" : "I" : "D");
        sb.append('/');
        sb.append(this.Vw);
        sb.append(']');
        return sb;
    }

    public String Vw() {
        StringBuilder sb = new StringBuilder();
        yn(sb);
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        yn(sb);
        sb.append(' ');
        sb.append(this.yn.toString());
        return sb.toString();
    }

    public FB yn(Object obj) {
        this.yn.append(obj);
        return this;
    }

    public FB yn(Throwable th) {
        this.yn.append((Object) '\n');
        this.yn.append((Object) Log.getStackTraceString(th));
        return this;
    }

    public String yn() {
        return ' ' + this.yn.toString();
    }
}
