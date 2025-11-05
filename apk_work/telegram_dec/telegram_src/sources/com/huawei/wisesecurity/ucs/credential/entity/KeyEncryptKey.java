package com.huawei.wisesecurity.ucs.credential.entity;

import android.content.Context;
import com.huawei.hms.feature.dynamic.b;
import com.huawei.wisesecurity.kfs.exception.KfsValidationException;
import com.huawei.wisesecurity.kfs.validation.KfsValidator;
import com.huawei.wisesecurity.kfs.validation.constrains.KfsIntegerRange;
import com.huawei.wisesecurity.kfs.validation.constrains.KfsStringNotEmpty;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.utils.SpUtil;
import com.huawei.wisesecurity.ucs.common.utils.StringUtil;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import com.huawei.wisesecurity.ucs_credential.i;
import com.huawei.wisesecurity.ucs_credential.l;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class KeyEncryptKey {
    public static final int KEK_ALG_GCM = 1;

    @KfsIntegerRange
    public int alg;

    @KfsIntegerRange
    public int kekAlg;

    @KfsStringNotEmpty
    public String key;
    public int v1;
    public int v2;
    public int version;

    private void checkVersion(Context context) throws UcsException {
        UcsLib.checkNativeLibrary();
        int i = SpUtil.getInt("Local-C1-Version", -1, context);
        if (this.v1 != ((int) UcsLib.ucsGetSoVersion())) {
            throw new UcsException(1020L, "kek V1 with so version check fail");
        }
        if (this.v2 != i) {
            throw new UcsException(1021L, "kek V2 with C1 version check fail");
        }
        if (UcsLib.isRootKeyUpdated()) {
            return;
        }
        i.a(context, new l());
    }

    public static KeyEncryptKey fromString(Context context, String str) throws UcsException {
        try {
            KeyEncryptKey keyEncryptKey = new KeyEncryptKey();
            JSONObject jSONObject = new JSONObject(StringUtil.base64DecodeToString(str, 0));
            keyEncryptKey.version = jSONObject.getInt("version");
            keyEncryptKey.alg = jSONObject.getInt("alg");
            keyEncryptKey.kekAlg = jSONObject.getInt("kekAlg");
            keyEncryptKey.key = jSONObject.getString("key");
            keyEncryptKey.v1 = jSONObject.optInt("v1");
            keyEncryptKey.v2 = jSONObject.optInt(b.t);
            boolean z = keyEncryptKey.version == 3;
            KfsValidator.validate(keyEncryptKey);
            if (!z) {
                keyEncryptKey.checkVersion(context);
            }
            if (keyEncryptKey.kekAlg == 1) {
                return keyEncryptKey;
            }
            throw new UcsException(1020L, "unsupported kek alg");
        } catch (KfsValidationException e) {
            throw new UcsException(1001L, "kek param invalid : " + e.getMessage());
        } catch (JSONException e2) {
            throw new UcsException(1001L, "kek param is not a valid json string : " + e2.getMessage());
        }
    }

    public int getAlg() {
        return this.alg;
    }

    public int getKekAlg() {
        return this.kekAlg;
    }

    public String getKey() {
        return this.key;
    }

    public int getV1() {
        return this.v1;
    }

    public int getV2() {
        return this.v2;
    }

    public int getVersion() {
        return this.version;
    }
}
