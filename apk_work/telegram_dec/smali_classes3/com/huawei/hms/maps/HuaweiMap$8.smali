.class Lcom/huawei/hms/maps/HuaweiMap$8;
.super Lcom/huawei/hms/maps/internal/IOnMapLoadedCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnMapLoadedCallback(Lcom/huawei/hms/maps/HuaweiMap$OnMapLoadedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnMapLoadedCallback;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnMapLoadedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$8;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$8;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMapLoadedCallback;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnMapLoadedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$8;->a:Lcom/huawei/hms/maps/HuaweiMap$OnMapLoadedCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/huawei/hms/maps/HuaweiMap$OnMapLoadedCallback;->onMapLoaded()V

    return-void
.end method
