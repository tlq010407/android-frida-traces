package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.common.utils.SpUtil;
import com.huawei.wisesecurity.ucs.credential.Credential;
import com.huawei.wisesecurity.ucs.credential.CredentialClient;
import com.huawei.wisesecurity.ucs.credential.entity.ErrorBody;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkResponse;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class d extends b {
    public j h;
    public boolean i;

    public d(CredentialClient credentialClient, Context context, NetworkCapability networkCapability, j jVar) {
        super(credentialClient, context, networkCapability);
        this.i = true;
        this.h = jVar;
        jVar.a();
    }

    @Override // com.huawei.wisesecurity.ucs_credential.b
    public Credential a(String str) throws NumberFormatException, UcsException {
        try {
            int i = Integer.parseInt(new JSONObject(str).getString("expire"));
            if (i == 0) {
                return this.g.genCredentialFromString(str);
            }
            if (i != 1) {
                if (i != 2) {
                    throw new UcsException(1017L, "unenable expire.");
                }
                throw new UcsException(1016L, "so version is unenable.");
            }
            if (!this.i) {
                throw new UcsException(1021L, "c1 vision is unenable.");
            }
            LogUcs.d("KidHandler", "c1 version expired, start to force update c1!", new Object[0]);
            this.h.a(true, (k) new l());
            this.i = false;
            return a(this.c, this.d, this.e, this.f);
        } catch (NumberFormatException e) {
            throw new UcsException(2001L, "parse TSMS resp expire error : " + e.getMessage());
        } catch (JSONException e2) {
            throw new UcsException(1002L, "parse TSMS resp get json error : " + e2.getMessage());
        }
    }

    @Override // com.huawei.wisesecurity.ucs_credential.b
    public String a() {
        int i = SpUtil.getInt("Local-C1-Version", -1, this.b);
        LogUcs.d("KidHandler", "c1 version is " + i + ", so version is " + ((int) UcsLib.ucsGetSoVersion()), new Object[0]);
        return new String(UcsLib.genReqJws(this.b, this.d, this.e, 0, i), StandardCharsets.UTF_8);
    }

    @Override // com.huawei.wisesecurity.ucs_credential.b
    public String a(NetworkResponse networkResponse) throws UcsException {
        boolean zIsSuccessful = networkResponse.isSuccessful();
        String body = networkResponse.getBody();
        if (zIsSuccessful) {
            return body;
        }
        String str = "tsms service error, " + ErrorBody.fromString(body).getErrorMessage();
        LogUcs.e("KidHandler", str, new Object[0]);
        throw new UcsException(1024L, str);
    }
}
