.class Lcom/huawei/hms/maps/HuaweiMap$18;
.super Lcom/huawei/hms/maps/internal/ISnapshotReadyCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->snapshot(Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$18;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$18;->a:Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/ISnapshotReadyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$18;->a:Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onSnapshotReadyWrapper(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method
