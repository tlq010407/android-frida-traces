.class public Lcom/huawei/location/support/yn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/support/yn$Vw;,
        Lcom/huawei/location/support/yn$FB;
    }
.end annotation


# instance fields
.field private E5:[Lcom/huawei/location/support/yn$Vw;

.field private FB:Z

.field private G3:Lcom/huawei/location/sdm/Config;

.field private LW:[Lcom/huawei/location/support/yn$Vw;

.field private Ot:Lcom/huawei/location/tiles/store/dC;

.field private Vw:J

.field private Yx:Lcom/huawei/location/base/activity/callback/ARCallback;

.field private d2:[Lcom/huawei/location/support/yn$Vw;

.field private dC:[Lcom/huawei/location/support/yn$Vw;

.field private oc:Lcom/huawei/location/support/yn$FB;

.field private ut:Lcom/huawei/location/ephemeris/yn;

.field private yn:I

.field private zp:Lcom/huawei/location/base/activity/ISoftARManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/location/support/yn;->yn:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/location/support/yn;->Vw:J

    new-instance v0, Lcom/huawei/location/support/yn$yn;

    invoke-direct {v0, p0}, Lcom/huawei/location/support/yn$yn;-><init>(Lcom/huawei/location/support/yn;)V

    iput-object v0, p0, Lcom/huawei/location/support/yn;->Yx:Lcom/huawei/location/base/activity/callback/ARCallback;

    return-void
.end method

.method static synthetic Vw(Lcom/huawei/location/support/yn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/huawei/location/support/yn;->yn()V

    return-void
.end method

.method static synthetic yn(Lcom/huawei/location/support/yn;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/huawei/location/support/yn;->yn:I

    return p0
.end method

.method static synthetic yn(Lcom/huawei/location/support/yn;I)I
    .locals 0

    .line 0
    iput p1, p0, Lcom/huawei/location/support/yn;->yn:I

    return p1
.end method

.method private yn()V
    .locals 5

    .line 0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/huawei/location/router/entity/RouterRequest;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "location.requestAdapterSDM"

    invoke-direct {v1, v4, v2, v0, v3}, Lcom/huawei/location/router/entity/RouterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/location/router/interfaces/IRouterCallback;)V

    invoke-static {}, Lcom/huawei/location/router/RouterTaskHandler;->getInstance()Lcom/huawei/location/router/RouterTaskHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/huawei/location/router/RouterTaskHandler;->execute(Lcom/huawei/location/router/entity/RouterRequest;)Lcom/huawei/location/router/entity/IRouterResponse;

    move-result-object v0

    instance-of v1, v0, Lcom/huawei/location/base/activity/ISoftARManager;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/huawei/location/base/activity/ISoftARManager;

    iput-object v0, p0, Lcom/huawei/location/support/yn;->zp:Lcom/huawei/location/base/activity/ISoftARManager;

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/support/yn;->zp:Lcom/huawei/location/base/activity/ISoftARManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/huawei/location/support/yn;->Yx:Lcom/huawei/location/base/activity/callback/ARCallback;

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v2, v3, v1}, Lcom/huawei/location/base/activity/ISoftARManager;->requestActivityUpdates(JLcom/huawei/location/base/activity/callback/ARCallback;)V

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/huawei/location/support/yn$Vw;

    iput-object v1, p0, Lcom/huawei/location/support/yn;->LW:[Lcom/huawei/location/support/yn$Vw;

    new-array v1, v0, [Lcom/huawei/location/support/yn$Vw;

    iput-object v1, p0, Lcom/huawei/location/support/yn;->dC:[Lcom/huawei/location/support/yn$Vw;

    new-array v1, v0, [Lcom/huawei/location/support/yn$Vw;

    iput-object v1, p0, Lcom/huawei/location/support/yn;->E5:[Lcom/huawei/location/support/yn$Vw;

    new-array v0, v0, [Lcom/huawei/location/support/yn$Vw;

    iput-object v0, p0, Lcom/huawei/location/support/yn;->d2:[Lcom/huawei/location/support/yn$Vw;

    new-instance v0, Lcom/huawei/location/tiles/store/dC;

    const/16 v1, 0x19

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/huawei/location/tiles/store/dC;-><init>(II)V

    iput-object v0, p0, Lcom/huawei/location/support/yn;->Ot:Lcom/huawei/location/tiles/store/dC;

    return-void
.end method

.method private yn([Lcom/huawei/location/support/yn$Vw;Z)Z
    .locals 7

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    aget-object v1, p1, v0

    const-string v2, "SDMSupportManager"

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "sdm record status[0] first time"

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/location/support/yn$Vw;

    invoke-direct {v1}, Lcom/huawei/location/support/yn$Vw;-><init>()V

    aput-object v1, p1, v0

    iput-boolean p2, v1, Lcom/huawei/location/support/yn$Vw;->yn:Z

    iget p1, v1, Lcom/huawei/location/support/yn$Vw;->FB:I

    add-int/2addr p1, v3

    iput p1, v1, Lcom/huawei/location/support/yn$Vw;->FB:I

    return p2

    :cond_1
    iget-boolean v4, v1, Lcom/huawei/location/support/yn$Vw;->yn:Z

    const/4 v5, 0x0

    if-eq v4, p2, :cond_6

    aget-object v4, p1, v3

    if-nez v4, :cond_2

    const-string v1, "sdm record status[1] first time"

    invoke-static {v2, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/location/support/yn$Vw;

    invoke-direct {v1}, Lcom/huawei/location/support/yn$Vw;-><init>()V

    aput-object v1, p1, v3

    iput-boolean p2, v1, Lcom/huawei/location/support/yn$Vw;->yn:Z

    iget p2, v1, Lcom/huawei/location/support/yn$Vw;->FB:I

    add-int/2addr p2, v3

    iput p2, v1, Lcom/huawei/location/support/yn$Vw;->FB:I

    goto :goto_2

    :cond_2
    iget v6, v4, Lcom/huawei/location/support/yn$Vw;->FB:I

    add-int/2addr v6, v3

    iput v6, v4, Lcom/huawei/location/support/yn$Vw;->FB:I

    iget-object v4, p0, Lcom/huawei/location/support/yn;->G3:Lcom/huawei/location/sdm/Config;

    iget-boolean v1, v1, Lcom/huawei/location/support/yn$Vw;->Vw:Z

    or-int/2addr p2, v1

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/huawei/location/sdm/Config;->yn()I

    move-result v1

    iget-object v4, p0, Lcom/huawei/location/support/yn;->G3:Lcom/huawei/location/sdm/Config;

    invoke-virtual {v4}, Lcom/huawei/location/sdm/Config;->Vw()I

    move-result v4

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const/4 v1, 0x3

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_4
    const/16 v4, 0xa

    :cond_5
    :goto_1
    aget-object p2, p1, v3

    iget p2, p2, Lcom/huawei/location/support/yn$Vw;->FB:I

    if-lt p2, v4, :cond_7

    const-string p2, "sdm status changed"

    invoke-static {v2, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    aget-object p2, p1, v3

    aput-object p2, p1, v0

    iput-boolean v0, p2, Lcom/huawei/location/support/yn$Vw;->Vw:Z

    aput-object v5, p1, v3

    goto :goto_2

    :cond_6
    iget p2, v1, Lcom/huawei/location/support/yn$Vw;->FB:I

    add-int/2addr p2, v3

    iput p2, v1, Lcom/huawei/location/support/yn$Vw;->FB:I

    aget-object p2, p1, v3

    if-eqz p2, :cond_7

    const-string p2, "sdm destroy status[1]"

    invoke-static {v2, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, p1, v3

    :cond_7
    :goto_2
    aget-object p1, p1, v0

    iget-boolean p1, p1, Lcom/huawei/location/support/yn$Vw;->yn:Z

    return p1

    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/huawei/location/support/yn;->yn()V

    return v0
.end method


# virtual methods
.method public Vw()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/huawei/location/support/yn;->zp:Lcom/huawei/location/base/activity/ISoftARManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/huawei/location/support/yn;->Yx:Lcom/huawei/location/base/activity/callback/ARCallback;

    invoke-interface {v0, v1}, Lcom/huawei/location/base/activity/ISoftARManager;->removeActivityUpdates(Lcom/huawei/location/base/activity/callback/ARCallback;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/location/support/yn;->yn:I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/location/support/yn;->oc:Lcom/huawei/location/support/yn$FB;

    return-void
.end method

.method public yn(Landroid/os/Looper;Lcom/huawei/location/ephemeris/yn;Lcom/huawei/location/sdm/Config;)V
    .locals 0

    .line 0
    iput-object p3, p0, Lcom/huawei/location/support/yn;->G3:Lcom/huawei/location/sdm/Config;

    iput-object p2, p0, Lcom/huawei/location/support/yn;->ut:Lcom/huawei/location/ephemeris/yn;

    iget-object p2, p0, Lcom/huawei/location/support/yn;->oc:Lcom/huawei/location/support/yn$FB;

    if-nez p2, :cond_0

    new-instance p2, Lcom/huawei/location/support/yn$FB;

    invoke-direct {p2, p0, p1}, Lcom/huawei/location/support/yn$FB;-><init>(Lcom/huawei/location/support/yn;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/huawei/location/support/yn;->oc:Lcom/huawei/location/support/yn$FB;

    :cond_0
    iget-object p1, p0, Lcom/huawei/location/support/yn;->oc:Lcom/huawei/location/support/yn$FB;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SDMSupportManager"

    const-string p2, "init failed,caz has msg"

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/huawei/location/support/yn;->oc:Lcom/huawei/location/support/yn$FB;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public yn(DDF)Z
    .locals 8

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/location/support/yn;->Vw:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    const-string v6, "SDMSupportManager"

    cmp-long v7, v2, v4

    if-lez v7, :cond_9

    iput-wide v0, p0, Lcom/huawei/location/support/yn;->Vw:J

    iget-object v0, p0, Lcom/huawei/location/support/yn;->LW:[Lcom/huawei/location/support/yn$Vw;

    invoke-static {}, Lcom/huawei/location/lite/common/android/receiver/ScreenStatusBroadcastReceiver;->isScreenOn()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/location/support/yn;->yn([Lcom/huawei/location/support/yn$Vw;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/huawei/location/support/yn;->dC:[Lcom/huawei/location/support/yn$Vw;

    invoke-static {}, Lcom/huawei/location/lite/common/android/context/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/location/lite/common/util/PermissionUtil;->isAppIsInBackground(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/huawei/location/support/yn;->yn([Lcom/huawei/location/support/yn$Vw;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/huawei/location/support/yn;->E5:[Lcom/huawei/location/support/yn$Vw;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentARType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/location/support/yn;->yn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/huawei/location/support/yn;->yn:I

    const/4 v5, 0x3

    const/4 v7, 0x0

    if-eq v4, v5, :cond_2

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/huawei/location/support/yn;->G3:Lcom/huawei/location/sdm/Config;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/huawei/location/sdm/Config;->dC()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p5, v4

    if-gez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v6, p5}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p5, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/huawei/location/support/yn;->G3:Lcom/huawei/location/sdm/Config;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/huawei/location/sdm/Config;->dC()I

    move-result v4

    int-to-float v4, v4

    cmpl-float p5, p5, v4

    if-gez p5, :cond_3

    goto :goto_0

    :cond_3
    const/4 p5, 0x0

    :goto_2
    invoke-direct {p0, v2, p5}, Lcom/huawei/location/support/yn;->yn([Lcom/huawei/location/support/yn$Vw;Z)Z

    move-result p5

    iget-object v2, p0, Lcom/huawei/location/support/yn;->d2:[Lcom/huawei/location/support/yn$Vw;

    iget-object v4, p0, Lcom/huawei/location/support/yn;->Ot:Lcom/huawei/location/tiles/store/dC;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/huawei/location/tiles/store/dC;->yn(DD)Z

    move-result p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    invoke-direct {p0, v2, p1}, Lcom/huawei/location/support/yn;->yn([Lcom/huawei/location/support/yn$Vw;Z)Z

    move-result p1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz p5, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, p0, Lcom/huawei/location/support/yn;->FB:Z

    if-eqz v3, :cond_8

    iget-object p1, p0, Lcom/huawei/location/support/yn;->ut:Lcom/huawei/location/ephemeris/yn;

    if-nez p1, :cond_6

    return v7

    :cond_6
    invoke-virtual {p1}, Lcom/huawei/location/ephemeris/yn;->yn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/huawei/location/support/yn;->FB:Z

    if-eqz p1, :cond_7

    const-string p1, "sdm is ok"

    goto :goto_5

    :cond_7
    const-string p1, "sdm is bad caz EphModule not available"

    :goto_5
    invoke-static {v6, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/huawei/location/support/yn;->FB:Z

    return p1

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sdm is bad caz after smooth:   screen["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "]; isForeground["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "]; ar["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "]; tile["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sdm check time support: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/huawei/location/support/yn;->FB:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5
.end method
