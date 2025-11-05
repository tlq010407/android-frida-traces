package com.huawei.wisesecurity.kfs.crypto.signer;

import com.huawei.wisesecurity.kfs.exception.CryptoException;
import com.huawei.wisesecurity.kfs.util.ByteUtil;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Mac;

/* loaded from: /Users/liqi/android-frida-traces/apk_test/dex_files/classes3.dex */
public class DefaultSignHandler implements SignHandler {
    public final Key key;
    public final AlgorithmParameterSpec parameterSpec;
    public final SignText signText;

    public DefaultSignHandler(Key key, SignText signText, AlgorithmParameterSpec algorithmParameterSpec) {
        this.key = key;
        this.parameterSpec = algorithmParameterSpec;
        this.signText = signText;
    }

    private void doAsymmSign() throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CryptoException, InvalidAlgorithmParameterException {
        try {
            Signature signature = Signature.getInstance(this.signText.getAlgId().getTransformation());
            AlgorithmParameterSpec algorithmParameterSpec = this.parameterSpec;
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            Key key = this.key;
            if (!(key instanceof PrivateKey)) {
                throw new CryptoException("sign key not private key");
            }
            signature.initSign((PrivateKey) key);
            signature.update(this.signText.getDataBytes());
            this.signText.setSignature(signature.sign());
        } catch (InvalidAlgorithmParameterException e) {
            e = e;
            throw new CryptoException("Fail to sign : " + e.getMessage());
        } catch (InvalidKeyException e2) {
            e = e2;
            throw new CryptoException("Fail to sign : " + e.getMessage());
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            throw new CryptoException("Fail to sign : " + e.getMessage());
        } catch (SignatureException e4) {
            e = e4;
            throw new CryptoException("Fail to sign : " + e.getMessage());
        }
    }

    private void doSign() throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CryptoException, InvalidAlgorithmParameterException {
        int iOrdinal = this.signText.getAlgId().ordinal();
        if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3) {
            doAsymmSign();
        } else {
            if (iOrdinal == 4) {
                doSymmSign();
                return;
            }
            throw new CryptoException("unsupported sign alg : " + this.signText.getAlgId().getTransformation());
        }
    }

    private void doSymmSign() throws IllegalStateException, NoSuchAlgorithmException, InvalidKeyException, CryptoException {
        try {
            Mac mac = Mac.getInstance(this.signText.getAlgId().getTransformation());
            mac.init(this.key);
            mac.update(this.signText.getDataBytes());
            this.signText.setSignature(mac.doFinal());
        } catch (InvalidKeyException | NoSuchAlgorithmException e) {
            throw new CryptoException("Fail to sign : " + e.getMessage());
        }
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.signer.SignHandler
    public DefaultSignHandler from(String str) {
        return from(str.getBytes(StandardCharsets.UTF_8));
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.signer.SignHandler
    public DefaultSignHandler from(byte[] bArr) {
        this.signText.setDataBytes(ByteUtil.clone(bArr));
        return this;
    }

    @Override // com.huawei.wisesecurity.kfs.crypto.signer.SignHandler
    public byte[] sign() throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CryptoException, InvalidAlgorithmParameterException {
        doSign();
        return this.signText.getSignature();
    }
}
