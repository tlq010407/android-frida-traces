package com.huawei.location.lite.common.http;

import com.huawei.location.lite.common.http.exception.ErrorCode;
import com.huawei.location.lite.common.http.exception.OnFailureException;
import com.huawei.location.lite.common.http.request.BaseRequest;
import com.huawei.location.lite.common.http.request.HeadBuilder;
import com.huawei.location.lite.common.log.LogConsole;
import com.huawei.location.lite.common.report.ReportBuilder;
import com.huawei.location.lite.common.report.Tracker;
import com.huawei.location.lite.common.util.GsonUtil;
import com.huawei.location.lite.common.util.StringUtil;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class yn {
    private ReportBuilder yn;

    public yn(ReportBuilder reportBuilder) {
        this.yn = reportBuilder;
        yn();
    }

    private void yn() {
        if (this.yn == null) {
            this.yn = new ReportBuilder();
        }
        this.yn.setCallTime();
    }

    public Object yn(String str, Class cls) throws OnFailureException {
        try {
            Object objFromJson = GsonUtil.getInstance().fromJson(str, cls);
            if (objFromJson != null) {
                return objFromJson;
            }
            LogConsole.e("CommonDataHandler", "param exception");
            throw new OnFailureException(ErrorCode.valueOf(10304));
        } catch (Exception unused) {
            LogConsole.e("CommonDataHandler", "getEntity exception body is :" + str);
            throw new OnFailureException(ErrorCode.valueOf(10304));
        }
    }

    public void yn(BaseRequest baseRequest, String str, String str2) {
        if (baseRequest == null) {
            LogConsole.e("CommonDataHandler", "request param exception");
            return;
        }
        if (this.yn == null) {
            this.yn = new ReportBuilder();
        }
        this.yn.setApiName("Location_serverApi");
        this.yn.setTransactionID(baseRequest.getHeads().build().get(HeadBuilder.X_REQUEST_ID));
        this.yn.setRequestUrl(baseRequest.getPath());
        if (!StringUtil.isEmpty(str)) {
            this.yn.setErrorCode(str);
        }
        if (!StringUtil.isEmpty(str2)) {
            this.yn.setErrorMessage(str2);
        }
        this.yn.setCostTime();
        try {
            Tracker.getInstance().onMaintEvent(this.yn);
            Tracker.getInstance().onOperationEvent(this.yn);
        } catch (Exception unused) {
            LogConsole.e("CommonDataHandler", "reportHttpResult exception");
        }
    }
}
