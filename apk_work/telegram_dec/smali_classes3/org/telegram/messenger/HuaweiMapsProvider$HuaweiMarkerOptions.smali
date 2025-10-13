.class public final Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HuaweiMarkerOptions"
.end annotation


# instance fields
.field private markerOptions:Lcom/huawei/hms/maps/model/MarkerOptions;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/huawei/hms/maps/model/MarkerOptions;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;->markerOptions:Lcom/huawei/hms/maps/model/MarkerOptions;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/HuaweiMapsProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;)Lcom/huawei/hms/maps/model/MarkerOptions;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;->markerOptions:Lcom/huawei/hms/maps/model/MarkerOptions;

    return-object p0
.end method


# virtual methods
.method public anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;->markerOptions:Lcom/huawei/hms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/maps/model/MarkerOptions;->anchor(FF)Lcom/huawei/hms/maps/model/MarkerOptions;

    return-object p0
.end method

.method public flat(Z)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;->markerOptions:Lcom/huawei/hms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/MarkerOptions;->flat(Z)Lcom/huawei/hms/maps/model/MarkerOptions;

    return-object p0
.end method

.method public icon(I)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;->markerOptions:Lcom/huawei/hms/maps/model/MarkerOptions;

    invoke-static {p1}, Lcom/huawei/hms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/huawei/hms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/MarkerOptions;->icon(Lcom/huawei/hms/maps/model/BitmapDescriptor;)Lcom/huawei/hms/maps/model/MarkerOptions;

    return-object p0
.end method

.method public icon(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;->markerOptions:Lcom/huawei/hms/maps/model/MarkerOptions;

    invoke-static {p1}, Lcom/huawei/hms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/huawei/hms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/MarkerOptions;->icon(Lcom/huawei/hms/maps/model/BitmapDescriptor;)Lcom/huawei/hms/maps/model/MarkerOptions;

    return-object p0
.end method

.method public position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;->markerOptions:Lcom/huawei/hms/maps/model/MarkerOptions;

    new-instance v1, Lcom/huawei/hms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/hms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/model/MarkerOptions;->position(Lcom/huawei/hms/maps/model/LatLng;)Lcom/huawei/hms/maps/model/MarkerOptions;

    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;->markerOptions:Lcom/huawei/hms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/huawei/hms/maps/model/MarkerOptions;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMarkerOptions;->markerOptions:Lcom/huawei/hms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/huawei/hms/maps/model/MarkerOptions;

    return-object p0
.end method
