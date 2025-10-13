.class Lcom/huawei/location/lite/common/http/FB$LW;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/FB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LW"
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/lite/common/http/FB;


# direct methods
.method constructor <init>(Lcom/huawei/location/lite/common/http/FB;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/FB$LW;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v0, "HttpServiceManager"

    if-nez p1, :cond_0

    const-string p1, "msg is null"

    invoke-static {v0, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg what value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/location/lite/common/log/LogConsole;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x63

    if-eq p1, v0, :cond_3

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/huawei/location/lite/common/http/FB$LW;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/FB;->LW(Lcom/huawei/location/lite/common/http/FB;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/huawei/location/lite/common/http/FB$LW;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/FB;->FB(Lcom/huawei/location/lite/common/http/FB;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/huawei/location/lite/common/http/FB$LW;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-static {p1}, Lcom/huawei/location/lite/common/http/FB;->dC(Lcom/huawei/location/lite/common/http/FB;)V

    :goto_0
    return-void
.end method
