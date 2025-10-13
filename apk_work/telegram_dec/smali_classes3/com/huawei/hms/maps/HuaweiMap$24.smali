.class Lcom/huawei/hms/maps/HuaweiMap$24;
.super Lcom/huawei/hms/maps/internal/IOnInfoWindowCloseListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnInfoWindowCloseListener(Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowCloseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowCloseListener;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$24;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$24;->a:Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowCloseListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnInfoWindowCloseListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClose(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$24;->a:Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowCloseListener;

    new-instance v1, Lcom/huawei/hms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/huawei/hms/maps/model/Marker;-><init>(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/HuaweiMap$OnInfoWindowCloseListener;->onInfoWindowClose(Lcom/huawei/hms/maps/model/Marker;)V

    return-void
.end method
