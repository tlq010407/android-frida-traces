package com.huawei.wisesecurity.ucs.credential.crypto.signer;

import android.text.TextUtils;
import com.huawei.wisesecurity.kfs.crypto.codec.Decoder;
import com.huawei.wisesecurity.kfs.crypto.codec.Encoder;
import com.huawei.wisesecurity.kfs.crypto.signer.SignAlg;
import com.huawei.wisesecurity.kfs.crypto.signer.SignHandler;
import com.huawei.wisesecurity.kfs.crypto.signer.hmac.HmacSigner;
import com.huawei.wisesecurity.kfs.exception.CodecException;
import com.huawei.wisesecurity.kfs.exception.CryptoException;
import com.huawei.wisesecurity.kfs.util.ByteUtil;
import com.huawei.wisesecurity.ucs.common.exception.UcsCryptoException;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.exception.UcsParamException;
import com.huawei.wisesecurity.ucs.credential.Credential;
import com.huawei.wisesecurity.ucs.credential.CredentialClient;
import com.huawei.wisesecurity.ucs.credential.entity.SkDkEntity;
import com.huawei.wisesecurity.ucs_credential.a;
import com.huawei.wisesecurity.ucs_credential.u;
import java.nio.charset.StandardCharsets;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class CredentialSignHandler implements SignHandler {
    public Credential credential;
    public CredentialClient credentialClient;
    public CredentialSignText signText;

    public CredentialSignHandler(Credential credential, CredentialSignText credentialSignText, CredentialClient credentialClient) {
        this.credential = credential;
        this.signText = credentialSignText;
        this.credentialClient = credentialClient;
    }

    private void doSign() throws UcsCryptoException {
        u uVar = (u) new u().setApiName("appAuth.sign").setCallTime();
        try {
            try {
                this.signText.checkParam(true);
                this.signText.setSignature(new HmacSigner.Builder().withKey(SkDkEntity.from(this.credential.getSecretKeyBytes()).decryptSkDk(a.a(this.credential.getKekString()))).withAlg(SignAlg.HMAC_SHA256).build().getSignHandler().from(this.signText.getDataBytes()).sign());
                uVar.setStatusCode(0);
            } catch (CryptoException e) {
                e = e;
                String str = "Fail to sign, errorMessage : " + e.getMessage();
                uVar.setStatusCode(1003).setErrorMsg(str);
                throw new UcsCryptoException(1003L, str);
            } catch (UcsParamException e2) {
                String str2 = "Fail to sign, errorMessage : " + e2.getMessage();
                uVar.setStatusCode(1001).setErrorMsg(str2);
                throw new UcsCryptoException(1001L, str2);
            } catch (UcsException e3) {
                e = e3;
                String str3 = "Fail to sign, errorMessage : " + e.getMessage();
                uVar.setStatusCode(1003).setErrorMsg(str3);
                throw new UcsCryptoException(1003L, str3);
            }
        } finally {
            this.credentialClient.reportLogs(uVar);
        }
    }

    private CredentialSignHandler from(String str, Decoder decoder) throws UcsCryptoException {
        try {
            from(decoder.decode(str));
            return this;
        } catch (CodecException e) {
            throw new UcsCryptoException(1003L, "Fail to decode plain text : " + e.getMessage());
        }
    }

    private String sign(Encoder encoder) throws UcsCryptoException {
        try {
            doSign();
            return encoder.encode(this.signText.getSignature());
        } catch (CodecException e) {
            throw new UcsCryptoException(1003L, "Fail to encode signature bytes: " + e.getMessage());
        }
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.signer.SignHandler
    public CredentialSignHandler from(String str) throws UcsCryptoException {
        if (TextUtils.isEmpty(str)) {
            throw new UcsCryptoException(1001L, "dataString cannot empty..");
        }
        return from(str.getBytes(StandardCharsets.UTF_8));
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.signer.SignHandler
    public CredentialSignHandler from(byte[] bArr) {
        this.signText.setDataBytes(ByteUtil.clone(bArr));
        return this;
    }

    public CredentialSignHandler fromBase64(String str) throws UcsCryptoException {
        return from(str, Decoder.BASE64);
    }

    public CredentialSignHandler fromBase64Url(String str) throws UcsCryptoException {
        return from(str, Decoder.BASE64Url);
    }

    public CredentialSignHandler fromHex(String str) throws UcsCryptoException {
        return from(str, Decoder.HEX);
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.signer.SignHandler
    public byte[] sign() throws UcsCryptoException {
        doSign();
        return this.signText.getSignature();
    }

    public String signBase64() throws UcsCryptoException {
        return sign(Encoder.BASE64);
    }

    public String signBase64Url() throws UcsCryptoException {
        return sign(Encoder.BASE64Url);
    }

    public String signHex() throws UcsCryptoException {
        return sign(Encoder.HEX);
    }
}
