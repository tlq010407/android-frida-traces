.class public Lcom/huawei/location/lite/common/security/LocationSecurityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/lite/common/security/Vw;


# instance fields
.field private final securityType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/location/lite/common/security/LocationSecurityManager;->securityType:I

    return-void
.end method

.method private getSecurity()Lcom/huawei/location/lite/common/security/Vw;
    .locals 2

    iget v0, p0, Lcom/huawei/location/lite/common/security/LocationSecurityManager;->securityType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/huawei/location/lite/common/security/dC;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/security/dC;-><init>()V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/huawei/location/lite/common/security/yn;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/security/yn;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/huawei/location/lite/common/security/dC;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/security/dC;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/huawei/location/lite/common/security/OpensslSm4Security;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/security/OpensslSm4Security;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/huawei/location/lite/common/security/LW;

    invoke-direct {v0}, Lcom/huawei/location/lite/common/security/LW;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;->getSecurity()Lcom/huawei/location/lite/common/security/Vw;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p2, "LocationSecurityManager"

    const-string v0, "locationCipher is null"

    invoke-static {p2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/huawei/location/lite/common/security/Vw;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;->getSecurity()Lcom/huawei/location/lite/common/security/Vw;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p2, "LocationSecurityManager"

    const-string v0, "locationCipher is null"

    invoke-static {p2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/huawei/location/lite/common/security/Vw;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
