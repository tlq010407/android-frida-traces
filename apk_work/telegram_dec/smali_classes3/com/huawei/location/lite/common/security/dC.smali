.class public Lcom/huawei/location/lite/common/security/dC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/lite/common/security/Vw;


# instance fields
.field private yn:Lcom/huawei/location/lite/common/security/FB;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/location/lite/common/security/FB;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/security/FB;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/lite/common/security/dC;->yn:Lcom/huawei/location/lite/common/security/FB;

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p2, p0, Lcom/huawei/location/lite/common/security/dC;->yn:Lcom/huawei/location/lite/common/security/FB;

    const-string v0, "ACECipher"

    const-string v1, ""

    if-nez p2, :cond_0

    const-string p1, "rootKey is null"

    :goto_0
    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/huawei/location/lite/common/security/dC;->yn:Lcom/huawei/location/lite/common/security/FB;

    invoke-virtual {p2}, Lcom/huawei/location/lite/common/security/FB;->yn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/encrypt/aes/AesCbc;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "AesCbc decrypt failed"

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p2, p0, Lcom/huawei/location/lite/common/security/dC;->yn:Lcom/huawei/location/lite/common/security/FB;

    const-string v0, "ACECipher"

    const-string v1, ""

    if-nez p2, :cond_0

    const-string p1, "rootKey is null"

    :goto_0
    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/huawei/location/lite/common/security/dC;->yn:Lcom/huawei/location/lite/common/security/FB;

    invoke-virtual {p2}, Lcom/huawei/location/lite/common/security/FB;->yn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/encrypt/aes/AesCbc;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "AesCbc encrypt failed"

    goto :goto_0
.end method
