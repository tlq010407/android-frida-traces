.class Lcom/huawei/hms/maps/model/TileOverlayOptions$3;
.super Lcom/huawei/hms/maps/model/internal/ITileProviderDelegate$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/model/TileOverlayOptions;->tileProvider(Lcom/huawei/hms/maps/model/TileProvider;)Lcom/huawei/hms/maps/model/TileOverlayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/model/TileOverlayOptions;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/model/TileOverlayOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/model/TileOverlayOptions$3;->a:Lcom/huawei/hms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Lcom/huawei/hms/maps/model/internal/ITileProviderDelegate$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTile(III)Lcom/huawei/hms/maps/model/Tile;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/TileOverlayOptions$3;->a:Lcom/huawei/hms/maps/model/TileOverlayOptions;

    invoke-static {v0}, Lcom/huawei/hms/maps/model/TileOverlayOptions;->b(Lcom/huawei/hms/maps/model/TileOverlayOptions;)Lcom/huawei/hms/maps/model/TileProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/maps/model/TileProvider;->getTile(III)Lcom/huawei/hms/maps/model/Tile;

    move-result-object p1

    return-object p1
.end method
