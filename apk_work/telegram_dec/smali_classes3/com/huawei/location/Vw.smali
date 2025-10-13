.class public final Lcom/huawei/location/Vw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/Vw$LW;,
        Lcom/huawei/location/Vw$FB;,
        Lcom/huawei/location/Vw$Vw;,
        Lcom/huawei/location/Vw$E5;,
        Lcom/huawei/location/Vw$dC;
    }
.end annotation


# instance fields
.field public E5:Lcom/huawei/location/Vw$dC;

.field public FB:Z

.field public G3:Lcom/huawei/riemann/location/SdmLocationAlgoWrapper;

.field public LW:Landroid/content/ServiceConnection;

.field public Ot:Z

.field public final Vw:Ljava/lang/Object;

.field public Yx:Lcom/huawei/riemann/common/api/location/CityTileCallback;

.field public d2:Lcom/huawei/location/Vw$FB;

.field public dC:Landroid/os/Messenger;

.field public volatile dW:Z

.field public h1:Lcom/huawei/riemann/common/api/location/CityTileCallback;

.field public oc:Landroid/content/Intent;

.field public ut:Ljava/util/ArrayList;

.field public yn:Landroid/content/Context;

.field public zp:Lcom/huawei/location/Vw$LW;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/location/Vw;->Vw:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/location/Vw;->FB:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/location/Vw;->dC:Landroid/os/Messenger;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/location/Vw;->ut:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/huawei/location/Vw;->oc:Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/huawei/location/Vw;->Ot:Z

    iput-object v1, p0, Lcom/huawei/location/Vw;->G3:Lcom/huawei/riemann/location/SdmLocationAlgoWrapper;

    iput-object v1, p0, Lcom/huawei/location/Vw;->Yx:Lcom/huawei/riemann/common/api/location/CityTileCallback;

    iput-object v1, p0, Lcom/huawei/location/Vw;->h1:Lcom/huawei/riemann/common/api/location/CityTileCallback;

    iput-boolean v0, p0, Lcom/huawei/location/Vw;->dW:Z

    new-instance v0, Lcom/huawei/location/Vw$yn;

    invoke-direct {v0, p0}, Lcom/huawei/location/Vw$yn;-><init>(Lcom/huawei/location/Vw;)V

    iput-object v0, p0, Lcom/huawei/location/Vw;->LW:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/huawei/location/Vw;->yn:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/location/Vw;->oc:Landroid/content/Intent;

    invoke-static {p1, p4}, Lcom/huawei/riemann/location/SdmLocationAlgoWrapper;->yn(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/riemann/location/SdmLocationAlgoWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/location/Vw;->G3:Lcom/huawei/riemann/location/SdmLocationAlgoWrapper;

    invoke-virtual {p0, p3}, Lcom/huawei/location/Vw;->yn(Landroid/os/Looper;)V

    invoke-static {}, Lcom/huawei/location/LW;->yn()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/huawei/location/Vw;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/huawei/location/Vw;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/huawei/location/Vw;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic yn(Lcom/huawei/location/Vw;Z)Z
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/huawei/location/Vw;->FB:Z

    return p1
.end method


# virtual methods
.method public final yn(Landroid/os/Looper;)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/huawei/location/Vw;->Ot:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/huawei/location/Vw$dC;

    iget-object v0, p0, Lcom/huawei/location/Vw;->yn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/huawei/location/Vw$dC;-><init>(Lcom/huawei/location/Vw;Landroid/os/Looper;)V

    :goto_0
    iput-object p1, p0, Lcom/huawei/location/Vw;->E5:Lcom/huawei/location/Vw$dC;

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/huawei/location/Vw$dC;

    invoke-direct {p1, p0}, Lcom/huawei/location/Vw$dC;-><init>(Lcom/huawei/location/Vw;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/huawei/location/Vw$dC;

    invoke-direct {v0, p0, p1}, Lcom/huawei/location/Vw$dC;-><init>(Lcom/huawei/location/Vw;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/location/Vw;->E5:Lcom/huawei/location/Vw$dC;

    :goto_1
    new-instance p1, Lcom/huawei/location/Vw$FB;

    const-string v0, "SdmLocationManagerThread"

    invoke-direct {p1, v0, p0}, Lcom/huawei/location/Vw$FB;-><init>(Ljava/lang/String;Lcom/huawei/location/Vw;)V

    iput-object p1, p0, Lcom/huawei/location/Vw;->d2:Lcom/huawei/location/Vw$FB;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/huawei/location/Vw$LW;

    iget-object v0, p0, Lcom/huawei/location/Vw;->d2:Lcom/huawei/location/Vw$FB;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/huawei/location/Vw$LW;-><init>(Lcom/huawei/location/Vw;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/huawei/location/Vw;->zp:Lcom/huawei/location/Vw$LW;

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/location/Vw;->Ot:Z

    return-void
.end method
