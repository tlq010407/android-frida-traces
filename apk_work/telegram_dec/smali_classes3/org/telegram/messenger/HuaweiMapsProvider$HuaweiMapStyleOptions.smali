.class public final Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HuaweiMapsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HuaweiMapStyleOptions"
.end annotation


# instance fields
.field private mapStyleOptions:Lcom/huawei/hms/maps/model/MapStyleOptions;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/maps/model/MapStyleOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;->mapStyleOptions:Lcom/huawei/hms/maps/model/MapStyleOptions;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/maps/model/MapStyleOptions;Lorg/telegram/messenger/HuaweiMapsProvider$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;-><init>(Lcom/huawei/hms/maps/model/MapStyleOptions;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;)Lcom/huawei/hms/maps/model/MapStyleOptions;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapStyleOptions;->mapStyleOptions:Lcom/huawei/hms/maps/model/MapStyleOptions;

    return-object p0
.end method
