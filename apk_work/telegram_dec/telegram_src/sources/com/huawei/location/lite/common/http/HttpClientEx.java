package com.huawei.location.lite.common.http;

import android.content.Context;
import com.huawei.location.base.activity.constant.ActivityRecognitionConstants;
import com.huawei.location.lite.common.android.context.ContextUtil;
import com.huawei.location.lite.common.http.FB;
import com.huawei.location.lite.common.http.HttpConfigInfo;
import com.huawei.location.lite.common.http.Vw;
import com.huawei.location.lite.common.http.request.BaseRequest;
import okhttp3.OkHttpClient;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class HttpClientEx {
    private Context context;
    private Vw.yn httpBuilder;
    private OkHttpClient httpClient;
    private HttpConfigInfo httpConfigInfo;

    public HttpClientEx() {
        this(new Vw.yn().yn(ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS).Vw(ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS), null, null);
    }

    public HttpClientEx(Context context) {
        this(new Vw.yn().yn(ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS).Vw(ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS), context, null);
    }

    public HttpClientEx(Context context, HttpConfigInfo httpConfigInfo) {
        this(new Vw.yn().yn(ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS).Vw(ActivityRecognitionConstants.DEFAULT_DETECTION_INTERVAL_MILLIS), context, httpConfigInfo);
    }

    public HttpClientEx(Vw.yn ynVar, Context context, HttpConfigInfo httpConfigInfo) {
        this.context = context == null ? ContextUtil.getContext() : context;
        if (httpConfigInfo == null) {
            this.httpConfigInfo = new HttpConfigInfo.Builder().build();
        } else {
            this.httpConfigInfo = httpConfigInfo;
        }
        this.httpBuilder = ynVar;
    }

    private boolean isCrossingProcess() {
        return this.httpConfigInfo.isBinderProcess() && FB.Vw.yn.LW();
    }

    public SubmitEx newSubmit(BaseRequest baseRequest) {
        if (isCrossingProcess()) {
            return new SubmitEx(this.httpConfigInfo, baseRequest);
        }
        OkHttpClient okHttpClientYn = new Vw().yn(this.context, this.httpBuilder, this.httpConfigInfo);
        this.httpClient = okHttpClientYn;
        return new SubmitEx(okHttpClientYn, baseRequest);
    }
}
