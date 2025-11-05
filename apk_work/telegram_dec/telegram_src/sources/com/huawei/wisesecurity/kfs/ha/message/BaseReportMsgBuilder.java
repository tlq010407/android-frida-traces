package com.huawei.wisesecurity.kfs.ha.message;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.LinkedHashMap;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class BaseReportMsgBuilder implements ReportMsgBuilder {
    public long nanoCallTime;
    public long segmentationStartTime;
    public int segCount = 6;
    public LinkedHashMap linkedHashMap = new LinkedHashMap();

    @Override // com.huawei.wisesecurity.kfs.ha.message.ReportMsgBuilder
    public LinkedHashMap build() {
        return this.linkedHashMap;
    }

    public BaseReportMsgBuilder setApiName(String str) {
        this.linkedHashMap.put("apiName", str);
        return this;
    }

    public BaseReportMsgBuilder setAppId(String str) {
        this.linkedHashMap.put("appId", str);
        return this;
    }

    public BaseReportMsgBuilder setCallTime() {
        long jNanoTime = System.nanoTime();
        this.nanoCallTime = jNanoTime;
        this.segmentationStartTime = jNanoTime;
        this.linkedHashMap.put("callTime", String.valueOf(System.currentTimeMillis()));
        return this;
    }

    public BaseReportMsgBuilder setErrorMsg(String str) {
        this.linkedHashMap.put("errorMsg", str);
        return this;
    }

    public BaseReportMsgBuilder setPackageName(String str) {
        this.linkedHashMap.put("packageName", str);
        return this;
    }

    public BaseReportMsgBuilder setStatusCode(int i) {
        this.linkedHashMap.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, String.valueOf(i));
        return this;
    }

    public BaseReportMsgBuilder setVersion(String str) {
        this.linkedHashMap.put("version", str);
        return this;
    }
}
