.class public final Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$ICircle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HuaweiCircle"
.end annotation


# instance fields
.field private circle:Lcom/huawei/hms/maps/model/Circle;

.field final synthetic this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lcom/huawei/hms/maps/model/Circle;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;->circle:Lcom/huawei/hms/maps/model/Circle;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lcom/huawei/hms/maps/model/Circle;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lcom/huawei/hms/maps/model/Circle;)V

    return-void
.end method


# virtual methods
.method public getRadius()D
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;->circle:Lcom/huawei/hms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/huawei/hms/maps/model/Circle;->getRadius()D

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;->circle:Lcom/huawei/hms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/huawei/hms/maps/model/Circle;->remove()V

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;

    invoke-static {v0}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->access$1600(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;->circle:Lcom/huawei/hms/maps/model/Circle;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCenter(Lorg/telegram/messenger/IMapsProvider$LatLng;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;->circle:Lcom/huawei/hms/maps/model/Circle;

    new-instance v1, Lcom/huawei/hms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/hms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/model/Circle;->setCenter(Lcom/huawei/hms/maps/model/LatLng;)V

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;->circle:Lcom/huawei/hms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/Circle;->setFillColor(I)V

    return-void
.end method

.method public setRadius(D)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;->circle:Lcom/huawei/hms/maps/model/Circle;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/maps/model/Circle;->setRadius(D)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiCircle;->circle:Lcom/huawei/hms/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/Circle;->setStrokeColor(I)V

    return-void
.end method
