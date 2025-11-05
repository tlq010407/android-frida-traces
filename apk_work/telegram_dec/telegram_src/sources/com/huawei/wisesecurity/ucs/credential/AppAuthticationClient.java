package com.huawei.wisesecurity.ucs.credential;

import android.content.Context;
import com.huawei.wisesecurity.kfs.crypto.signer.SignAlg;
import com.huawei.wisesecurity.kfs.crypto.signer.hmac.HmacSigner;
import com.huawei.wisesecurity.kfs.exception.KfsValidationException;
import com.huawei.wisesecurity.kfs.validation.KfsValidator;
import com.huawei.wisesecurity.kfs.validation.constrains.KfsNotNull;
import com.huawei.wisesecurity.ucs.common.exception.UcsCryptoException;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.exception.UcsParamException;
import com.huawei.wisesecurity.ucs.common.utils.StringUtil;
import com.huawei.wisesecurity.ucs.credential.crypto.signer.CredentialSignAlg;
import com.huawei.wisesecurity.ucs.credential.entity.SkDkEntity;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import com.huawei.wisesecurity.ucs_credential.w;
import java.util.List;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class AppAuthticationClient {
    public CredentialSignAlg alg;
    public Context context;
    public Credential credential;
    public String extra;

    public static class Builder {

        @KfsNotNull
        public CredentialSignAlg alg = CredentialSignAlg.HMAC_SHA256;

        @KfsNotNull
        public Context context;

        @KfsNotNull
        public Credential credential;
        public String extra;

        public Builder alg(CredentialSignAlg credentialSignAlg) {
            this.alg = credentialSignAlg;
            return this;
        }

        public AppAuthticationClient build() throws UcsException {
            try {
                KfsValidator.validate(this);
                return new AppAuthticationClient(this.context, this.credential, this.extra, this.alg);
            } catch (KfsValidationException e) {
                throw new UcsParamException("AppAuthticationClient check param error : " + e.getMessage());
            }
        }

        public Builder context(Context context) {
            this.context = context;
            return this;
        }

        public Builder credential(Credential credential) {
            this.credential = credential;
            return this;
        }

        public Builder extra(String str) {
            this.extra = str;
            return this;
        }
    }

    public AppAuthticationClient(Context context, Credential credential, String str, CredentialSignAlg credentialSignAlg) {
        this.context = context;
        this.credential = credential;
        this.extra = str;
        this.alg = credentialSignAlg;
    }

    public String getAppAuthtication() throws UcsException {
        String str;
        String str2;
        try {
            w wVar = new w();
            wVar.a = new w.a("HS256").toString();
            if (this.credential.getAkskVersion() < 1) {
                List<String> pkgNameCertFP = UcsLib.getPkgNameCertFP(this.context);
                str = pkgNameCertFP.get(0);
                str2 = pkgNameCertFP.get(1);
            } else {
                str = "";
                str2 = "";
            }
            wVar.b = new w.b(str, str2, this.extra).toString();
            wVar.c = StringUtil.base64EncodeToString(new HmacSigner.Builder().withKey(SkDkEntity.from(this.credential.getSecretKeyBytes()).decryptSkDk(com.huawei.wisesecurity.ucs_credential.a.a(this.credential.getKekString()))).withAlg(SignAlg.HMAC_SHA256).build().getSignHandler().from(wVar.b()).sign(), 10);
            return wVar.a();
        } catch (UcsCryptoException e) {
            throw new UcsException(1022L, e.getMessage());
        } catch (UnsupportedOperationException unused) {
            throw new UcsException(2001L, "new String UnsupportedOperationException..");
        } catch (Exception e2) {
            throw new UcsException(2001L, "app info auth Exception : " + e2.getMessage());
        }
    }
}
