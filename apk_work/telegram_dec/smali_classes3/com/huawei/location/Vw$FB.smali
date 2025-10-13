.class public Lcom/huawei/location/Vw$FB;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/location/Vw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FB"
.end annotation


# instance fields
.field public yn:Lcom/huawei/location/Vw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/huawei/location/Vw;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/huawei/location/Vw$FB;->yn:Lcom/huawei/location/Vw;

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .locals 2

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/huawei/location/Vw$FB;->yn:Lcom/huawei/location/Vw;

    if-nez v0, :cond_0

    const-string v0, "SdmLocationManager"

    const-string v1, "slmgr null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
