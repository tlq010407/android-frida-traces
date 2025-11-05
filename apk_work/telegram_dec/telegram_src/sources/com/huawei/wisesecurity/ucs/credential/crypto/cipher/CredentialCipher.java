package com.huawei.wisesecurity.ucs.credential.crypto.cipher;

import com.huawei.wisesecurity.kfs.exception.KfsValidationException;
import com.huawei.wisesecurity.kfs.util.ByteUtil;
import com.huawei.wisesecurity.kfs.validation.KfsValidator;
import com.huawei.wisesecurity.kfs.validation.constrains.KfsNotNull;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.exception.UcsParamException;
import com.huawei.wisesecurity.ucs.credential.Credential;
import com.huawei.wisesecurity.ucs.credential.CredentialClient;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class CredentialCipher {
    public CredentialCipherText cipherText;
    public Credential credential;
    public CredentialClient credentialClient;

    public static class Builder {

        @KfsNotNull
        public CredentialCipherAlg cipherAlg = CredentialCipherAlg.AES_GCM;

        @KfsNotNull
        public Credential credential;

        @KfsNotNull
        public CredentialClient credentialClient;

        @KfsNotNull
        public byte[] iv;

        public CredentialCipher build() throws UcsException {
            try {
                KfsValidator.validate(this);
                return new CredentialCipher(this.cipherAlg, this.credential, this.iv, this.credentialClient);
            } catch (KfsValidationException e) {
                throw new UcsParamException("CredentialCipher check param error : " + e.getMessage());
            }
        }

        public Builder withAlg(CredentialCipherAlg credentialCipherAlg) {
            this.cipherAlg = credentialCipherAlg;
            return this;
        }

        public Builder withCredential(Credential credential) {
            this.credential = credential;
            return this;
        }

        public Builder withCredentialClient(CredentialClient credentialClient) {
            this.credentialClient = credentialClient;
            return this;
        }

        public Builder withIv(byte[] bArr) {
            this.iv = ByteUtil.clone(bArr);
            return this;
        }
    }

    public CredentialCipher(CredentialCipherAlg credentialCipherAlg, Credential credential, byte[] bArr, CredentialClient credentialClient) {
        this.credential = credential;
        CredentialCipherText credentialCipherText = new CredentialCipherText();
        credentialCipherText.setAlgId(credentialCipherAlg);
        credentialCipherText.setIv(bArr);
        this.cipherText = credentialCipherText;
        this.credentialClient = credentialClient;
    }

    public CredentialDecryptHandler getDecryptHandler() {
        return new CredentialDecryptHandler(this.credential, this.cipherText, this.credentialClient);
    }

    public CredentialEncryptHandler getEncryptHandler() {
        return new CredentialEncryptHandler(this.credential, this.cipherText, this.credentialClient);
    }
}
