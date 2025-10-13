.class Lcom/huawei/hms/maps/HuaweiMap$15;
.super Lcom/huawei/hms/maps/internal/IOnMapLongClickListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnMapLongClickListener(Lcom/huawei/hms/maps/HuaweiMap$OnMapLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnMapLongClickListener;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMapLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$15;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$15;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMapLongClickListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnMapLongClickListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLongClick(Lcom/huawei/hms/maps/model/LatLng;)V
    .locals 2

    const-string v0, "HuaweiMap"

    const-string v1, "onMapLongClick"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$15;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMapLongClickListener;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/HuaweiMap$OnMapLongClickListener;->onMapLongClick(Lcom/huawei/hms/maps/model/LatLng;)V

    return-void
.end method
