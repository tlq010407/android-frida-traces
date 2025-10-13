.class final Lcom/huawei/location/crowdsourcing/Config;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/crowdsourcing/common/yn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/crowdsourcing/Config$Vw;,
        Lcom/huawei/location/crowdsourcing/Config$LW;,
        Lcom/huawei/location/crowdsourcing/Config$FB;,
        Lcom/huawei/location/crowdsourcing/Config$Configurations;
    }
.end annotation


# instance fields
.field private E5:J

.field private FB:J

.field private G3:J

.field private LW:J

.field private Ot:I

.field private Vw:Lcom/huawei/location/crowdsourcing/Config$Vw;

.field private Wf:Landroid/content/SharedPreferences$Editor;

.field private Yx:Ljava/lang/String;

.field private d2:I

.field private dC:I

.field private dW:Ljava/lang/String;

.field private h1:Z

.field private oc:I

.field private ut:J

.field private yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

.field private zp:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/huawei/location/crowdsourcing/Config$Vw;->yn:Lcom/huawei/location/crowdsourcing/Config$Vw;

    iput-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->Vw:Lcom/huawei/location/crowdsourcing/Config$Vw;

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/location/crowdsourcing/Config;->d2:I

    iput v0, p0, Lcom/huawei/location/crowdsourcing/Config;->zp:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/huawei/location/crowdsourcing/Config;->ut:J

    iput-wide v1, p0, Lcom/huawei/location/crowdsourcing/Config;->G3:J

    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/location/crowdsourcing/Config;->Yx:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/huawei/location/crowdsourcing/Config;->h1:Z

    iput-object v1, p0, Lcom/huawei/location/crowdsourcing/Config;->dW:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/location/crowdsourcing/Config$yn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/huawei/location/crowdsourcing/Config;-><init>()V

    return-void
.end method

.method private static LW()Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/huawei/location/lite/common/security/LocationSecurityManager;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;-><init>(I)V

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RECORD_CROWD"

    invoke-virtual {v0, v1, v2}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->sha256Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/huawei/location/lite/common/util/PreferencesHelper;

    const-string v4, "crowdsourcing_config"

    invoke-direct {v2, v4}, Lcom/huawei/location/lite/common/util/PreferencesHelper;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sp_random_key"

    invoke-virtual {v2, v3, v0}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v1
.end method

.method static oc()Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/huawei/location/lite/common/security/LocationSecurityManager;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;-><init>(I)V

    new-instance v1, Lcom/huawei/location/lite/common/util/PreferencesHelper;

    const-string v2, "crowdsourcing_config"

    invoke-direct {v1, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;-><init>(Ljava/lang/String;)V

    const-string v2, "sp_random_key"

    invoke-virtual {v1, v2}, Lcom/huawei/location/lite/common/util/PreferencesHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Config;->LW()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v1, v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const-string v5, "RECORD_CROWD"

    invoke-virtual {v0, v4, v5}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/secure/android/common/encrypt/hash/SHA;->validateSHA256(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/huawei/location/lite/common/security/LocationSecurityManager;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/huawei/location/crowdsourcing/Config;->LW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static yn(Lcom/huawei/location/crowdsourcing/Config;)J
    .locals 7

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/location/crowdsourcing/Config;->ut:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-string v2, "checkReset reset"

    const-string v3, "Config"

    invoke-static {v3, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/huawei/location/crowdsourcing/Config;->ut:J

    iget-object v2, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    const-string v6, "RESET_TIMESTAMP"

    invoke-interface {v2, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "reset Counters"

    invoke-static {v3, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/location/crowdsourcing/Config;->d2:I

    iput v2, p0, Lcom/huawei/location/crowdsourcing/Config;->zp:I

    iget-object v3, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    const-string v6, "WIFI_NUM"

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget v3, p0, Lcom/huawei/location/crowdsourcing/Config;->zp:I

    const-string v6, "CELL_NUM"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-wide v2, p0, Lcom/huawei/location/crowdsourcing/Config;->ut:J

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method E5()J
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$1000(Lcom/huawei/location/crowdsourcing/Config$Configurations;)J

    move-result-wide v0

    return-wide v0
.end method

.method EF()J
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$600(Lcom/huawei/location/crowdsourcing/Config$Configurations;)J

    move-result-wide v0

    return-wide v0
.end method

.method Eu()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/location/crowdsourcing/Config;->G3:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/huawei/location/crowdsourcing/Config;->FB:J

    iget v6, p0, Lcom/huawei/location/crowdsourcing/Config;->oc:I

    shl-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iput-wide v0, p0, Lcom/huawei/location/crowdsourcing/Config;->G3:J

    iget-object v3, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    const-string v4, "UPLOAD_TIMESTAMP"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return v2
.end method

.method FB()V
    .locals 3

    iget v0, p0, Lcom/huawei/location/crowdsourcing/Config;->d2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/location/crowdsourcing/Config;->d2:I

    iget-object v1, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    const-string v2, "WIFI_NUM"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method G3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->dW:Ljava/lang/String;

    return-object v0
.end method

.method OB()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/crowdsourcing/Config;->E5:J

    return-wide v0
.end method

.method Ot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$1700(Lcom/huawei/location/crowdsourcing/Config$Configurations;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method SI()Z
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->Vw:Lcom/huawei/location/crowdsourcing/Config$Vw;

    sget-object v1, Lcom/huawei/location/crowdsourcing/Config$Vw;->yn:Lcom/huawei/location/crowdsourcing/Config$Vw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method Vw()V
    .locals 3

    .line 0
    iget v0, p0, Lcom/huawei/location/crowdsourcing/Config;->zp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/location/crowdsourcing/Config;->zp:I

    iget-object v1, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    const-string v2, "CELL_NUM"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method Vw(Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PATCH_POLICY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method Wf()I
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$1600(Lcom/huawei/location/crowdsourcing/Config$Configurations;)I

    move-result v0

    return v0
.end method

.method Yx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->Yx:Ljava/lang/String;

    return-object v0
.end method

.method a6()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->Vw:Lcom/huawei/location/crowdsourcing/Config$Vw;

    sget-object v1, Lcom/huawei/location/crowdsourcing/Config$Vw;->yn:Lcom/huawei/location/crowdsourcing/Config$Vw;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/huawei/location/crowdsourcing/Config$Vw;->LW:Lcom/huawei/location/crowdsourcing/Config$Vw;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/huawei/location/crowdsourcing/Config;->d2:I

    iget-object v1, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v1}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$1300(Lcom/huawei/location/crowdsourcing/Config$Configurations;)I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method d2()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/location/crowdsourcing/Config;->LW:J

    return-wide v0
.end method

.method dC()I
    .locals 1

    iget v0, p0, Lcom/huawei/location/crowdsourcing/Config;->dC:I

    return v0
.end method

.method dW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$1800(Lcom/huawei/location/crowdsourcing/Config$Configurations;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h1()I
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$1200(Lcom/huawei/location/crowdsourcing/Config$Configurations;)I

    move-result v0

    return v0
.end method

.method kN()V
    .locals 3

    iget v0, p0, Lcom/huawei/location/crowdsourcing/Config;->oc:I

    iget v1, p0, Lcom/huawei/location/crowdsourcing/Config;->Ot:I

    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/location/crowdsourcing/Config;->oc:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/huawei/location/crowdsourcing/Config;->oc:I

    :goto_0
    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    iget v1, p0, Lcom/huawei/location/crowdsourcing/Config;->oc:I

    const-string v2, "CONTINUOUS_UPLOAD_FAIL_NUM"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "continuous upload failed num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/location/crowdsourcing/Config;->oc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config"

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method lS()V
    .locals 3

    iget v0, p0, Lcom/huawei/location/crowdsourcing/Config;->oc:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/location/crowdsourcing/Config;->oc:I

    iget-object v1, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    const-string v2, "CONTINUOUS_UPLOAD_FAIL_NUM"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method t6()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->Vw:Lcom/huawei/location/crowdsourcing/Config$Vw;

    sget-object v1, Lcom/huawei/location/crowdsourcing/Config$Vw;->yn:Lcom/huawei/location/crowdsourcing/Config$Vw;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/huawei/location/crowdsourcing/Config$Vw;->FB:Lcom/huawei/location/crowdsourcing/Config$Vw;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/huawei/location/crowdsourcing/Config;->zp:I

    iget-object v1, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v1}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$1400(Lcom/huawei/location/crowdsourcing/Config$Configurations;)I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method ut()J
    .locals 2

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$900(Lcom/huawei/location/crowdsourcing/Config$Configurations;)J

    move-result-wide v0

    return-wide v0
.end method

.method public yn()V
    .locals 2

    .line 0
    const-string v0, "Config"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method yn(Landroid/content/Context;Landroid/os/Looper;)Z
    .locals 12

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lcom/huawei/location/lite/common/config/ConfigManager;->getInstance()Lcom/huawei/location/lite/common/config/ConfigManager;

    move-result-object v2

    const-string v3, "crowdsourcing"

    const-class v4, Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-virtual {v2, v3, v4}, Lcom/huawei/location/lite/common/config/ConfigManager;->getConfig(Ljava/lang/String;Ljava/lang/Class;)Lcom/huawei/location/lite/common/config/ConfigBaseResponse;

    move-result-object v2

    check-cast v2, Lcom/huawei/location/crowdsourcing/Config$Configurations;

    iput-object v2, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    const-string v3, "Config"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string p1, "failed to get config"

    :goto_0
    invoke-static {v3, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    invoke-static {v2}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$200(Lcom/huawei/location/crowdsourcing/Config$Configurations;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "config not valid"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configurations:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-virtual {v5}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v2}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$300(Lcom/huawei/location/crowdsourcing/Config$Configurations;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    iput-wide v5, p0, Lcom/huawei/location/crowdsourcing/Config;->FB:J

    iget-object v2, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v2}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$400(Lcom/huawei/location/crowdsourcing/Config$Configurations;)I

    move-result v2

    const/high16 v5, 0x100000

    mul-int v2, v2, v5

    iput v2, p0, Lcom/huawei/location/crowdsourcing/Config;->dC:I

    iget-object v2, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v2}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$500(Lcom/huawei/location/crowdsourcing/Config$Configurations;)J

    move-result-wide v5

    const-wide/32 v9, 0xf4240

    mul-long v5, v5, v9

    iput-wide v5, p0, Lcom/huawei/location/crowdsourcing/Config;->LW:J

    iget-object v2, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v2}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$600(Lcom/huawei/location/crowdsourcing/Config$Configurations;)J

    move-result-wide v5

    mul-long v5, v5, v7

    iput-wide v5, p0, Lcom/huawei/location/crowdsourcing/Config;->E5:J

    iget-object v2, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v2}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$700(Lcom/huawei/location/crowdsourcing/Config$Configurations;)I

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/huawei/location/crowdsourcing/Config$Vw;->Vw:Lcom/huawei/location/crowdsourcing/Config$Vw;

    goto :goto_1

    :cond_2
    if-ne v2, v1, :cond_3

    sget-object v2, Lcom/huawei/location/crowdsourcing/Config$Vw;->FB:Lcom/huawei/location/crowdsourcing/Config$Vw;

    goto :goto_1

    :cond_3
    if-ne v2, v0, :cond_4

    sget-object v2, Lcom/huawei/location/crowdsourcing/Config$Vw;->LW:Lcom/huawei/location/crowdsourcing/Config$Vw;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/huawei/location/crowdsourcing/Config$Vw;->yn:Lcom/huawei/location/crowdsourcing/Config$Vw;

    :goto_1
    iput-object v2, p0, Lcom/huawei/location/crowdsourcing/Config;->Vw:Lcom/huawei/location/crowdsourcing/Config$Vw;

    iget-wide v5, p0, Lcom/huawei/location/crowdsourcing/Config;->FB:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_5

    iput v4, p0, Lcom/huawei/location/crowdsourcing/Config;->Ot:I

    goto :goto_2

    :cond_5
    long-to-double v5, v5

    const-wide v9, 0x41a4997000000000L    # 1.728E8

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v5, v9

    double-to-int v2, v5

    iput v2, p0, Lcom/huawei/location/crowdsourcing/Config;->Ot:I

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload fail max num:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/location/crowdsourcing/Config;->Ot:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v2, v5, :cond_6

    invoke-static {p1}, Lcom/huawei/hms/aaid/utils/PushPreferences$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    :cond_6
    const-string v2, "crowdsourcing_config"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "create sharedPreferences failed"

    goto/16 :goto_0

    :cond_7
    const-string v2, "WIFI_NUM"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/location/crowdsourcing/Config;->d2:I

    const-string v2, "CELL_NUM"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/location/crowdsourcing/Config;->zp:I

    const-string v2, "RESET_TIMESTAMP"

    invoke-interface {p1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/huawei/location/crowdsourcing/Config;->ut:J

    const-string v2, "UPLOAD_TIMESTAMP"

    invoke-interface {p1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/huawei/location/crowdsourcing/Config;->G3:J

    const-string v2, "CONTINUOUS_UPLOAD_FAIL_NUM"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/location/crowdsourcing/Config;->oc:I

    const-string v2, "MCC_CHECK_RESULT"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/huawei/location/crowdsourcing/Config;->h1:Z

    const-string v2, "PATCH_POLICY"

    const-string v5, ""

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/location/crowdsourcing/Config;->dW:Ljava/lang/String;

    const-string v2, "SERIAL_NUMBER"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/huawei/location/crowdsourcing/Config;->Yx:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v6, p0, Lcom/huawei/location/crowdsourcing/Config;->d2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/huawei/location/crowdsourcing/Config;->zp:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p0, Lcom/huawei/location/crowdsourcing/Config;->ut:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Lcom/huawei/location/crowdsourcing/Config;->G3:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v10, p0, Lcom/huawei/location/crowdsourcing/Config;->oc:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v4

    aput-object v7, v11, v1

    aput-object v8, v11, v0

    const/4 v0, 0x3

    aput-object v9, v11, v0

    const/4 v0, 0x4

    aput-object v10, v11, v0

    const-string v0, "wifiNum:%d, cellNum:%d, resetTimeStamp:%d, uploadTimeStamp:%d, uploadContinuousFailNum:%d"

    invoke-static {v5, v0, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/huawei/location/crowdsourcing/Config;->Yx:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/location/crowdsourcing/Config;->Yx:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create serial number:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->Yx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->Yx:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_8
    iget-object p1, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Lcom/huawei/location/crowdsourcing/Config$LW;

    invoke-direct {p1, p0, p2}, Lcom/huawei/location/crowdsourcing/Config$LW;-><init>(Lcom/huawei/location/crowdsourcing/Config;Landroid/os/Looper;)V

    invoke-virtual {p1}, Lcom/huawei/location/crowdsourcing/Config$LW;->Vw()V

    return v1
.end method

.method yn(Ljava/lang/String;)Z
    .locals 3

    .line 0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Config"

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no mcc, use last mcc result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/huawei/location/crowdsourcing/Config;->h1:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p1, p0, Lcom/huawei/location/crowdsourcing/Config;->h1:Z

    return p1

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$800(Lcom/huawei/location/crowdsourcing/Config$Configurations;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    iget-boolean v0, p0, Lcom/huawei/location/crowdsourcing/Config;->h1:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/huawei/location/crowdsourcing/Config;->h1:Z

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    const-string v2, "MCC_CHECK_RESULT"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/huawei/location/crowdsourcing/Config;->Wf:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "got mcc, check result:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/huawei/location/crowdsourcing/Config;->h1:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method zp()I
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Config;->yn:Lcom/huawei/location/crowdsourcing/Config$Configurations;

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/Config$Configurations;->access$1100(Lcom/huawei/location/crowdsourcing/Config$Configurations;)I

    move-result v0

    return v0
.end method
