.class public final Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$IMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HuaweiMarker"
.end annotation


# instance fields
.field private marker:Lcom/huawei/hms/maps/model/Marker;

.field final synthetic this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lcom/huawei/hms/maps/model/Marker;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->marker:Lcom/huawei/hms/maps/model/Marker;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lcom/huawei/hms/maps/model/Marker;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;-><init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;Lcom/huawei/hms/maps/model/Marker;)V

    return-void
.end method


# virtual methods
.method public getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->marker:Lcom/huawei/hms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/huawei/hms/maps/model/Marker;->getPosition()Lcom/huawei/hms/maps/model/LatLng;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v2, v0, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    return-object v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->marker:Lcom/huawei/hms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/huawei/hms/maps/model/Marker;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->marker:Lcom/huawei/hms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/huawei/hms/maps/model/Marker;->remove()V

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->this$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;

    invoke-static {v0}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;->access$1500(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->marker:Lcom/huawei/hms/maps/model/Marker;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->marker:Lcom/huawei/hms/maps/model/Marker;

    invoke-static {p1}, Lcom/huawei/hms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/huawei/hms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/Marker;->setIcon(Lcom/huawei/hms/maps/model/BitmapDescriptor;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->marker:Lcom/huawei/hms/maps/model/Marker;

    invoke-static {p1}, Lcom/huawei/hms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/huawei/hms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/Marker;->setIcon(Lcom/huawei/hms/maps/model/BitmapDescriptor;)V

    return-void
.end method

.method public setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->marker:Lcom/huawei/hms/maps/model/Marker;

    new-instance v1, Lcom/huawei/hms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/hms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/model/Marker;->setPosition(Lcom/huawei/hms/maps/model/LatLng;)V

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->marker:Lcom/huawei/hms/maps/model/Marker;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/Marker;->setRotation(F)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapImpl$HuaweiMarker;->marker:Lcom/huawei/hms/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/Marker;->setTag(Ljava/lang/Object;)V

    return-void
.end method
