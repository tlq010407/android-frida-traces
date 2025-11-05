package com.huawei.location.crowdsourcing.record;

import android.net.wifi.ScanResult;
import android.os.Build;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class FB {
    private int E5;

    @SerializedName("RSSI")
    private int FB;

    @SerializedName("Frequency")
    private int LW;

    @SerializedName("SSID")
    private String Vw;

    @SerializedName("SCANTIME")
    private long d2;

    @SerializedName("IsConnect")
    private int dC;

    @SerializedName("BSSID")
    private String yn;

    FB() {
    }

    public String toString() {
        return "LocWifiInfo{ssid='" + this.Vw + "', rssi=" + this.FB + ", frequency=" + this.LW + ", isConnect=" + this.dC + ", type=" + this.E5 + ", scanTime=" + this.d2 + '}';
    }

    public long yn() {
        return this.d2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v2, types: [int] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    void yn(ScanResult scanResult, String str) {
        String str2 = scanResult.BSSID;
        this.yn = str2;
        this.Vw = scanResult.SSID;
        this.FB = scanResult.level;
        this.LW = scanResult.frequency;
        int i = 0;
        this.dC = TextUtils.isEmpty(str) ? 0 : str.equals(str2);
        if (Build.VERSION.SDK_INT < 23 || !scanResult.is80211mcResponder()) {
            String str3 = scanResult.capabilities;
            if (!str3.contains("PSK") && !str3.contains("WEP")) {
                i = 1;
            }
        } else {
            i = 2;
        }
        this.E5 = i;
        this.d2 = scanResult.timestamp / 1000;
    }
}
