.class public final Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HuaweiLatLngBounds"
.end annotation


# instance fields
.field private bounds:Lcom/huawei/hms/maps/model/LatLngBounds;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/maps/model/LatLngBounds;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;->bounds:Lcom/huawei/hms/maps/model/LatLngBounds;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/maps/model/LatLngBounds;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;-><init>(Lcom/huawei/hms/maps/model/LatLngBounds;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;)Lcom/huawei/hms/maps/model/LatLngBounds;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;->bounds:Lcom/huawei/hms/maps/model/LatLngBounds;

    return-object p0
.end method


# virtual methods
.method public getCenter()Lorg/telegram/messenger/IMapsProvider$LatLng;
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;->bounds:Lcom/huawei/hms/maps/model/LatLngBounds;

    invoke-virtual {v0}, Lcom/huawei/hms/maps/model/LatLngBounds;->getCenter()Lcom/huawei/hms/maps/model/LatLng;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v2, v0, Lcom/huawei/hms/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/huawei/hms/maps/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    return-object v1
.end method
