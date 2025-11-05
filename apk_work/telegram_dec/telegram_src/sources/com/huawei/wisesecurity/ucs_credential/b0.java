package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.common.utils.StringUtil;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public abstract class b0 {
    public static volatile X509Certificate a;

    public static X509Certificate a(Context context, String str) throws IOException, UcsException {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            try {
                X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(inputStreamOpen);
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                return x509Certificate;
            } finally {
            }
        } catch (IOException | CertificateException e) {
            LogUcs.e("b0", "Read root cert error " + e.getMessage(), new Object[0]);
            throw new UcsException(1012L, "Read root cert error " + e.getMessage());
        }
    }

    public static void a(Context context, h hVar) throws NoSuchAlgorithmException, SignatureException, IOException, UcsException, InvalidKeyException, CertificateException, NoSuchProviderException {
        int i;
        if (a == null) {
            synchronized (b0.class) {
                try {
                    if (a == null) {
                        a = a(context, "cbg_root.cer");
                    }
                } finally {
                }
            }
        }
        String[] strArr = hVar.a.b;
        if (strArr == null || strArr.length == 0) {
            throw new UcsException(1012L, "verify cert chain failed , certs is empty..");
        }
        int length = strArr.length;
        X509Certificate[] x509CertificateArr = new X509Certificate[length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(StringUtil.base64Decode(strArr[i2], 0));
                try {
                    X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(byteArrayInputStream);
                    byteArrayInputStream.close();
                    x509CertificateArr[i2] = x509Certificate;
                } finally {
                }
            } catch (IOException | CertificateException e) {
                throw new UcsException(1012L, e.getMessage());
            }
        }
        LogUcs.i("b0", "Start verify cert chain using root ca: " + a.getSubjectDN().getName(), new Object[0]);
        int i3 = 0;
        while (true) {
            i = length - 1;
            if (i3 >= i) {
                break;
            }
            try {
                LogUcs.i("b0", "verify cert " + x509CertificateArr[i3].getSubjectDN().getName(), new Object[0]);
                StringBuilder sb = new StringBuilder();
                sb.append("using ");
                int i4 = i3 + 1;
                sb.append(x509CertificateArr[i4].getSubjectDN().getName());
                LogUcs.i("b0", sb.toString(), new Object[0]);
                x509CertificateArr[i3].checkValidity();
                x509CertificateArr[i3].verify(x509CertificateArr[i4].getPublicKey());
                i3 = i4;
            } catch (RuntimeException e2) {
                e = e2;
                LogUcs.e("b0", "verify cert chain failed , exception " + e.getMessage(), new Object[0]);
                throw new UcsException(1012L, "verify cert chain failed , exception " + e.getMessage());
            } catch (InvalidKeyException e3) {
                e = e3;
                LogUcs.e("b0", "verify cert chain failed , exception " + e.getMessage(), new Object[0]);
                throw new UcsException(1012L, "verify cert chain failed , exception " + e.getMessage());
            } catch (NoSuchAlgorithmException e4) {
                e = e4;
                LogUcs.e("b0", "verify cert chain failed , exception " + e.getMessage(), new Object[0]);
                throw new UcsException(1012L, "verify cert chain failed , exception " + e.getMessage());
            } catch (NoSuchProviderException e5) {
                e = e5;
                LogUcs.e("b0", "verify cert chain failed , exception " + e.getMessage(), new Object[0]);
                throw new UcsException(1012L, "verify cert chain failed , exception " + e.getMessage());
            } catch (SignatureException e6) {
                e = e6;
                LogUcs.e("b0", "verify cert chain failed , exception " + e.getMessage(), new Object[0]);
                throw new UcsException(1012L, "verify cert chain failed , exception " + e.getMessage());
            } catch (CertificateException e7) {
                e = e7;
                LogUcs.e("b0", "verify cert chain failed , exception " + e.getMessage(), new Object[0]);
                throw new UcsException(1012L, "verify cert chain failed , exception " + e.getMessage());
            }
        }
        x509CertificateArr[i].verify(a.getPublicKey());
        for (String str : x509CertificateArr[0].getSubjectDN().getName().split(",")) {
            if (str.startsWith("OU=") && "Huawei CBG Cloud Security Signer".equals(str.substring(3))) {
                X509Certificate x509Certificate2 = x509CertificateArr[0];
                try {
                    Signature signature = Signature.getInstance("RS256".equals(hVar.a.a) ? "SHA256WithRSA" : "SHA256WithRSA/PSS");
                    signature.initVerify(x509Certificate2.getPublicKey());
                    signature.update(hVar.d.getBytes(StandardCharsets.UTF_8));
                    if (signature.verify(hVar.c)) {
                        return;
                    } else {
                        throw new UcsException(1012L, "signature not verify");
                    }
                } catch (RuntimeException | InvalidKeyException | NoSuchAlgorithmException | SignatureException e8) {
                    LogUcs.e("b0", "verify signature failed , exception " + e8.getMessage(), new Object[0]);
                    throw new UcsException(1012L, "verify signature of c1 failed!");
                }
            }
        }
        throw new UcsException(1012L, "Subject OU not verify");
    }
}
