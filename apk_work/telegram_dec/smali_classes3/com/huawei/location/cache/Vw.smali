.class public Lcom/huawei/location/cache/Vw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Vw:Lcom/huawei/location/callback/d2;

.field private yn:Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/location/cache/Vw;->yn:Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    return-void
.end method


# virtual methods
.method public E5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/cache/Vw;->yn:Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/location/common/LocationBaseRequest;->getTid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FB()I
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/cache/Vw;->yn:Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;->getLocationRequest()Lcom/huawei/hms/location/LocationRequest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/location/LocationRequest;->getPriority()I

    move-result v0

    return v0
.end method

.method public LW()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/huawei/location/cache/Vw;->yn:Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;->getLocationRequest()Lcom/huawei/hms/location/LocationRequest;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/location/LocationRequest;->getPriority()I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_4

    const/16 v2, 0x66

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x68

    if-eq v0, v2, :cond_3

    const/16 v2, 0x69

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "passive"

    goto :goto_0

    :cond_2
    const-string v1, "gps"

    goto :goto_0

    :cond_3
    const-string v1, "network"

    goto :goto_0

    :cond_4
    const-string v1, "fused"

    :goto_0
    return-object v1
.end method

.method public Vw()Lcom/huawei/hms/location/LocationRequest;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/cache/Vw;->yn:Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;->getLocationRequest()Lcom/huawei/hms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public d2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/cache/Vw;->yn:Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dC()Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/cache/Vw;->yn:Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesRequest;

    return-object v0
.end method

.method public yn()Lcom/huawei/location/callback/d2;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/cache/Vw;->Vw:Lcom/huawei/location/callback/d2;

    return-object v0
.end method

.method public yn(Lcom/huawei/location/callback/d2;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/cache/Vw;->Vw:Lcom/huawei/location/callback/d2;

    return-void
.end method
