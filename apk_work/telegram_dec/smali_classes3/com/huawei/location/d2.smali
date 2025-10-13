.class public Lcom/huawei/location/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/location/d2$yn;
    }
.end annotation


# static fields
.field public static final Vw:Ljava/lang/Object;

.field public static volatile yn:Lcom/huawei/location/d2;


# instance fields
.field public FB:Lcom/huawei/location/d2$yn;

.field public LW:Landroid/os/Handler;

.field public dC:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/location/d2;->Vw:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/location/dC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/location/d2;->dC:Z

    invoke-static {}, Lcom/huawei/location/E5;->yn()V

    invoke-virtual {p0}, Lcom/huawei/location/d2;->yn()V

    return-void
.end method

.method public static yn(Landroid/content/Context;Lcom/huawei/location/dC;)Lcom/huawei/location/d2;
    .locals 1

    .line 0
    sget-object p0, Lcom/huawei/location/d2;->yn:Lcom/huawei/location/d2;

    if-nez p0, :cond_1

    sget-object p0, Lcom/huawei/location/d2;->Vw:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/huawei/location/d2;->yn:Lcom/huawei/location/d2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/location/d2;

    invoke-direct {v0, p1}, Lcom/huawei/location/d2;-><init>(Lcom/huawei/location/dC;)V

    sput-object v0, Lcom/huawei/location/d2;->yn:Lcom/huawei/location/d2;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    sget-object p0, Lcom/huawei/location/d2;->yn:Lcom/huawei/location/d2;

    return-object p0
.end method


# virtual methods
.method public final yn()V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/huawei/location/d2;->dC:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/location/d2;->dC:Z

    new-instance v0, Lcom/huawei/location/d2$yn;

    const-string v1, "LogPersistenceManagerThread"

    invoke-direct {v0, v1, p0}, Lcom/huawei/location/d2$yn;-><init>(Ljava/lang/String;Lcom/huawei/location/d2;)V

    iput-object v0, p0, Lcom/huawei/location/d2;->FB:Lcom/huawei/location/d2$yn;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/location/d2;->FB:Lcom/huawei/location/d2$yn;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/location/d2;->LW:Landroid/os/Handler;

    return-void
.end method
