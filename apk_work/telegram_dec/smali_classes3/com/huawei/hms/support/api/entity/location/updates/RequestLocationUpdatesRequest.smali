.class public Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;
.super Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;
.source "SourceFile"


# instance fields
.field private locationRequest:Lcom/huawei/hms/location/LocationRequest;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getLocationRequest()Lcom/huawei/hms/location/LocationRequest;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;->locationRequest:Lcom/huawei/hms/location/LocationRequest;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setLocationRequest(Lcom/huawei/hms/location/LocationRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;->locationRequest:Lcom/huawei/hms/location/LocationRequest;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;->uuid:Ljava/lang/String;

    return-void
.end method
