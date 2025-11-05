package com.huawei.location.nlp.scan;

import com.huawei.location.nlp.network.request.wifi.WifiInfo;
import java.util.Comparator;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
class FB implements Comparator {
    FB(LW lw) {
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        WifiInfo wifiInfo = (WifiInfo) obj;
        WifiInfo wifiInfo2 = (WifiInfo) obj2;
        if (wifiInfo == null && wifiInfo2 == null) {
            return 0;
        }
        return (wifiInfo != null && (wifiInfo2 == null || (!(wifiInfo.getSameCode() == wifiInfo2.getSameCode() && wifiInfo.getFrequency() == wifiInfo2.getFrequency()) ? wifiInfo.getTime() <= wifiInfo2.getTime() : wifiInfo.getTime() <= wifiInfo2.getTime() && (wifiInfo.getTime() != wifiInfo2.getTime() || wifiInfo.getRssi() <= wifiInfo2.getRssi())))) ? -1 : 1;
    }
}
