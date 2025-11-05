package com.huawei.location.lite.common.http.interceptor;

import android.text.TextUtils;
import com.huawei.location.lite.common.http.request.HeadBuilder;
import com.huawei.location.lite.common.http.sign.Vw;
import com.huawei.location.lite.common.http.sign.yn;
import java.util.List;
import okhttp3.Interceptor;
import okhttp3.Request;
import okio.Buffer;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class Vw implements Interceptor {
    protected Request yn(Request request) {
        String utf8;
        if (request.body() != null) {
            Buffer buffer = new Buffer();
            request.body().writeTo(buffer);
            utf8 = buffer.readUtf8();
        } else {
            utf8 = "";
        }
        List listValues = request.headers().values(HeadBuilder.X_REQUEST_ID);
        String str = listValues.size() == 1 ? (String) listValues.get(0) : null;
        String str2 = request.headers().get(HeadBuilder.CLIENT_CP_NAME);
        Vw.C0024Vw c0024VwYn = new Vw.C0024Vw(request.method(), request.url().toString(), str).yn(utf8);
        yn.C0026yn c0026yn = new yn.C0026yn();
        if (!TextUtils.isEmpty(str2)) {
            c0026yn.yn(HeadBuilder.CLIENT_CP_NAME, str2);
        }
        c0024VwYn.yn(new com.huawei.location.lite.common.http.sign.yn(c0026yn).yn());
        return yn(request, c0024VwYn.yn());
    }

    public abstract Request yn(Request request, com.huawei.location.lite.common.http.sign.Vw vw);
}
