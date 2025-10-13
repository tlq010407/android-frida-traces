.class Lcom/huawei/hms/maps/HuaweiMap$23;
.super Lcom/huawei/hms/maps/internal/IOnIndoorStateChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnIndoorStateChangeListener(Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$23;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$23;->a:Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnIndoorStateChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndoorBuildingFocused()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$23;->a:Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;

    invoke-interface {v0}, Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;->onIndoorBuildingFocused()V

    return-void
.end method

.method public onIndoorLevelActivated(Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$23;->a:Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;

    new-instance v1, Lcom/huawei/hms/maps/model/IndoorBuilding;

    invoke-direct {v1, p1}, Lcom/huawei/hms/maps/model/IndoorBuilding;-><init>(Lcom/huawei/hms/maps/model/internal/IIndoorBuildingDelegate;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/HuaweiMap$OnIndoorStateChangeListener;->onIndoorLevelActivated(Lcom/huawei/hms/maps/model/IndoorBuilding;)V

    return-void
.end method
