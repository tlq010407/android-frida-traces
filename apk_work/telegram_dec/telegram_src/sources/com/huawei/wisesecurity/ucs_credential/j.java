package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import android.os.Build;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.common.utils.SpUtil;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkRequest;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class j {
    public NetworkCapability a;
    public Context b;
    public m c;

    public j(Context context, m mVar, NetworkCapability networkCapability) {
        this.b = context;
        this.a = networkCapability;
        this.c = mVar;
    }

    public void a() {
        l lVar = new l();
        long j = SpUtil.getLong(lVar.a(), 0L, this.b);
        LogUcs.i("k", "lastQueryTime is " + j, new Object[0]);
        if (System.currentTimeMillis() - j > 432000000) {
            a(false, (k) lVar);
            return;
        }
        try {
            i.a(this.b, lVar);
        } catch (UcsException e) {
            LogUcs.w("j", "Init using local file failed, code = {0}, msg = {1}", Long.valueOf(e.getErrorCode()), e.getMessage());
            LogUcs.i("j", "Try update data = componnet from server", new Object[0]);
            a(true, (k) lVar);
        }
    }

    public final void a(NetworkResponse networkResponse, k kVar) throws IOException, UcsException {
        StringBuilder sb;
        if (networkResponse.isSuccessful()) {
            Context context = this.b;
            Map<String, List<String>> headers = networkResponse.getHeaders();
            LogUcs.d("k", "Update local meta data : ucscomponent", new Object[0]);
            if (headers.containsKey("etag")) {
                LogUcs.d("k", "Update local meta data -etag: ucscomponent", new Object[0]);
                SpUtil.putString("ETag_ucscomponent", headers.get("etag").get(0), context);
            }
            if (headers.containsKey("last-modified")) {
                LogUcs.d("k", "Update local meta data -last-modified: ucscomponent", new Object[0]);
                SpUtil.putString("Last-Modified_ucscomponent", headers.get("last-modified").get(0), context);
            }
            SpUtil.putLong(kVar.a(), System.currentTimeMillis(), this.b);
            Context context2 = this.b;
            if (Build.VERSION.SDK_INT >= 24) {
                sb = new StringBuilder();
                sb.append(context2.createDeviceProtectedStorageContext().getFilesDir());
                sb.append("/");
            } else {
                sb = new StringBuilder();
                sb.append(context2.getApplicationContext().getFilesDir());
            }
            sb.append("ucscomponent.jws");
            String string = sb.toString();
            SpUtil.putString("ucscomponent.jws", string, this.b);
            String body = networkResponse.getBody();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(string));
                try {
                    fileOutputStream.write(body.getBytes(StandardCharsets.UTF_8));
                    fileOutputStream.close();
                } finally {
                }
            } catch (IOException e) {
                LogUcs.e("KeyComponentLocalHandler", "Write file data failed : " + e.getMessage(), new Object[0]);
                throw new UcsException(1011L, "Write file data failed : " + e.getMessage());
            }
        } else if (networkResponse.getCode() != 304) {
            LogUcs.i("j", "file data update failed And statusCode = {0}", Integer.valueOf(networkResponse.getCode()));
            return;
        } else {
            LogUcs.i("j", "file data has not modified!", new Object[0]);
            SpUtil.putLong(kVar.a(), System.currentTimeMillis(), this.b);
        }
        i.a(this.b, kVar);
    }

    public synchronized void a(boolean z, k kVar) {
        try {
            LogUcs.i("j", "start download C1 file from Service", new Object[0]);
            try {
                Map map = new HashMap();
                if (!z) {
                    map = kVar.a(this.b);
                }
                String strA = this.c.a("ucscomponent", "ucscomponent.jws");
                LogUcs.i("j", "updateFileFromCDN domain is {0}", strA);
                a(this.a.get(new NetworkRequest(strA, map)), kVar);
                LogUcs.i("j", "updateFileFromCDN OK", new Object[0]);
            } catch (IOException e) {
                String str = "Update file data get IOException，exception: " + e.getMessage();
                LogUcs.e("j", str, new Object[0]);
                throw new UcsException(1010L, str);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
