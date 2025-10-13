.class Lcom/huawei/hms/maps/HuaweiMap$19;
.super Lcom/huawei/hms/maps/internal/IOnMyLocationClickListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnMyLocationClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationClickListener;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$19;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$19;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationClickListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnMyLocationClickListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyLocationClick(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$19;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationClickListener;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap$OnMyLocationClickListener;->onMyLocationClick(Landroid/location/Location;)V

    return-void
.end method
