.class public Lcom/huawei/location/resp/FB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Vw:Lcom/huawei/hms/location/LocationSettingsStates;

.field private yn:Lcom/huawei/hms/support/api/client/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vw()Lcom/huawei/hms/support/api/client/Status;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/resp/FB;->yn:Lcom/huawei/hms/support/api/client/Status;

    return-object v0
.end method

.method public yn()Lcom/huawei/hms/location/LocationSettingsStates;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/resp/FB;->Vw:Lcom/huawei/hms/location/LocationSettingsStates;

    return-object v0
.end method

.method public yn(Lcom/huawei/hms/location/LocationSettingsStates;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/resp/FB;->Vw:Lcom/huawei/hms/location/LocationSettingsStates;

    return-void
.end method

.method public yn(Lcom/huawei/hms/support/api/client/Status;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/location/resp/FB;->yn:Lcom/huawei/hms/support/api/client/Status;

    return-void
.end method
