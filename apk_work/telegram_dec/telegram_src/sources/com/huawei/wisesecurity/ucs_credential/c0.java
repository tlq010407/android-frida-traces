package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import android.os.Build;
import com.huawei.wisesecurity.ucs.common.exception.UcsKeyStoreException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.common.utils.SpUtil;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class c0 {
    public static KeyStore a;
    public static c0 b = new c0();
    public static final Object c = new Object();

    public static c0 a() throws UcsKeyStoreException, NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        if (a == null) {
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                a = keyStore;
                keyStore.load(null);
                LogUcs.i("KeyStoreManager", "initKeyStore ok", new Object[0]);
            } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
                LogUcs.e("KeyStoreManager", "initKeyStore failed, " + e.getMessage(), new Object[0]);
                throw new UcsKeyStoreException(1022L, "initKeyStore failed , exception " + e.getMessage());
            }
        }
        return b;
    }

    public static boolean a(Context context) {
        return SpUtil.getInt("ucs_keystore_sp_key_t", -1, context) == 1;
    }

    public static void b(Context context) {
        if (SpUtil.getInt("ucs_keystore_sp_key_t", -1, context) != -1) {
            LogUcs.i("KeyStoreManager", "keyStoreRootKey status already init", new Object[0]);
        } else if (Build.VERSION.SDK_INT >= 24) {
            SpUtil.putInt("ucs_keystore_sp_key_t", 1, context);
        } else {
            c(context);
        }
    }

    public static void c(Context context) {
        SpUtil.putInt("ucs_keystore_sp_key_t", 0, context);
    }

    public final PrivateKey a(String str) throws UcsKeyStoreException {
        try {
            return (PrivateKey) a.getKey(str, null);
        } catch (KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException e) {
            LogUcs.e("KeyStoreManager", "getPrivateKey failed, " + e.getMessage(), new Object[0]);
            throw new UcsKeyStoreException(1022L, "getPrivateKey failed , exception " + e.getMessage());
        }
    }

    public byte[] a(String str, byte[] bArr) {
        byte[] bArrDoFinal;
        synchronized (c) {
            try {
                try {
                    Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding");
                    cipher.init(2, a(str), new OAEPParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA1, PSource.PSpecified.DEFAULT));
                    cipher.update(bArr);
                    bArrDoFinal = cipher.doFinal();
                } catch (Throwable th) {
                    throw th;
                }
            } catch (InvalidAlgorithmParameterException e) {
                e = e;
                LogUcs.e("KeyStoreManager", "doDecrypt failed, " + e.getMessage(), new Object[0]);
                throw new UcsKeyStoreException(1022L, "doDecrypt failed , exception " + e.getMessage());
            } catch (InvalidKeyException e2) {
                e = e2;
                LogUcs.e("KeyStoreManager", "doDecrypt failed, " + e.getMessage(), new Object[0]);
                throw new UcsKeyStoreException(1022L, "doDecrypt failed , exception " + e.getMessage());
            } catch (NoSuchAlgorithmException e3) {
                e = e3;
                LogUcs.e("KeyStoreManager", "doDecrypt failed, " + e.getMessage(), new Object[0]);
                throw new UcsKeyStoreException(1022L, "doDecrypt failed , exception " + e.getMessage());
            } catch (BadPaddingException e4) {
                e = e4;
                LogUcs.e("KeyStoreManager", "doDecrypt failed, " + e.getMessage(), new Object[0]);
                throw new UcsKeyStoreException(1022L, "doDecrypt failed , exception " + e.getMessage());
            } catch (IllegalBlockSizeException e5) {
                e = e5;
                LogUcs.e("KeyStoreManager", "doDecrypt failed, " + e.getMessage(), new Object[0]);
                throw new UcsKeyStoreException(1022L, "doDecrypt failed , exception " + e.getMessage());
            } catch (NoSuchPaddingException e6) {
                e = e6;
                LogUcs.e("KeyStoreManager", "doDecrypt failed, " + e.getMessage(), new Object[0]);
                throw new UcsKeyStoreException(1022L, "doDecrypt failed , exception " + e.getMessage());
            }
        }
        return bArrDoFinal;
    }
}
