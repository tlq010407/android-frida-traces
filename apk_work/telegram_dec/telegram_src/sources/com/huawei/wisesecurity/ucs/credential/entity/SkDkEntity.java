package com.huawei.wisesecurity.ucs.credential.entity;

import com.huawei.wisesecurity.kfs.crypto.cipher.CipherAlg;
import com.huawei.wisesecurity.kfs.crypto.cipher.aes.AESCipher;
import com.huawei.wisesecurity.kfs.exception.CryptoException;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class SkDkEntity {
    public static final int GCM_IV_LEN = 12;
    public static final int GCM_TAG_LEN = 16;
    public byte[] iv;
    public byte[] secKey;

    public static SkDkEntity from(byte[] bArr) throws UcsException {
        SkDkEntity skDkEntity = new SkDkEntity();
        if (bArr.length < 28) {
            throw new UcsException(1001L, "SK DK format error");
        }
        byte[] bArr2 = new byte[12];
        skDkEntity.iv = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, 12);
        byte[] bArr3 = new byte[bArr.length - 12];
        skDkEntity.secKey = bArr3;
        System.arraycopy(bArr, 12, bArr3, 0, bArr.length - 12);
        return skDkEntity;
    }

    public byte[] decryptSkDk(byte[] bArr) throws UcsException {
        try {
            return new AESCipher.Builder().withAlg(CipherAlg.AES_GCM).withIv(this.iv).withKey(new SecretKeySpec(bArr, "AES")).build().getDecryptHandler().from(this.secKey).to();
        } catch (CryptoException e) {
            throw new UcsException(1003L, "decrypt sk dk error : " + e.getMessage());
        }
    }

    public byte[] getIv() {
        return this.iv;
    }

    public byte[] getSecKey() {
        return this.secKey;
    }
}
