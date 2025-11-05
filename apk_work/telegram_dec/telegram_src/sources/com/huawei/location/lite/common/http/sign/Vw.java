package com.huawei.location.lite.common.http.sign;

import android.text.TextUtils;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class Vw {
    private String FB;
    private String LW;
    private String Vw;
    private String[] dC;
    private String yn;

    /* renamed from: com.huawei.location.lite.common.http.sign.Vw$Vw, reason: collision with other inner class name */
    public static class C0024Vw {
        private Vw yn = new Vw();

        public C0024Vw(String str, String str2, String str3) {
            if (TextUtils.isEmpty(str3)) {
                LogConsole.i("SignRequest", "create transId");
                str3 = UUID.randomUUID().toString();
            }
            Vw.yn(this.yn, str2);
            this.yn.yn(str3);
            Vw.Vw(this.yn, str);
        }

        public C0024Vw yn(String str) {
            Vw.FB(this.yn, str);
            return this;
        }

        public C0024Vw yn(String[] strArr) {
            Vw.yn(this.yn, strArr);
            return this;
        }

        public Vw yn() {
            return this.yn;
        }
    }

    private Vw() {
    }

    static void FB(Vw vw, String str) {
        vw.Vw = str;
    }

    static void Vw(Vw vw, String str) {
        vw.yn = str;
    }

    static void yn(Vw vw, String str) {
        vw.FB = str;
    }

    static void yn(Vw vw, String[] strArr) {
        vw.dC = strArr;
    }

    public String FB() {
        return this.Vw;
    }

    public String LW() {
        return this.LW;
    }

    public String Vw() {
        return this.yn;
    }

    public String dC() {
        return this.FB;
    }

    public String toString() {
        return "SignMessageReq{method='" + this.yn + "', query='" + ((String) null) + "', payload='" + this.Vw + "', url='" + this.FB + "', tid='" + this.LW + "'}";
    }

    public void yn(String str) {
        this.LW = str;
    }

    public String[] yn() {
        String[] strArr = this.dC;
        return (String[]) Arrays.copyOf(strArr, strArr.length);
    }
}
