package com.huawei.wisesecurity.ucs.credential.crypto.cipher;

import com.huawei.wisesecurity.kfs.crypto.cipher.CipherAlg;
import com.huawei.wisesecurity.kfs.crypto.cipher.DecryptHandler;
import com.huawei.wisesecurity.kfs.crypto.cipher.aes.AESCipher;
import com.huawei.wisesecurity.kfs.crypto.codec.Decoder;
import com.huawei.wisesecurity.kfs.crypto.codec.Encoder;
import com.huawei.wisesecurity.kfs.exception.CodecException;
import com.huawei.wisesecurity.kfs.exception.CryptoException;
import com.huawei.wisesecurity.ucs.common.exception.UcsCryptoException;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.exception.UcsParamException;
import com.huawei.wisesecurity.ucs.credential.Credential;
import com.huawei.wisesecurity.ucs.credential.CredentialClient;
import com.huawei.wisesecurity.ucs.credential.entity.SkDkEntity;
import com.huawei.wisesecurity.ucs_credential.a;
import com.huawei.wisesecurity.ucs_credential.u;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class CredentialDecryptHandler implements DecryptHandler {
    public CredentialCipherText cipherText;
    public Credential credential;
    public CredentialClient credentialClient;

    public CredentialDecryptHandler(Credential credential, CredentialCipherText credentialCipherText, CredentialClient credentialClient) {
        this.credential = credential;
        this.cipherText = credentialCipherText;
        this.credentialClient = credentialClient;
    }

    private void doDecrypt() throws UcsCryptoException {
        u uVar = (u) new u().setApiName("appAuth.decrypt").setCallTime();
        try {
            try {
                this.cipherText.checkParam(false);
                this.cipherText.setPlainBytes(new AESCipher.Builder().withKey(new SecretKeySpec(SkDkEntity.from(this.credential.getDataKeyBytes()).decryptSkDk(a.a(this.credential.getKekString())), "AES")).withAlg(CipherAlg.AES_GCM).withIv(this.cipherText.getIv()).build().getDecryptHandler().from(this.cipherText.getCipherBytes()).to());
                uVar.setStatusCode(0);
            } catch (CryptoException e) {
                e = e;
                String str = "Fail to decrypt, errorMessage : " + e.getMessage();
                uVar.setStatusCode(1003).setErrorMsg(str);
                throw new UcsCryptoException(1003L, str);
            } catch (UcsParamException e2) {
                String str2 = "Fail to decrypt, errorMessage : " + e2.getMessage();
                uVar.setStatusCode(1001).setErrorMsg(str2);
                throw new UcsCryptoException(1001L, str2);
            } catch (UcsException e3) {
                e = e3;
                String str3 = "Fail to decrypt, errorMessage : " + e.getMessage();
                uVar.setStatusCode(1003).setErrorMsg(str3);
                throw new UcsCryptoException(1003L, str3);
            }
        } finally {
            this.credentialClient.reportLogs(uVar);
        }
    }

    private CredentialDecryptHandler from(String str, Decoder decoder) throws UcsCryptoException {
        try {
            from(decoder.decode(str));
            return this;
        } catch (CodecException e) {
            throw new UcsCryptoException(1003L, "Fail to decode cipher text: " + e.getMessage());
        }
    }

    private String to(Encoder encoder) throws UcsCryptoException {
        try {
            return encoder.encode(to());
        } catch (CodecException e) {
            throw new UcsCryptoException(1003L, "Fail to encode plain text: " + e.getMessage());
        }
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.cipher.DecryptHandler
    public CredentialDecryptHandler from(byte[] bArr) throws UcsCryptoException {
        if (bArr == null) {
            throw new UcsCryptoException(1001L, "cipherBytes cannot null..");
        }
        this.cipherText.setCipherBytes(bArr);
        return this;
    }

    public CredentialDecryptHandler fromBase64(String str) throws UcsCryptoException {
        return from(str, Decoder.BASE64);
    }

    public CredentialDecryptHandler fromBase64Url(String str) throws UcsCryptoException {
        return from(str, Decoder.BASE64Url);
    }

    public CredentialDecryptHandler fromHex(String str) throws UcsCryptoException {
        return from(str, Decoder.HEX);
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.cipher.DecryptHandler
    public byte[] to() throws UcsCryptoException {
        doDecrypt();
        return this.cipherText.getPlainBytes();
    }

    public String toBase64() throws UcsCryptoException {
        return to(Encoder.BASE64);
    }

    public String toHex() throws UcsCryptoException {
        return to(Encoder.HEX);
    }

    public String toRawString() throws UcsCryptoException {
        return to(Encoder.RAW);
    }
}
