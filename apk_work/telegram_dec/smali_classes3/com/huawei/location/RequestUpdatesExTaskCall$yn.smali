.class Lcom/huawei/location/RequestUpdatesExTaskCall$yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/callback/oc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/RequestUpdatesExTaskCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/RequestUpdatesExTaskCall;


# direct methods
.method constructor <init>(Lcom/huawei/location/RequestUpdatesExTaskCall;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/RequestUpdatesExTaskCall$yn;->yn:Lcom/huawei/location/RequestUpdatesExTaskCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yn()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/huawei/location/RequestUpdatesExTaskCall$yn;->yn:Lcom/huawei/location/RequestUpdatesExTaskCall;

    new-instance v1, Lcom/huawei/location/router/RouterResponse;

    invoke-static {}, Lcom/huawei/location/lite/common/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesResponse;

    invoke-direct {v3}, Lcom/huawei/hms/support/api/entity/location/updates/RequestLocationUpdatesResponse;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/huawei/location/router/entity/StatusInfo;

    const/4 v4, 0x0

    const-string v5, "success"

    invoke-direct {v3, v4, v4, v5}, Lcom/huawei/location/router/entity/StatusInfo;-><init>(IILjava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/huawei/location/router/RouterResponse;-><init>(Ljava/lang/String;Lcom/huawei/location/router/entity/StatusInfo;)V

    invoke-virtual {v0, v1}, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->onComplete(Lcom/huawei/location/router/RouterResponse;)V

    return-void
.end method

.method public yn(Lcom/huawei/location/router/RouterResponse;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/huawei/location/RequestUpdatesExTaskCall$yn;->yn:Lcom/huawei/location/RequestUpdatesExTaskCall;

    invoke-virtual {v0, p1}, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->doExecute(Lcom/huawei/location/router/RouterResponse;)V

    return-void
.end method
