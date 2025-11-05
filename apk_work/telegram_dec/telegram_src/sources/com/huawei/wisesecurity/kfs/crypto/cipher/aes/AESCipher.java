package com.huawei.wisesecurity.kfs.crypto.cipher.aes;

import android.os.Build;
import com.huawei.wisesecurity.kfs.crypto.cipher.CipherAlg;
import com.huawei.wisesecurity.kfs.crypto.cipher.CipherText;
import com.huawei.wisesecurity.kfs.crypto.cipher.DecryptHandler;
import com.huawei.wisesecurity.kfs.crypto.cipher.DefaultDecryptHandler;
import com.huawei.wisesecurity.kfs.crypto.cipher.DefaultEncryptHandler;
import com.huawei.wisesecurity.kfs.crypto.cipher.EncryptHandler;
import com.huawei.wisesecurity.kfs.exception.CryptoException;
import com.huawei.wisesecurity.kfs.util.ByteUtil;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class AESCipher {
    public final CipherAlg cipherAlg;
    public final Key key;
    public final AlgorithmParameterSpec parameterSpec;

    public static class Builder {
        public CipherAlg cipherAlg = CipherAlg.getPreferredAlg("AES");
        public Key key;
        public AlgorithmParameterSpec parameterSpec;

        public AESCipher build() throws CryptoException {
            AlgorithmParameterSpec algorithmParameterSpec;
            Key key = this.key;
            if (key == null || (algorithmParameterSpec = this.parameterSpec) == null) {
                throw new CryptoException("key | parameterSpec cannot be null");
            }
            return new AESCipher(this.cipherAlg, key, algorithmParameterSpec);
        }

        public Builder withAlg(CipherAlg cipherAlg) {
            this.cipherAlg = cipherAlg;
            return this;
        }

        public Builder withIv(byte[] bArr) throws CryptoException {
            AlgorithmParameterSpec ivParameterSpec;
            int iOrdinal = this.cipherAlg.ordinal();
            if (iOrdinal == 1) {
                ivParameterSpec = new IvParameterSpec(ByteUtil.clone(bArr));
            } else {
                if (iOrdinal != 2) {
                    throw new CryptoException("unsupported cipher alg");
                }
                ivParameterSpec = Build.VERSION.SDK_INT < 21 ? new IvParameterSpec(bArr, 0, bArr.length) : new GCMParameterSpec(128, ByteUtil.clone(bArr));
            }
            this.parameterSpec = ivParameterSpec;
            return this;
        }

        public Builder withKey(Key key) {
            this.key = key;
            return this;
        }
    }

    public AESCipher(CipherAlg cipherAlg, Key key, AlgorithmParameterSpec algorithmParameterSpec) {
        this.cipherAlg = cipherAlg;
        this.key = key;
        this.parameterSpec = algorithmParameterSpec;
    }

    public DecryptHandler getDecryptHandler() {
        CipherText cipherText = new CipherText();
        cipherText.setAlgId(this.cipherAlg);
        return new DefaultDecryptHandler(this.key, cipherText, this.parameterSpec);
    }

    public EncryptHandler getEncryptHandler() {
        CipherText cipherText = new CipherText();
        cipherText.setAlgId(this.cipherAlg);
        return new DefaultEncryptHandler(this.key, cipherText, this.parameterSpec);
    }
}
