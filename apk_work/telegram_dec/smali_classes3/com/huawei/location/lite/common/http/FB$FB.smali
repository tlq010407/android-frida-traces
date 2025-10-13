.class Lcom/huawei/location/lite/common/http/FB$FB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/FB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FB"
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/lite/common/http/FB;


# direct methods
.method constructor <init>(Lcom/huawei/location/lite/common/http/FB;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/FB$FB;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "HttpServiceManager"

    const-string v1, "the http Service has died !"

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB$FB;->yn:Lcom/huawei/location/lite/common/http/FB;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/http/FB;->yn(Lcom/huawei/location/lite/common/http/FB;Z)V

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB$FB;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/FB;->yn(Lcom/huawei/location/lite/common/http/FB;)Lcom/huawei/location/lite/common/http/LW;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB$FB;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/FB;->yn(Lcom/huawei/location/lite/common/http/FB;)Lcom/huawei/location/lite/common/http/LW;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/location/lite/common/http/FB$FB;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-static {v0}, Lcom/huawei/location/lite/common/http/FB;->yn(Lcom/huawei/location/lite/common/http/FB;)Lcom/huawei/location/lite/common/http/LW;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/location/lite/common/http/FB$FB;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-static {v2}, Lcom/huawei/location/lite/common/http/FB;->Vw(Lcom/huawei/location/lite/common/http/FB;)Lcom/huawei/location/lite/common/http/FB$FB;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method
