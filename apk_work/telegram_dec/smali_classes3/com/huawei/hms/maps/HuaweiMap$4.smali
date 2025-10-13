.class Lcom/huawei/hms/maps/HuaweiMap$4;
.super Lcom/huawei/hms/maps/internal/IOnCameraMoveCanceledListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->setOnCameraMoveCanceledListener(Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveCanceledListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveCanceledListener;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveCanceledListener;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$4;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$4;->a:Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveCanceledListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/IOnCameraMoveCanceledListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraMoveCanceled()V
    .locals 2

    const-string v0, "HuaweiMap"

    const-string v1, "onCameraMoveCanceled"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$4;->a:Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveCanceledListener;

    invoke-interface {v0}, Lcom/huawei/hms/maps/HuaweiMap$OnCameraMoveCanceledListener;->onCameraMoveCanceled()V

    return-void
.end method
