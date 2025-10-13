.class public Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/wisesecurity/kfs/crypto/cipher/DecryptHandler;


# instance fields
.field public final cipherText:Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherText;

.field public final key:Ljava/security/Key;

.field public final parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>(Ljava/security/Key;Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherText;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;->key:Ljava/security/Key;

    iput-object p3, p0, Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p2, p0, Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;->cipherText:Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherText;

    return-void
.end method

.method private doDecrypt()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;->cipherText:Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherText;

    invoke-virtual {v0}, Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherText;->getAlgId()Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherAlg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherAlg;->getTransformation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;->key:Ljava/security/Key;

    iget-object v2, p0, Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    iget-object v1, p0, Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;->cipherText:Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherText;

    invoke-virtual {v1}, Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherText;->getCipherBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    :goto_0
    new-instance v1, Lcom/huawei/wisesecurity/kfs/exception/CryptoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to decrypt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/huawei/wisesecurity/kfs/exception/CryptoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic from([B)Lcom/huawei/wisesecurity/kfs/crypto/cipher/DecryptHandler;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;->from([B)Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;

    move-result-object p1

    return-object p1
.end method

.method public from([B)Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;->cipherText:Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherText;

    invoke-virtual {v0, p1}, Lcom/huawei/wisesecurity/kfs/crypto/cipher/CipherText;->setCipherBytes([B)V

    return-object p0
.end method

.method public to()[B
    .locals 1

    invoke-direct {p0}, Lcom/huawei/wisesecurity/kfs/crypto/cipher/DefaultDecryptHandler;->doDecrypt()[B

    move-result-object v0

    return-object v0
.end method
