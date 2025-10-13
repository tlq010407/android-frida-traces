.class Lcom/huawei/hms/maps/HuaweiMap$16;
.super Lcom/huawei/hms/maps/internal/IOnMyLocationButtonClickListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnMyLocationButtonClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationButtonClickListener;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$16;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$16;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationButtonClickListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnMyLocationButtonClickListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyLocationButtonClick()Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$16;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationButtonClickListener;

    invoke-interface {v0}, Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationButtonClickListener;->onMyLocationButtonClick()Z

    move-result v0

    return v0
.end method
