.class Lcom/huawei/hms/maps/HuaweiMap$14;
.super Lcom/huawei/hms/maps/internal/IOnMapClickListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnMapClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMapClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnMapClickListener;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMapClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$14;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$14;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMapClickListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnMapClickListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/huawei/hms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$14;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMapClickListener;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap$OnMapClickListener;->onMapClick(Lcom/huawei/hms/maps/model/LatLng;)V

    return-void
.end method
