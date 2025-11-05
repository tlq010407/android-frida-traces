package com.huawei.wisesecurity.ucs_credential;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import com.huawei.wisesecurity.ucs.common.exception.UcsException;
import com.huawei.wisesecurity.ucs.common.exception.UcsKeyStoreException;
import com.huawei.wisesecurity.ucs.common.log.LogUcs;
import com.huawei.wisesecurity.ucs.common.utils.StringUtil;
import com.huawei.wisesecurity.ucs.credential.Credential;
import com.huawei.wisesecurity.ucs.credential.CredentialClient;
import com.huawei.wisesecurity.ucs.credential.entity.ErrorBody;
import com.huawei.wisesecurity.ucs.credential.nativelib.UcsLib;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkCapability;
import com.huawei.wisesecurity.ucs.credential.outer.NetworkResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyPairGenerator;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class c extends b {
    public c(CredentialClient credentialClient, Context context, NetworkCapability networkCapability) throws UcsException {
        super(credentialClient, context, networkCapability);
        c0.b(context);
        if (c0.a(context)) {
            return;
        }
        LogUcs.e("KeyStoreHandler", " keyStoreCertificateChain is off.", new Object[0]);
        throw new UcsException(1022L, " keyStoreCertificateChain is off.");
    }

    @Override // com.huawei.wisesecurity.ucs_credential.b
    public Credential a(String str) throws UcsException {
        try {
            if (Integer.parseInt(new JSONObject(str).getString("expire")) == 0) {
                return this.g.genCredentialFromString(str);
            }
            throw new UcsException(1017L, "unenable expire.");
        } catch (NumberFormatException e) {
            throw new UcsException(2001L, "parse TSMS resp expire error : " + e.getMessage());
        } catch (JSONException e2) {
            throw new UcsException(1002L, "parse TSMS resp get json error : " + e2.getMessage());
        }
    }

    @Override // com.huawei.wisesecurity.ucs_credential.b
    public String a() throws JSONException, NoSuchAlgorithmException, IOException, UcsException, KeyStoreException, CertificateException, NoSuchProviderException, InvalidAlgorithmParameterException {
        byte[] bArrSign;
        c0 c0VarA = c0.a();
        try {
            if (c0.a.containsAlias("ucs_alias_rootKey")) {
                LogUcs.i("KeyStoreManager", "the alias exists", new Object[0]);
            } else {
                try {
                    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    keyPairGenerator.initialize(new KeyGenParameterSpec.Builder("ucs_alias_rootKey", 15).setDigests("SHA-256", "SHA-512").setKeySize(3072).setAttestationChallenge("AndroidKeyStore".getBytes(StandardCharsets.UTF_8)).setSignaturePaddings("PSS").setEncryptionPaddings("OAEPPadding").build());
                    keyPairGenerator.generateKeyPair();
                    LogUcs.i("KeyStoreManager", "generateKeyPair OK", new Object[0]);
                } catch (InvalidAlgorithmParameterException | NoSuchAlgorithmException | NoSuchProviderException e) {
                    LogUcs.e("KeyStoreManager", "generateKeyPair failed, " + e.getMessage(), new Object[0]);
                    throw new UcsKeyStoreException(1022L, "generateKeyPair failed , exception " + e.getMessage());
                }
            }
            try {
                String string = new y("PS256", c0.a.getCertificateChain("ucs_alias_rootKey"), "AndroidKS").toString();
                List<String> pkgNameCertFP = UcsLib.getPkgNameCertFP(this.b);
                String string2 = new x(2, 1, this.e, this.d, 1, pkgNameCertFP.get(0), pkgNameCertFP.get(1)).toString();
                if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
                    throw new UcsException(1006L, "Get signStr error");
                }
                String str = string + "." + string2;
                synchronized (c0.c) {
                    try {
                        Signature signature = Signature.getInstance("SHA256withRSA/PSS");
                        signature.initSign(c0VarA.a("ucs_alias_rootKey"));
                        signature.update(str.getBytes(StandardCharsets.UTF_8));
                        bArrSign = signature.sign();
                    } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e2) {
                        LogUcs.e("KeyStoreManager", "doSign failed, " + e2.getMessage(), new Object[0]);
                        throw new UcsKeyStoreException(1022L, "doSign failed , exception " + e2.getMessage());
                    }
                }
                String strBase64EncodeToString = StringUtil.base64EncodeToString(bArrSign, 10);
                if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || TextUtils.isEmpty(strBase64EncodeToString)) {
                    throw new UcsException(1006L, "get credential JWS is empty...");
                }
                StringBuilder sb = new StringBuilder();
                if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
                    throw new UcsException(1006L, "Get signStr error");
                }
                sb.append(string + "." + string2);
                sb.append(".");
                sb.append(strBase64EncodeToString);
                return sb.toString();
            } catch (KeyStoreException e3) {
                LogUcs.e("KeyStoreManager", "getCertificateChain failed, " + e3.getMessage(), new Object[0]);
                throw new UcsKeyStoreException(1022L, "getCertificateChain failed , exception " + e3.getMessage());
            }
        } catch (KeyStoreException e4) {
            LogUcs.e("KeyStoreManager", "containsAlias failed, " + e4.getMessage(), new Object[0]);
            throw new UcsKeyStoreException(1022L, "containsAlias failed , exception " + e4.getMessage());
        }
    }

    @Override // com.huawei.wisesecurity.ucs_credential.b
    public String a(NetworkResponse networkResponse) throws UcsException {
        boolean zIsSuccessful = networkResponse.isSuccessful();
        String body = networkResponse.getBody();
        if (zIsSuccessful) {
            return body;
        }
        ErrorBody errorBodyFromString = ErrorBody.fromString(body);
        String str = "tsms service error, " + errorBodyFromString.getErrorMessage();
        LogUcs.e("KeyStoreHandler", str, new Object[0]);
        String errorCode = errorBodyFromString.getErrorCode();
        if ("tsms.1018".equalsIgnoreCase(errorCode) || "tsms.1019".equalsIgnoreCase(errorCode)) {
            c0.c(this.b);
            LogUcs.i("KeyStoreHandler", "turn off androidkeystore CertificateChain", new Object[0]);
        }
        throw new UcsException(1024L, str);
    }
}
