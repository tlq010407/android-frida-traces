.class public Lcom/huawei/location/Vw$yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/location/Vw;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Looper;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic yn:Lcom/huawei/location/Vw;


# direct methods
.method public constructor <init>(Lcom/huawei/location/Vw;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/location/Vw$yn;->yn:Lcom/huawei/location/Vw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SdmLocationManager"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huawei/location/Vw$yn;->yn:Lcom/huawei/location/Vw;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/huawei/location/Vw;->dC:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/huawei/location/Vw$yn;->yn:Lcom/huawei/location/Vw;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/huawei/location/Vw;->yn(Lcom/huawei/location/Vw;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SdmLocationManager"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/huawei/location/Vw$yn;->yn:Lcom/huawei/location/Vw;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/huawei/location/Vw;->dC:Landroid/os/Messenger;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/location/Vw;->yn(Lcom/huawei/location/Vw;Z)Z

    return-void
.end method
