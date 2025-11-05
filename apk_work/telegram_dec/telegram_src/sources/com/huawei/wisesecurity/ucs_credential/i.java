package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.common.utils.IOUtils;
import com.huawei.wisesecurity.ucs.common.utils.SpUtil;
import com.huawei.wisesecurity.ucs.common.utils.StringUtil;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class i {
    public static void a(Context context, k kVar) {
        String string = SpUtil.getString("ucscomponent.jws", null, context);
        if (string == null || !new File(string).exists()) {
            throw new UcsException(1009L, "Init component from local failed, file error");
        }
        LogUcs.i("KeyComponentLocalHandler", "Start init data =  component through local file", new Object[0]);
        try {
            FileInputStream fileInputStream = new FileInputStream(string);
            try {
                h hVar = new h(IOUtils.toString(fileInputStream, "UTF-8"));
                b0.a(context, hVar);
                UcsLib.ucsUpdateRootKey(StringUtil.base64Decode(hVar.b.b, 0), 32);
                SpUtil.putInt("Local-C1-Version", hVar.b.a, context);
                fileInputStream.close();
            } finally {
            }
        } catch (IOException e) {
            String str = "Init data failed, msg = " + e.getMessage();
            LogUcs.e("KeyComponentLocalHandler", str, new Object[0]);
            throw new UcsException(1009L, str);
        }
    }
}
