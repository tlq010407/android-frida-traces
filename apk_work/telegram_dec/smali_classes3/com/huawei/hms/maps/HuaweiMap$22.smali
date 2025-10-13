.class Lcom/huawei/hms/maps/HuaweiMap$22;
.super Lcom/huawei/hms/maps/internal/IOnGroundOverlayClickListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnGroundOverlayClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnGroundOverlayClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnGroundOverlayClickListener;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnGroundOverlayClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$22;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$22;->a:Lcom/huawei/hms/maps/HuaweiMap$OnGroundOverlayClickListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnGroundOverlayClickListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroundOverlayClick(Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$22;->a:Lcom/huawei/hms/maps/HuaweiMap$OnGroundOverlayClickListener;

    new-instance v1, Lcom/huawei/hms/maps/model/GroundOverlay;

    invoke-direct {v1, p1}, Lcom/huawei/hms/maps/model/GroundOverlay;-><init>(Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/HuaweiMap$OnGroundOverlayClickListener;->onGroundOverlayClick(Lcom/huawei/hms/maps/model/GroundOverlay;)V

    return-void
.end method
