.class Lcom/huawei/hms/maps/HuaweiMap$20;
.super Lcom/huawei/hms/maps/internal/IOnPoiClickListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnPoiClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnPoiClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnPoiClickListener;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnPoiClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$20;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$20;->a:Lcom/huawei/hms/maps/HuaweiMap$OnPoiClickListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnPoiClickListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPoiClick(Lcom/huawei/hms/maps/model/PointOfInterest;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$20;->a:Lcom/huawei/hms/maps/HuaweiMap$OnPoiClickListener;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap$OnPoiClickListener;->onPoiClick(Lcom/huawei/hms/maps/model/PointOfInterest;)V

    return-void
.end method
