.class Lorg/telegram/messenger/HuaweiLocationProvider$2;
.super Lcom/huawei/hms/location/LocationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/HuaweiLocationProvider;->removeLocationUpdates(Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/HuaweiLocationProvider;

.field final synthetic val$locationListener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/HuaweiLocationProvider;Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiLocationProvider$2;->this$0:Lorg/telegram/messenger/HuaweiLocationProvider;

    iput-object p2, p0, Lorg/telegram/messenger/HuaweiLocationProvider$2;->val$locationListener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;

    invoke-direct {p0}, Lcom/huawei/hms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/huawei/hms/location/LocationResult;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiLocationProvider$2;->val$locationListener:Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;

    invoke-virtual {p1}, Lcom/huawei/hms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/ILocationServiceProvider$ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method
