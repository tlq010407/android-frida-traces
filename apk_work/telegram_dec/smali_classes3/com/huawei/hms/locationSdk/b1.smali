.class public Lcom/huawei/hms/locationSdk/b1;
.super Lcom/huawei/hms/locationSdk/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/locationSdk/i0<",
        "Lcom/huawei/hms/locationSdk/r;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/huawei/hms/locationSdk/d0;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/locationSdk/d0;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/huawei/hms/locationSdk/i0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    if-eqz p5, :cond_0

    new-instance p1, Lcom/huawei/hms/locationSdk/b1$a;

    invoke-direct {p1, p0, p5}, Lcom/huawei/hms/locationSdk/b1$a;-><init>(Lcom/huawei/hms/locationSdk/b1;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/huawei/hms/locationSdk/b1;->c:Landroid/os/Handler;

    return-void

    :cond_0
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    const/16 p3, 0x2a31

    invoke-static {p3}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnResultMessage code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestLocationUpdatesTaskApiCall"

    invoke-static {v2, v0, v1}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/huawei/hms/location/LocationAvailability;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/huawei/hms/location/LocationAvailability;

    iget-object v0, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocationStatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/location/LocationAvailability;->getLocationStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {v0}, Lcom/huawei/hms/locationSdk/d0;->c()Lcom/huawei/hms/location/LocationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/location/LocationCallback;->onLocationAvailability(Lcom/huawei/hms/location/LocationAvailability;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/huawei/hms/location/LocationResult;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/huawei/hms/location/LocationResult;

    iget-object v0, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {v0}, Lcom/huawei/hms/locationSdk/d0;->c()Lcom/huawei/hms/location/LocationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/location/LocationCallback;->onLocationResult(Lcom/huawei/hms/location/LocationResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    const-string v0, "handleOnResultMessage exception"

    invoke-static {v2, p1, v0}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/locationSdk/b1;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/hms/locationSdk/b1;->a(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/huawei/hms/locationSdk/r;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/locationSdk/r;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lcom/huawei/hmf/tasks/TaskCompletionSource;",
            ")V"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    const-string v1, "doExecute"

    const-string v2, "RequestLocationUpdatesTaskApiCall"

    invoke-static {v2, v0, v1}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2710

    if-eqz p2, :cond_8

    :try_start_0
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/locationSdk/c0;->b()Lcom/huawei/hms/locationSdk/c0;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {v4, v5}, Lcom/huawei/hms/locationSdk/b0;->b(Lcom/huawei/hms/locationSdk/a0;)Lcom/huawei/hms/locationSdk/a0;

    move-result-object v4

    check-cast v4, Lcom/huawei/hms/locationSdk/d0;

    iput-object v4, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/huawei/hms/locationSdk/d0;->d()Lcom/huawei/hms/location/LocationRequest;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {v4}, Lcom/huawei/hms/locationSdk/d0;->c()Lcom/huawei/hms/location/LocationCallback;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v4, "locationResult"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object p2, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    const-string p3, "doExecute onLocationResult"

    invoke-static {v2, p2, p3}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/hms/support/api/location/common/LocationJsonUtil;->parseLocationResultFromJsonObject(Lorg/json/JSONObject;)Lcom/huawei/hms/location/LocationResult;

    move-result-object p2

    iget-object p3, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {p3}, Lcom/huawei/hms/locationSdk/d0;->g()I

    move-result p3

    invoke-virtual {p2}, Lcom/huawei/hms/location/LocationResult;->getLocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modify numUpdates with callback, numUpdates:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , locationSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_3

    if-ge p3, v1, :cond_1

    goto :goto_1

    :cond_1
    if-ne p3, v1, :cond_2

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/huawei/hms/locationSdk/a;->b(Landroid/content/Context;Lcom/huawei/hms/locationSdk/v;)Lcom/huawei/hms/locationSdk/e;

    move-result-object p1

    iget-object v3, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {v3}, Lcom/huawei/hms/locationSdk/d0;->c()Lcom/huawei/hms/location/LocationCallback;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/huawei/hms/locationSdk/e;->a(Lcom/huawei/hms/location/LocationCallback;)Lcom/huawei/hmf/tasks/Task;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    const-string v3, "numUpdates greater than locationSize"

    invoke-static {v2, p1, v3}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v3, 0x1

    iput v3, p1, Landroid/os/Message;->what:I

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/huawei/hms/locationSdk/b1;->c:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/huawei/hms/locationSdk/g0;->a(Ljava/lang/String;Lcom/huawei/hms/location/LocationResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/huawei/hms/locationSdk/g0;->b()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/log/logwrite/LogWriteApi;->printLocationInfo(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/huawei/hms/locationSdk/c0;->b()Lcom/huawei/hms/locationSdk/c0;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    sub-int/2addr p3, v1

    invoke-virtual {p1, p2, p3}, Lcom/huawei/hms/locationSdk/c0;->a(Lcom/huawei/hms/locationSdk/d0;I)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/huawei/hms/locationSdk/a;->b(Landroid/content/Context;Lcom/huawei/hms/locationSdk/v;)Lcom/huawei/hms/locationSdk/e;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {p2}, Lcom/huawei/hms/locationSdk/d0;->c()Lcom/huawei/hms/location/LocationCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/huawei/hms/locationSdk/e;->a(Lcom/huawei/hms/location/LocationCallback;)Lcom/huawei/hmf/tasks/Task;

    return-void

    :cond_4
    const-string p1, "locationAvailability"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p3}, Lcom/huawei/hms/support/api/location/common/LocationJsonUtil;->parseLocationAvailabilityFromString(Ljava/lang/String;)Lcom/huawei/hms/location/LocationAvailability;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    const-string p3, "doExecute onLocationAvailability"

    invoke-static {v2, p2, p3}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 p3, 0x2

    iput p3, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/locationSdk/b1;->c:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    const-string p2, "INTERNAL_ERROR : doExecute requestLocationUpdatesCache is null"

    invoke-static {v2, p1, p2}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-static {}, Lcom/huawei/hms/locationSdk/c0;->b()Lcom/huawei/hms/locationSdk/c0;

    move-result-object p1

    iget-object p3, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {p1, p3}, Lcom/huawei/hms/locationSdk/b0;->c(Lcom/huawei/hms/locationSdk/a0;)Z

    :cond_7
    invoke-static {}, Lcom/huawei/hms/support/api/location/common/exception/ServiceErrorCodeAdaptor;->getInstance()Lcom/huawei/hms/support/api/location/common/exception/ServiceErrorCodeAdaptor;

    move-result-object p1

    invoke-virtual {p1, p4, p2, v3}, Lcom/huawei/hms/support/api/location/common/exception/ServiceErrorCodeAdaptor;->setTaskByServiceErrorCode(Lcom/huawei/hmf/tasks/TaskCompletionSource;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/huawei/hms/locationSdk/c0;->b()Lcom/huawei/hms/locationSdk/c0;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {p1, p2}, Lcom/huawei/hms/locationSdk/b0;->c(Lcom/huawei/hms/locationSdk/a0;)Z

    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    invoke-static {v0}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1
    :try_end_0
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    invoke-static {}, Lcom/huawei/hms/locationSdk/c0;->b()Lcom/huawei/hms/locationSdk/c0;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {p1, p2}, Lcom/huawei/hms/locationSdk/b0;->c(Lcom/huawei/hms/locationSdk/a0;)Z

    iget-object p1, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    const-string p2, "request location doExecute exception"

    invoke-static {v2, p1, p2}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    invoke-static {v0}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    :goto_3
    invoke-virtual {p4, p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_5

    :goto_4
    invoke-static {}, Lcom/huawei/hms/locationSdk/c0;->b()Lcom/huawei/hms/locationSdk/c0;

    move-result-object p2

    iget-object p3, p0, Lcom/huawei/hms/locationSdk/b1;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {p2, p3}, Lcom/huawei/hms/locationSdk/b0;->c(Lcom/huawei/hms/locationSdk/a0;)Z

    iget-object p2, p0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request location doExecute exception:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p2, p3}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_5
    return-void
.end method

.method protected bridge synthetic doExecute(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .locals 0

    check-cast p1, Lcom/huawei/hms/locationSdk/r;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/hms/locationSdk/b1;->a(Lcom/huawei/hms/locationSdk/r;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public getMinApkVersion()I
    .locals 1

    const v0, 0x2625a00

    return v0
.end method
