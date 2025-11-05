package com.huawei.wisesecurity.kfs.crypto.cipher;

import com.huawei.wisesecurity.kfs.exception.CryptoException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class DefaultDecryptHandler implements DecryptHandler {
    public final CipherText cipherText;
    public final Key key;
    public final AlgorithmParameterSpec parameterSpec;

    public DefaultDecryptHandler(Key key, CipherText cipherText, AlgorithmParameterSpec algorithmParameterSpec) {
        this.key = key;
        this.parameterSpec = algorithmParameterSpec;
        this.cipherText = cipherText;
    }

    private byte[] doDecrypt() throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, CryptoException, InvalidAlgorithmParameterException {
        try {
            Cipher cipher = Cipher.getInstance(this.cipherText.getAlgId().getTransformation());
            cipher.init(2, this.key, this.parameterSpec);
            return cipher.doFinal(this.cipherText.getCipherBytes());
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            throw new CryptoException("Fail to decrypt: " + e.getMessage());
        }
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.cipher.DecryptHandler
    public DefaultDecryptHandler from(byte[] bArr) {
        this.cipherText.setCipherBytes(bArr);
        return this;
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.cipher.DecryptHandler
    public byte[] to() {
        return doDecrypt();
    }
}
