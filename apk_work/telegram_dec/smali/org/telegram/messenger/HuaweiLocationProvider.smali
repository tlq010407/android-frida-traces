.class public Lorg/telegram/messenger/HuaweiLocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ILocationServiceProvider;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiLocationRequest;,
        Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiApiClientImpl;
    }
.end annotation


# instance fields
.field private locationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

.field private settingsClient:Lcom/huawei/hms/location/SettingsClient;


# direct methods
.method public static synthetic $r8$lambda$3H0D4OkV5rkDJWynl3fKT2YNbM8(Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/HuaweiLocationProvider;->lambda$onCreateLocationServicesAPI$2(Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;Lcom/huawei/hms/api/ConnectionResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5zWCYEj3fZdp8-VJNd4uI74dqZE(Landroidx/core/util/Consumer;Lcom/huawei/hmf/tasks/Task;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/HuaweiLocationProvider;->lambda$checkLocationSettings$1(Landroidx/core/util/Consumer;Lcom/huawei/hmf/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iULb_NOxg32Xy1GhJFuZj4jfowM(Landroidx/core/util/Consumer;Lcom/huawei/hmf/tasks/Task;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/HuaweiLocationProvider;->lambda$getLastLocation$0(Landroidx/core/util/Consumer;Lcom/huawei/hmf/tasks/Task;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$checkLocationSettings$1(Landroidx/core/util/Consumer;Lcom/huawei/hmf/tasks/Task;)V
    .locals 1

    :try_start_0
    const-class v0, Lcom/huawei/hms/common/ApiException;

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->getResultThrowException(Ljava/lang/Class;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2136

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private static synthetic lambda$getLastLocation$0(Landroidx/core/util/Consumer;Lcom/huawei/hmf/tasks/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onCreateLocationServicesAPI$2(Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 0

    invoke-interface {p0}, Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;->onConnectionFailed()V

    return-void
.end method


# virtual methods
.method public checkLocationSettings(Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/huawei/hms/location/LocationSettingsRequest$Builder;-><init>()V

    check-cast p1, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiLocationRequest;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiLocationRequest;->access$100(Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiLocationRequest;)Lcom/huawei/hms/location/LocationRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/huawei/hms/location/LocationRequest;)Lcom/huawei/hms/location/LocationSettingsRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider;->settingsClient:Lcom/huawei/hms/location/SettingsClient;

    invoke-virtual {p1}, Lcom/huawei/hms/location/LocationSettingsRequest$Builder;->build()Lcom/huawei/hms/location/LocationSettingsRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/location/SettingsClient;->checkLocationSettings(Lcom/huawei/hms/location/LocationSettingsRequest;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Consumer;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnCompleteListener(Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public checkServices()Z
    .locals 1

    sget-object v0, Lorg/telegram/messenger/HuaweiPushListenerProvider;->INSTANCE:Lorg/telegram/messenger/HuaweiPushListenerProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/HuaweiPushListenerProvider;->hasServices()Z

    move-result v0

    return v0
.end method

.method public getLastLocation(Landroidx/core/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider;->locationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    invoke-virtual {v0}, Lcom/huawei/hms/location/FusedLocationProviderClient;->getLastLocation()Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda2;-><init>(Landroidx/core/util/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/Task;->addOnCompleteListener(Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/huawei/hms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/huawei/hms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider;->locationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    new-instance v0, Lcom/huawei/hms/location/SettingsClient;

    invoke-direct {v0, p1}, Lcom/huawei/hms/location/SettingsClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider;->settingsClient:Lcom/huawei/hms/location/SettingsClient;

    return-void
.end method

.method public onCreateLocationRequest()Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiLocationRequest;

    invoke-static {}, Lcom/huawei/hms/location/LocationRequest;->create()Lcom/huawei/hms/location/LocationRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiLocationRequest;-><init>(Lcom/huawei/hms/location/LocationRequest;Lorg/telegram/messenger/HuaweiLocationProvider$1;)V

    return-object v0
.end method

.method public onCreateLocationServicesAPI(Landroid/content/Context;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;)Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;
    .locals 2

    new-instance p1, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiApiClientImpl;

    new-instance v0, Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/messenger/HuaweiLocationProvider$3;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/HuaweiLocationProvider$3;-><init>(Lorg/telegram/messenger/HuaweiLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->addConnectionCallbacks(Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;)Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lorg/telegram/messenger/HuaweiLocationProvider$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;)V

    invoke-virtual {p2, v0}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->addOnConnectionFailedListener(Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;)Lcom/huawei/hms/api/HuaweiApiClient$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/hms/api/HuaweiApiClient$Builder;->build()Lcom/huawei/hms/api/HuaweiApiClient;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiApiClientImpl;-><init>(Lcom/huawei/hms/api/HuaweiApiClient;Lorg/telegram/messenger/HuaweiLocationProvider$1;)V

    return-object p1
.end method

.method public removeLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider;->locationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    new-instance v1, Lorg/telegram/messenger/HuaweiLocationProvider$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/HuaweiLocationProvider$2;-><init>(Lorg/telegram/messenger/HuaweiLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/huawei/hms/location/LocationCallback;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public requestLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider;->locationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    check-cast p1, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiLocationRequest;

    invoke-static {p1}, Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiLocationRequest;->access$100(Lorg/telegram/messenger/HuaweiLocationProvider$HuaweiLocationRequest;)Lcom/huawei/hms/location/LocationRequest;

    move-result-object p1

    new-instance v1, Lorg/telegram/messenger/HuaweiLocationProvider$1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/HuaweiLocationProvider$1;-><init>(Lorg/telegram/messenger/HuaweiLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/huawei/hms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/huawei/hms/location/LocationRequest;Lcom/huawei/hms/location/LocationCallback;Landroid/os/Looper;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method
