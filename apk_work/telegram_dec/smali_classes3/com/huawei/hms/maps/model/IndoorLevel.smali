.class public final Lcom/huawei/hms/maps/model/IndoorLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/maps/model/IndoorLevel;->a:Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/IndoorLevel;->a:Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/huawei/hms/maps/model/IndoorLevel;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/IndoorLevel;->a:Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;

    check-cast p1, Lcom/huawei/hms/maps/model/IndoorLevel;

    iget-object p1, p1, Lcom/huawei/hms/maps/model/IndoorLevel;->a:Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;->equalsRemote(Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/IndoorLevel;->a:Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getShortName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/IndoorLevel;->a:Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;->getShortName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/IndoorLevel;->a:Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/model/internal/IIndoorLevelDelegate;->hashCodeRemote()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
