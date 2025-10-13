.class public abstract Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([B[BILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "CipherUtil"

    if-eqz p0, :cond_2

    array-length v2, p0

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p1

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2

    invoke-static {}, Lcom/huawei/secure/android/common/encrypt/aes/AesGcm;->isBuildVersionHigherThan19()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const-string v3, "AES/GCM/NoPadding"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/aes/AesGcm;->getGcmAlgorithmParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p3, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object p1, p3

    :goto_0
    invoke-virtual {p0, p2, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GCM encrypt data error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_3
    const-string p0, "gcm encrypt param is not right"

    goto :goto_2
.end method

.method private static b([B[BI)Ljavax/crypto/Cipher;
    .locals 1

    const-string v0, "AES/GCM/NoPadding"

    invoke-static {p0, p1, p2, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->a([B[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getAesGcmEncryptCipher([B[B)Ljavax/crypto/Cipher;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->b([B[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method
