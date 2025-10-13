.class public Lcom/huawei/hms/locationSdk/d;
.super Lcom/huawei/hms/common/HuaweiApi;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/locationSdk/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/HuaweiApi<",
        "Lcom/huawei/hms/locationSdk/v;",
        ">;",
        "Lcom/huawei/hms/locationSdk/b;"
    }
.end annotation


# static fields
.field private static final b:Lcom/huawei/hms/locationSdk/c;

.field private static final c:Lcom/huawei/hms/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/api/Api<",
            "Lcom/huawei/hms/locationSdk/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/huawei/hms/locationSdk/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/huawei/hms/locationSdk/c;

    invoke-direct {v0}, Lcom/huawei/hms/locationSdk/c;-><init>()V

    sput-object v0, Lcom/huawei/hms/locationSdk/d;->b:Lcom/huawei/hms/locationSdk/c;

    new-instance v0, Lcom/huawei/hms/api/Api;

    const-string v1, "HmsLocation.API"

    invoke-direct {v0, v1}, Lcom/huawei/hms/api/Api;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/hms/locationSdk/d;->c:Lcom/huawei/hms/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/locationSdk/v;)V
    .locals 2

    .line 0
    sget-object v0, Lcom/huawei/hms/locationSdk/d;->c:Lcom/huawei/hms/api/Api;

    sget-object v1, Lcom/huawei/hms/locationSdk/d;->b:Lcom/huawei/hms/locationSdk/c;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/locationSdk/v;)V
    .locals 2

    .line 0
    sget-object v0, Lcom/huawei/hms/locationSdk/d;->c:Lcom/huawei/hms/api/Api;

    sget-object v1, Lcom/huawei/hms/locationSdk/d;->b:Lcom/huawei/hms/locationSdk/c;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const-string v2, "LocationArClientImpl"

    const/16 v3, 0x2a33

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/locationSdk/k1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.huawei.hms.permission.ACTIVITY_RECOGNITION"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/api/location/common/PermissionUtil;->isPermissionAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "requestActivityUpdates isPermissionAvailable is false "

    invoke-static {v2, p1, v0}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/api/location/common/PermissionUtil;->isPermissionAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "android Q requestActivityUpdates isPermissionAvailable is false "

    invoke-static {v2, p1, v0}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    invoke-static {v3}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1
.end method


# virtual methods
.method public a(JLandroid/app/PendingIntent;)Lcom/huawei/hmf/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/huawei/hmf/tasks/Task;"
        }
    .end annotation

    .line 0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createActivityIdentificationUpdates begin"

    const-string v2, "LocationArClientImpl"

    invoke-static {v2, v0, v1}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    if-eqz p3, :cond_1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/huawei/hms/locationSdk/d;->a(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-ltz v5, :cond_0

    new-instance v3, Lcom/huawei/hms/locationSdk/y;

    invoke-direct {v3}, Lcom/huawei/hms/locationSdk/y;-><init>()V

    invoke-virtual {v3, p3}, Lcom/huawei/hms/locationSdk/y;->a(Landroid/app/PendingIntent;)V

    invoke-virtual {v3, v0}, Lcom/huawei/hms/locationSdk/a0;->a(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "detectionIntervalMillis"

    invoke-virtual {v4, v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "locTransactionId"

    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "packageName"

    :try_start_1
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lcom/huawei/hms/locationSdk/y0;
    :try_end_1
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string p2, "location.requestActivityIdentificationUpdates"

    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, p2, v4, v3}, Lcom/huawei/hms/locationSdk/y0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/locationSdk/y;)V

    invoke-virtual {p1, p3}, Lcom/huawei/hms/common/internal/TaskApiCall;->setParcelable(Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1}, Lcom/huawei/hms/locationSdk/d;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    const/16 p3, 0x2a32

    invoke-static {p3}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, p3, v3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    const/16 p3, 0x2a31

    invoke-static {p3}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, p3, v3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1
    :try_end_2
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const-string p1, "createActivityIdentificationUpdates exception"

    invoke-static {v2, v0, p1}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    const/16 p3, 0x2710

    invoke-static {p3}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    :goto_0
    invoke-virtual {v1, p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    invoke-virtual {v1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createActivityIdentificationUpdates api exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v0, p2}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/app/PendingIntent;)Lcom/huawei/hmf/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/huawei/hmf/tasks/Task;"
        }
    .end annotation

    .line 0
    new-instance v0, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;

    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;->getTid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteActivityIdentificationUpdates begin"

    const-string v3, "LocationArClientImpl"

    invoke-static {v3, v1, v2}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v4, Lcom/huawei/hms/locationSdk/y;

    invoke-direct {v4}, Lcom/huawei/hms/locationSdk/y;-><init>()V

    invoke-virtual {v4, p1}, Lcom/huawei/hms/locationSdk/y;->a(Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/huawei/hms/locationSdk/z;->b()Lcom/huawei/hms/locationSdk/z;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/huawei/hms/locationSdk/b0;->b(Lcom/huawei/hms/locationSdk/a0;)Lcom/huawei/hms/locationSdk/a0;

    move-result-object v5

    check-cast v5, Lcom/huawei/hms/locationSdk/y;

    if-eqz v5, :cond_0

    const-string v6, "deleteActivityIdentificationUpdates cannot find cache"

    invoke-static {v3, v1, v6}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/huawei/hms/locationSdk/a0;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;->setTid(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/huawei/hms/locationSdk/a0;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/hms/utils/JsonUtil;->createJsonString(Lcom/huawei/hms/core/aidl/IMessageEntity;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/huawei/hms/locationSdk/u0;

    const-string v6, "location.removeActivityIdentificationUpdates"

    invoke-direct {v5, v6, v0, v4}, Lcom/huawei/hms/locationSdk/u0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/locationSdk/y;)V

    invoke-virtual {v5, p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->setParcelable(Landroid/os/Parcelable;)V

    invoke-virtual {p0, v5}, Lcom/huawei/hms/locationSdk/d;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v4, 0x2a31

    invoke-static {v4}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1
    :try_end_0
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    const-string p1, "deleteActivityIdentificationUpdates exception"

    invoke-static {v3, v1, p1}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v1, 0x2710

    invoke-static {v1}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    :goto_1
    invoke-virtual {v2, p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    invoke-virtual {v2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteActivityIdentificationUpdates api exception:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/huawei/hms/location/ActivityConversionRequest;Landroid/app/PendingIntent;)Lcom/huawei/hmf/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/location/ActivityConversionRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/huawei/hmf/tasks/Task;"
        }
    .end annotation

    .line 0
    new-instance v0, Lcom/huawei/hms/support/api/entity/location/activityrecognition/RequestActivityConversionRequest;

    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/entity/location/activityrecognition/RequestActivityConversionRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;->getTid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createActivityConversionUpdates begin"

    const-string v3, "LocationArClientImpl"

    invoke-static {v3, v1, v2}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    :try_start_0
    invoke-direct {p0, v1}, Lcom/huawei/hms/locationSdk/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hms/location/ActivityConversionRequest;->getActivityConversions()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hms/support/api/location/common/CollectionsUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hms/location/ActivityConversionInfo;

    invoke-virtual {v5}, Lcom/huawei/hms/location/ActivityConversionInfo;->getConversionType()I

    move-result v6

    invoke-virtual {v5}, Lcom/huawei/hms/location/ActivityConversionInfo;->getActivityType()I

    move-result v5

    const/16 v7, 0x2a32

    if-eqz v6, :cond_1

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    invoke-static {v7}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v7, v0}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/huawei/hms/location/ActivityIdentificationData;->isValidType(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    invoke-static {v7}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v7, v0}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1

    :cond_3
    new-instance v4, Lcom/huawei/hms/locationSdk/w;

    invoke-direct {v4}, Lcom/huawei/hms/locationSdk/w;-><init>()V

    invoke-virtual {v4, p2}, Lcom/huawei/hms/locationSdk/w;->a(Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v1}, Lcom/huawei/hms/locationSdk/a0;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hms/location/ActivityConversionRequest;->getActivityConversions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/api/entity/location/activityrecognition/RequestActivityConversionRequest;->setActivityConversions(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/locationSdk/k1;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/huawei/hms/utils/JsonUtil;->createJsonString(Lcom/huawei/hms/core/aidl/IMessageEntity;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/huawei/location/lite/common/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance v0, Lcom/huawei/hms/locationSdk/x0;

    const-string v5, "location.requestActivityConversionUpdates"

    invoke-direct {v0, v5, p1, v4}, Lcom/huawei/hms/locationSdk/x0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/locationSdk/w;)V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/common/internal/TaskApiCall;->setParcelable(Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Lcom/huawei/hms/locationSdk/d;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    const/16 v0, 0x2a31

    invoke-static {v0}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v0, v4}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1
    :try_end_0
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    const-string p1, "createActivityConversionUpdates exception"

    invoke-static {v3, v1, p1}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    :goto_3
    invoke-virtual {v2, p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    invoke-virtual {v2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :goto_4
    const-string p2, "createActivityConversionUpdates api exception"

    invoke-static {v3, v1, p2}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public b(Landroid/app/PendingIntent;)Lcom/huawei/hmf/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/huawei/hmf/tasks/Task;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;

    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;->getTid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteActivityConversionUpdates begin"

    const-string v3, "LocationArClientImpl"

    invoke-static {v3, v1, v2}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v4, Lcom/huawei/hms/locationSdk/w;

    invoke-direct {v4}, Lcom/huawei/hms/locationSdk/w;-><init>()V

    invoke-virtual {v4, p1}, Lcom/huawei/hms/locationSdk/w;->a(Landroid/app/PendingIntent;)V

    invoke-static {}, Lcom/huawei/hms/locationSdk/x;->b()Lcom/huawei/hms/locationSdk/x;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/huawei/hms/locationSdk/b0;->b(Lcom/huawei/hms/locationSdk/a0;)Lcom/huawei/hms/locationSdk/a0;

    move-result-object v5

    check-cast v5, Lcom/huawei/hms/locationSdk/w;

    if-eqz v5, :cond_0

    const-string v6, "deleteActivityConversionUpdates cannot find cache"

    invoke-static {v3, v1, v6}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/huawei/hms/locationSdk/a0;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;->setTid(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/huawei/hms/locationSdk/a0;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/hms/utils/JsonUtil;->createJsonString(Lcom/huawei/hms/core/aidl/IMessageEntity;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/huawei/hms/locationSdk/t0;

    const-string v6, "location.removeActivityConversionUpdates"

    invoke-direct {v5, v6, v0, v4}, Lcom/huawei/hms/locationSdk/t0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/locationSdk/w;)V

    invoke-virtual {v5, p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->setParcelable(Landroid/os/Parcelable;)V

    invoke-virtual {p0, v5}, Lcom/huawei/hms/locationSdk/d;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v4, 0x2a31

    invoke-static {v4}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1
    :try_end_0
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    const-string p1, "deleteActivityConversionUpdates exception"

    invoke-static {v3, v1, p1}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/huawei/hms/common/ApiException;

    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v1, 0x2710

    invoke-static {v1}, Lcom/huawei/hms/support/api/location/common/exception/LocationStatusCode;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    :goto_1
    invoke-virtual {v2, p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    invoke-virtual {v2}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteActivityConversionUpdates api exception:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "TClient::",
            "Lcom/huawei/hms/common/internal/AnyClient;",
            ">(",
            "Lcom/huawei/hms/common/internal/TaskApiCall<",
            "TTClient;TTResult;>;)",
            "Lcom/huawei/hmf/tasks/Task;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/locationSdk/d;->a:Lcom/huawei/hms/locationSdk/g1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/locationSdk/k1;

    invoke-direct {v1}, Lcom/huawei/hms/locationSdk/k1;-><init>()V

    invoke-static {v0, v1}, Lcom/huawei/hms/locationSdk/j1;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/huawei/hms/locationSdk/g1;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/huawei/hms/locationSdk/g1;

    iput-object v0, p0, Lcom/huawei/hms/locationSdk/d;->a:Lcom/huawei/hms/locationSdk/g1;

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/locationSdk/k1;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/locationSdk/d;->a:Lcom/huawei/hms/locationSdk/g1;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/huawei/hms/locationSdk/d;->b:Lcom/huawei/hms/locationSdk/c;

    invoke-interface {v0, p0, p1, v1}, Lcom/huawei/hms/locationSdk/g1;->a(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hms/common/internal/TaskApiCall;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getKitSdkVersion()I
    .locals 1

    const v0, 0x399a2ac

    return v0
.end method
