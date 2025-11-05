package com.huawei.wisesecurity.kfs.crypto.signer;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public enum SignAlg {
    UNKNOWN(GrsBaseInfo.CountryCodeSource.UNKNOWN, GrsBaseInfo.CountryCodeSource.UNKNOWN),
    ECDSA("EC", "SHA256WithECDSA"),
    RSA_SHA256("RSA_SHA256", "SHA256WithRSA"),
    RSA_SHA256_PSS("RSA_SHA256_PSS", "SHA256withRSA/PSS"),
    HMAC_SHA256("HmacSHA256", "HmacSHA256");

    public static final Map MAPPING = new HashMap();
    public static final Map PREFERRED_ALGS = new HashMap();
    public String alg;
    public String keyType;

    static {
        Iterator it = EnumSet.allOf(SignAlg.class).iterator();
        while (it.hasNext()) {
            SignAlg signAlg = (SignAlg) it.next();
            MAPPING.put(signAlg.keyType, signAlg.alg);
        }
        Map map = PREFERRED_ALGS;
        map.put("EC", ECDSA);
        map.put("RSA", RSA_SHA256);
        map.put("HMAC", HMAC_SHA256);
    }

    SignAlg(String str, String str2) {
        this.keyType = str;
        this.alg = str2;
    }

    public static SignAlg getPreferredAlg(String str) {
        return (SignAlg) PREFERRED_ALGS.get(str);
    }

    public String getTransformation() {
        return this.alg;
    }
}
