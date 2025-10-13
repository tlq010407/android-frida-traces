.class public final Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiProjection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$IProjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HuaweiProjection"
.end annotation


# instance fields
.field private projection:Lcom/huawei/hms/maps/Projection;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/maps/Projection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiProjection;->projection:Lcom/huawei/hms/maps/Projection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/maps/Projection;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiProjection;-><init>(Lcom/huawei/hms/maps/Projection;)V

    return-void
.end method


# virtual methods
.method public toScreenLocation(Lorg/telegram/messenger/IMapsProvider$LatLng;)Landroid/graphics/Point;
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiProjection;->projection:Lcom/huawei/hms/maps/Projection;

    new-instance v1, Lcom/huawei/hms/maps/model/LatLng;

    iget-wide v2, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    iget-wide v4, p1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/hms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/Projection;->toScreenLocation(Lcom/huawei/hms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method
