package com.huawei.wisesecurity.kfs.crypto.cipher;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public enum CipherAlg {
    UNKNOWN((byte) -1, "unknown", 0),
    AES_CBC((byte) 0, "AES/CBC/PKCS5Padding", 16),
    AES_GCM((byte) 1, "AES/GCM/NoPadding", 12),
    RSA_OAEP((byte) 16, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding", 0),
    ECIES((byte) 32, "ECIESwithAES/NONE/PKCS7Padding", 0),
    ECIES_CBC((byte) 33, "ECIESwithAES-CBC/NONE/PKCS7Padding", 0);

    public static final Map MAPPING = new HashMap();
    public static final Map PREFERRED_ALGS = new HashMap();
    public byte id;
    public int ivLen;
    public String transformation;

    static {
        Iterator it = EnumSet.allOf(CipherAlg.class).iterator();
        while (it.hasNext()) {
            CipherAlg cipherAlg = (CipherAlg) it.next();
            MAPPING.put(Byte.valueOf(cipherAlg.id), cipherAlg);
        }
        Map map = PREFERRED_ALGS;
        map.put("EC", ECIES);
        map.put("RSA", RSA_OAEP);
        map.put("AES", AES_GCM);
    }

    CipherAlg(byte b, String str, int i) {
        this.id = b;
        this.transformation = str;
        this.ivLen = i;
    }

    public static CipherAlg getPreferredAlg(String str) {
        return (CipherAlg) PREFERRED_ALGS.get(str);
    }

    public String getTransformation() {
        return this.transformation;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.transformation;
    }
}
