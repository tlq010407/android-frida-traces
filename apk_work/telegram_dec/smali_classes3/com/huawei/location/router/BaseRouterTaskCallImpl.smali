.class public abstract Lcom/huawei/location/router/BaseRouterTaskCallImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/router/interfaces/IRouterRequest;
.implements Lcom/huawei/location/router/interfaces/IRouterCallback;


# instance fields
.field private routerRequest:Lcom/huawei/location/router/entity/RouterRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agcFail()Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->routerRequest:Lcom/huawei/location/router/entity/RouterRequest;

    invoke-virtual {v0}, Lcom/huawei/location/router/entity/RouterRequest;->isAgcFail()Z

    move-result v0

    return v0
.end method

.method public doExecute(Lcom/huawei/location/router/RouterResponse;)V
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->getRouterCallback()Lcom/huawei/location/router/interfaces/IRouterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/location/router/RouterResponse;->setTransactionId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->getRouterCallback()Lcom/huawei/location/router/interfaces/IRouterCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/location/router/interfaces/IRouterCallback;->doExecute(Lcom/huawei/location/router/RouterResponse;)V

    :cond_0
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->routerRequest:Lcom/huawei/location/router/entity/RouterRequest;

    invoke-virtual {v0}, Lcom/huawei/location/router/entity/RouterRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParcelable()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->routerRequest:Lcom/huawei/location/router/entity/RouterRequest;

    invoke-virtual {v0}, Lcom/huawei/location/router/entity/RouterRequest;->getParcelable()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRequestJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->routerRequest:Lcom/huawei/location/router/entity/RouterRequest;

    invoke-virtual {v0}, Lcom/huawei/location/router/entity/RouterRequest;->getRequestJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRouterCallback()Lcom/huawei/location/router/interfaces/IRouterCallback;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->routerRequest:Lcom/huawei/location/router/entity/RouterRequest;

    invoke-virtual {v0}, Lcom/huawei/location/router/entity/RouterRequest;->getRouterCallback()Lcom/huawei/location/router/interfaces/IRouterCallback;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->routerRequest:Lcom/huawei/location/router/entity/RouterRequest;

    invoke-virtual {v0}, Lcom/huawei/location/router/entity/RouterRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onComplete(Lcom/huawei/location/router/RouterResponse;)V
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->getRouterCallback()Lcom/huawei/location/router/interfaces/IRouterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/location/router/RouterResponse;->setTransactionId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->getRouterCallback()Lcom/huawei/location/router/interfaces/IRouterCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/location/router/interfaces/IRouterCallback;->onComplete(Lcom/huawei/location/router/RouterResponse;)V

    :cond_0
    return-void
.end method

.method public onExecute(Ljava/lang/String;)Lcom/huawei/location/router/entity/IRouterResponse;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setRouterRequest(Lcom/huawei/location/router/entity/RouterRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/router/BaseRouterTaskCallImpl;->routerRequest:Lcom/huawei/location/router/entity/RouterRequest;

    return-void
.end method
