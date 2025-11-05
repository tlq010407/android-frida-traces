package com.huawei.location.crowdsourcing.upload;

import com.google.gson.annotations.SerializedName;
import com.huawei.location.lite.common.log.LogConsole;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {

    /* renamed from: com.huawei.location.crowdsourcing.upload.yn$yn, reason: collision with other inner class name */
    private static class C0019yn extends com.huawei.location.crowdsourcing.upload.http.yn {

        @SerializedName("serverDomain")
        private String FB;

        @SerializedName("accessToken")
        private String LW;

        @SerializedName("resCode")
        private int Vw = -1;

        @SerializedName("reason")
        private String yn;

        private C0019yn() {
        }

        public String FB() {
            String str = this.LW;
            return str == null ? "" : str;
        }

        public String LW() {
            String str = this.FB;
            return str == null ? "" : str;
        }

        @Override // com.huawei.location.crowdsourcing.upload.http.yn
        protected boolean Vw() {
            return com.huawei.location.FB.Vw(this.Vw);
        }

        @Override // com.huawei.location.crowdsourcing.upload.http.yn
        protected String yn() {
            return com.huawei.location.FB.yn(this.Vw);
        }
    }

    public com.huawei.location.crowdsourcing.upload.entity.Vw yn(com.huawei.location.crowdsourcing.upload.entity.Vw vw, Map map, String str) {
        LogConsole.i("GetServerDomain", "getDomainFromCloud start");
        com.huawei.location.crowdsourcing.upload.http.FB fb = new com.huawei.location.crowdsourcing.upload.http.FB(vw.yn, "/v2/getServerDomain");
        fb.yn(map).dC(vw.Vw, str).Vw("appID", str);
        C0019yn c0019yn = (C0019yn) fb.yn(C0019yn.class);
        if (c0019yn != null) {
            return new com.huawei.location.crowdsourcing.upload.entity.Vw(c0019yn.LW(), c0019yn.FB());
        }
        LogConsole.i("GetServerDomain", "resp is null:");
        return null;
    }
}
