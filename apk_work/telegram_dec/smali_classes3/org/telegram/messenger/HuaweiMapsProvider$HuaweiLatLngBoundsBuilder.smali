.class public final Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBoundsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HuaweiLatLngBoundsBuilder"
.end annotation


# instance fields
.field private builder:Lcom/huawei/hms/maps/model/LatLngBounds$Builder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/huawei/hms/maps/model/LatLngBounds$Builder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBoundsBuilder;->builder:Lcom/huawei/hms/maps/model/LatLngBounds$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/HuaweiMapsProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBoundsBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;

    iget-object v1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBoundsBuilder;->builder:Lcom/huawei/hms/maps/model/LatLngBounds$Builder;

    invoke-virtual {v1}, Lcom/huawei/hms/maps/model/LatLngBounds$Builder;->build()Lcom/huawei/hms/maps/model/LatLngBounds;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBounds;-><init>(Lcom/huawei/hms/maps/model/LatLngBounds;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V

    return-object v0
.end method

.method public include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiLatLngBoundsBuilder;->builder:Lcom/huawei/hms/maps/model/LatLngBounds$Builder;

    new-instance v1, Lcom/huawei/hms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/hms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/model/LatLngBounds$Builder;->include(Lcom/huawei/hms/maps/model/LatLng;)Lcom/huawei/hms/maps/model/LatLngBounds$Builder;

    return-object p0
.end method
