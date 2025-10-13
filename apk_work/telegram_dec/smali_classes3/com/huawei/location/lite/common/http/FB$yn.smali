.class Lcom/huawei/location/lite/common/http/FB$yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/lite/common/http/FB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yn:Lcom/huawei/location/lite/common/http/FB;


# direct methods
.method constructor <init>(Lcom/huawei/location/lite/common/http/FB;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/lite/common/http/FB$yn;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/huawei/location/lite/common/http/FB$yn;->yn:Lcom/huawei/location/lite/common/http/FB;

    sget v0, Lcom/huawei/location/lite/common/http/LW$yn;->$r8$clinit:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.huawei.location.lite.common.http.IHttpService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/location/lite/common/http/LW;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/huawei/location/lite/common/http/LW;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/huawei/location/lite/common/http/LW$yn$yn;

    invoke-direct {v0, p2}, Lcom/huawei/location/lite/common/http/LW$yn$yn;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/http/FB;->yn(Lcom/huawei/location/lite/common/http/FB;Lcom/huawei/location/lite/common/http/LW;)Lcom/huawei/location/lite/common/http/LW;

    iget-object p1, p0, Lcom/huawei/location/lite/common/http/FB$yn;->yn:Lcom/huawei/location/lite/common/http/FB;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/huawei/location/lite/common/http/FB;->yn(Lcom/huawei/location/lite/common/http/FB;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "iBinder:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/location/lite/common/http/FB$yn;->yn:Lcom/huawei/location/lite/common/http/FB;

    invoke-static {p2}, Lcom/huawei/location/lite/common/http/FB;->yn(Lcom/huawei/location/lite/common/http/FB;)Lcom/huawei/location/lite/common/http/LW;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpServiceManager"

    invoke-static {p2, p1}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "HttpServiceManager"

    const-string v0, "unbind"

    invoke-static {p1, v0}, Lcom/huawei/location/lite/common/log/LogConsole;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/location/lite/common/http/FB$yn;->yn:Lcom/huawei/location/lite/common/http/FB;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/location/lite/common/http/FB;->yn(Lcom/huawei/location/lite/common/http/FB;Z)V

    return-void
.end method
