.class Lcom/huawei/location/crowdsourcing/Vw$FB;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/crowdsourcing/Vw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FB"
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/crowdsourcing/Vw;


# direct methods
.method constructor <init>(Lcom/huawei/location/crowdsourcing/Vw;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/crowdsourcing/Vw$FB;->yn:Lcom/huawei/location/crowdsourcing/Vw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "Crowdsourcing"

    if-ne v0, v1, :cond_1

    const-string v0, "handleMessage: LOCATION_CHANGED"

    invoke-static {v2, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/location/Location;

    if-nez v0, :cond_0

    const-string p1, "handleMessage not location obj"

    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/location/crowdsourcing/Vw$FB;->yn:Lcom/huawei/location/crowdsourcing/Vw;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/huawei/location/crowdsourcing/Vw;->yn(Lcom/huawei/location/crowdsourcing/Vw;Landroid/location/Location;)V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_3

    const-string p1, "begin init"

    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/location/crowdsourcing/Vw$FB;->yn:Lcom/huawei/location/crowdsourcing/Vw;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/location/crowdsourcing/Vw;->yn(Lcom/huawei/location/crowdsourcing/Vw;Landroid/os/Looper;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "init finished"

    :goto_0
    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "init failed"

    :goto_1
    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/location/crowdsourcing/Vw$FB;->yn:Lcom/huawei/location/crowdsourcing/Vw;

    invoke-static {p1}, Lcom/huawei/location/crowdsourcing/Vw;->yn(Lcom/huawei/location/crowdsourcing/Vw;)V

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quitSafely()V

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Config$FB;->yn()Lcom/huawei/location/crowdsourcing/Config;

    move-result-object p1

    invoke-static {}, Lcom/huawei/location/crowdsourcing/Vw;->Vw()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/location/crowdsourcing/common/util/dC;->Vw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/location/crowdsourcing/Config;->yn(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "check mcc success"

    goto :goto_0

    :cond_4
    const-string p1, "check mcc failed"

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
