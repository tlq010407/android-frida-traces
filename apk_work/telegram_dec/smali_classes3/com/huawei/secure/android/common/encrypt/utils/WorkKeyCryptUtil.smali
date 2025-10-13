.class public abstract Lcom/huawei/secure/android/common/encrypt/utils/WorkKeyCryptUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static decryptWorkKey(Ljava/lang/String;Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p1}, Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;->getRootKey()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/aes/AesCbc;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decryptWorkKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/aes/AesCbc;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptWorkKey(Ljava/lang/String;Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p1}, Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;->getRootKey()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/aes/AesCbc;->encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptWorkKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/aes/AesCbc;->encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
