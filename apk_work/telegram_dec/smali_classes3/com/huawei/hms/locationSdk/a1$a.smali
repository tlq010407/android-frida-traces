.class Lcom/huawei/hms/locationSdk/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/locationSdk/a1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/locationSdk/a1;


# direct methods
.method constructor <init>(Lcom/huawei/hms/locationSdk/a1;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/locationSdk/a1$a;->a:Lcom/huawei/hms/locationSdk/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/locationSdk/a1$a;->a:Lcom/huawei/hms/locationSdk/a1;

    iget-object v0, v0, Lcom/huawei/hms/locationSdk/i0;->a:Ljava/lang/String;

    const-string v1, "RequestLocationExVdrUpdatesTaskApiCall"

    const-string v2, "new thread to judge vdr config"

    invoke-static {v1, v0, v2}, Lcom/huawei/hms/support/api/location/common/HMSLocationLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/location/vdr/control/VDRControl;

    invoke-direct {v0}, Lcom/huawei/location/vdr/control/VDRControl;-><init>()V

    iget-object v1, p0, Lcom/huawei/hms/locationSdk/a1$a;->a:Lcom/huawei/hms/locationSdk/a1;

    invoke-static {v1}, Lcom/huawei/hms/locationSdk/a1;->a(Lcom/huawei/hms/locationSdk/a1;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/location/vdr/control/VDRControl;->isSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/locationSdk/a1$a;->a:Lcom/huawei/hms/locationSdk/a1;

    new-instance v1, Lcom/huawei/location/vdr/VdrManager;

    invoke-direct {v1}, Lcom/huawei/location/vdr/VdrManager;-><init>()V

    invoke-static {v0, v1}, Lcom/huawei/hms/locationSdk/a1;->a(Lcom/huawei/hms/locationSdk/a1;Lcom/huawei/location/vdr/VdrManager;)Lcom/huawei/location/vdr/VdrManager;

    iget-object v0, p0, Lcom/huawei/hms/locationSdk/a1$a;->a:Lcom/huawei/hms/locationSdk/a1;

    invoke-static {v0}, Lcom/huawei/hms/locationSdk/a1;->b(Lcom/huawei/hms/locationSdk/a1;)Lcom/huawei/location/vdr/VdrManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/locationSdk/a1$a;->a:Lcom/huawei/hms/locationSdk/a1;

    invoke-virtual {v0, v1}, Lcom/huawei/location/vdr/VdrManager;->registerVdrLocationLis(Lcom/huawei/location/vdr/listener/IVdrLocationListener;)V

    invoke-static {}, Lcom/huawei/hms/locationSdk/f0;->b()Lcom/huawei/hms/locationSdk/f0;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/locationSdk/e0;

    iget-object v2, p0, Lcom/huawei/hms/locationSdk/a1$a;->a:Lcom/huawei/hms/locationSdk/a1;

    iget-object v2, v2, Lcom/huawei/hms/locationSdk/z0;->b:Lcom/huawei/hms/locationSdk/d0;

    invoke-virtual {v2}, Lcom/huawei/hms/locationSdk/d0;->c()Lcom/huawei/hms/location/LocationCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/locationSdk/a1$a;->a:Lcom/huawei/hms/locationSdk/a1;

    invoke-static {v3}, Lcom/huawei/hms/locationSdk/a1;->b(Lcom/huawei/hms/locationSdk/a1;)Lcom/huawei/location/vdr/VdrManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/huawei/hms/locationSdk/e0;-><init>(Lcom/huawei/hms/location/LocationCallback;Lcom/huawei/location/vdr/VdrManager;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/locationSdk/f0;->a(Lcom/huawei/hms/locationSdk/e0;)V

    :cond_0
    return-void
.end method
