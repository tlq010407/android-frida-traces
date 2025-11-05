package com.huawei.wisesecurity.kfs.crypto.signer.hmac;

import com.huawei.wisesecurity.kfs.crypto.signer.DefaultSignHandler;
import com.huawei.wisesecurity.kfs.crypto.signer.SignAlg;
import com.huawei.wisesecurity.kfs.crypto.signer.SignHandler;
import com.huawei.wisesecurity.kfs.crypto.signer.SignText;
import com.huawei.wisesecurity.kfs.exception.CryptoException;
import java.security.Key;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class HmacSigner {
    public final Key key;
    public final SignAlg signAlg;

    public static class Builder {
        public Key key;
        public SignAlg signAlg = SignAlg.getPreferredAlg("HMAC");

        public HmacSigner build() throws CryptoException {
            Key key = this.key;
            if (key != null) {
                return new HmacSigner(this.signAlg, key);
            }
            throw new CryptoException("key cannot be null");
        }

        public Builder withAlg(SignAlg signAlg) {
            this.signAlg = signAlg;
            return this;
        }

        public Builder withKey(byte[] bArr) {
            this.key = new SecretKeySpec(bArr, this.signAlg.getTransformation());
            return this;
        }
    }

    public HmacSigner(SignAlg signAlg, Key key) {
        this.signAlg = signAlg;
        this.key = key;
    }

    public SignHandler getSignHandler() {
        SignText signText = new SignText();
        signText.setAlgId(this.signAlg);
        return new DefaultSignHandler(this.key, signText, null);
    }
}
