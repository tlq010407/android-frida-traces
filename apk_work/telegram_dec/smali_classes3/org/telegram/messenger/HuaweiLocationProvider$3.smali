.class Lorg/telegram/messenger/HuaweiLocationProvider$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/HuaweiLocationProvider;->onCreateLocationServicesAPI(Landroid/content/Context;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;Lorg/telegram/messenger/ILocationServiceProvider$IAPIOnConnectionFailedListener;)Lorg/telegram/messenger/ILocationServiceProvider$IMapApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/HuaweiLocationProvider;

.field final synthetic val$connectionCallbacks:Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/HuaweiLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiLocationProvider$3;->this$0:Lorg/telegram/messenger/HuaweiLocationProvider;

    iput-object p2, p0, Lorg/telegram/messenger/HuaweiLocationProvider$3;->val$connectionCallbacks:Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider$3;->val$connectionCallbacks:Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider$3;->val$connectionCallbacks:Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/ILocationServiceProvider$IAPIConnectionCallbacks;->onConnectionSuspended(I)V

    return-void
.end method
