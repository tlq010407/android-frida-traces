.class Lcom/huawei/location/nlp/scan/E5$yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/location/nlp/scan/wifi/FB$yn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/nlp/scan/E5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/nlp/scan/E5;


# direct methods
.method constructor <init>(Lcom/huawei/location/nlp/scan/E5;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/nlp/scan/E5$yn;->yn:Lcom/huawei/location/nlp/scan/E5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wifi scan fail, code is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiAndCell"

    invoke-static {p2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/location/nlp/scan/E5$yn;->yn:Lcom/huawei/location/nlp/scan/E5;

    invoke-static {p1}, Lcom/huawei/location/nlp/scan/E5;->yn(Lcom/huawei/location/nlp/scan/E5;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/huawei/location/nlp/scan/E5$yn;->yn:Lcom/huawei/location/nlp/scan/E5;

    invoke-static {p1}, Lcom/huawei/location/nlp/scan/E5;->yn(Lcom/huawei/location/nlp/scan/E5;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/huawei/location/nlp/scan/E5$yn;->yn:Lcom/huawei/location/nlp/scan/E5;

    invoke-static {p1}, Lcom/huawei/location/nlp/scan/E5;->yn(Lcom/huawei/location/nlp/scan/E5;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public yn(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "WifiAndCell"

    if-eqz v0, :cond_0

    const-string p1, "wifi scan success, scanResultList is empty"

    invoke-static {v1, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi scan success, scanResultList size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/location/nlp/scan/E5$yn;->yn:Lcom/huawei/location/nlp/scan/E5;

    invoke-static {v0, p1}, Lcom/huawei/location/nlp/scan/E5;->yn(Lcom/huawei/location/nlp/scan/E5;Ljava/util/List;)V

    return-void
.end method
