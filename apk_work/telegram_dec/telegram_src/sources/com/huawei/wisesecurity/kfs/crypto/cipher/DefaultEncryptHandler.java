package com.huawei.wisesecurity.kfs.crypto.cipher;

import com.huawei.wisesecurity.kfs.exception.CryptoException;
import com.huawei.wisesecurity.kfs.util.ByteUtil;
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
public class DefaultEncryptHandler implements EncryptHandler {
    public final CipherText cipherText;
    public final Key key;
    public final AlgorithmParameterSpec parameterSpec;

    public DefaultEncryptHandler(Key key, CipherText cipherText, AlgorithmParameterSpec algorithmParameterSpec) {
        this.key = key;
        this.parameterSpec = algorithmParameterSpec;
        this.cipherText = cipherText;
    }

    private void doEncrypt() throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, CryptoException, InvalidAlgorithmParameterException {
        try {
            Cipher cipher = Cipher.getInstance(this.cipherText.getAlgId().getTransformation());
            cipher.init(1, this.key, this.parameterSpec);
            CipherText cipherText = this.cipherText;
            cipherText.setCipherBytes(cipher.doFinal(cipherText.getPlainBytes()));
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            throw new CryptoException("Fail to encrypt: " + e.getMessage());
        }
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.cipher.EncryptHandler
    public DefaultEncryptHandler from(byte[] bArr) {
        this.cipherText.setPlainBytes(ByteUtil.clone(bArr));
        return this;
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.cipher.EncryptHandler
    public byte[] to() throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, CryptoException, InvalidAlgorithmParameterException {
        doEncrypt();
        return this.cipherText.getCipherBytes();
    }
}
