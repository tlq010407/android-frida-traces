.class public Lcom/huawei/hms/location/GeofenceService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private locationClient:Lcom/huawei/hms/locationSdk/n;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/hms/locationSdk/a;->d(Landroid/app/Activity;Lcom/huawei/hms/locationSdk/v;)Lcom/huawei/hms/locationSdk/n;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/location/GeofenceService;->locationClient:Lcom/huawei/hms/locationSdk/n;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/hms/locationSdk/a;->d(Landroid/content/Context;Lcom/huawei/hms/locationSdk/v;)Lcom/huawei/hms/locationSdk/n;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/location/GeofenceService;->locationClient:Lcom/huawei/hms/locationSdk/n;

    return-void
.end method


# virtual methods
.method public createGeofenceList(Lcom/huawei/hms/location/GeofenceRequest;Landroid/app/PendingIntent;)Lcom/huawei/hmf/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/location/GeofenceRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/huawei/hmf/tasks/Task;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/location/GeofenceService;->locationClient:Lcom/huawei/hms/locationSdk/n;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/locationSdk/n;->a(Lcom/huawei/hms/location/GeofenceRequest;Landroid/app/PendingIntent;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public deleteGeofenceList(Landroid/app/PendingIntent;)Lcom/huawei/hmf/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/huawei/hmf/tasks/Task;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/huawei/hms/location/GeofenceService;->locationClient:Lcom/huawei/hms/locationSdk/n;

    invoke-interface {v0, p1}, Lcom/huawei/hms/locationSdk/n;->a(Landroid/app/PendingIntent;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public deleteGeofenceList(Ljava/util/List;)Lcom/huawei/hmf/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/hmf/tasks/Task;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/huawei/hms/location/GeofenceService;->locationClient:Lcom/huawei/hms/locationSdk/n;

    invoke-interface {v0, p1}, Lcom/huawei/hms/locationSdk/n;->a(Ljava/util/List;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method
