.class public final synthetic Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/OnMapReadyCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

.field public final synthetic f$1:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;Landroidx/core/util/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

    iput-object p2, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$$ExternalSyntheticLambda0;->f$1:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final onMapReady(Lcom/huawei/hms/maps/HuaweiMap;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;

    iget-object v1, p0, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView$$ExternalSyntheticLambda0;->f$1:Landroidx/core/util/Consumer;

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;->$r8$lambda$pKMYSwP7xOJFt6fRoKX8ScBo5aA(Lorg/telegram/messenger/HuaweiMapsProvider$HuaweiMapView;Landroidx/core/util/Consumer;Lcom/huawei/hms/maps/HuaweiMap;)V

    return-void
.end method
