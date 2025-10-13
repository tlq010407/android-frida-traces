.class Lcom/huawei/hms/maps/HuaweiMap$5;
.super Lcom/huawei/hms/maps/internal/ICancelableCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/maps/HuaweiMap;->animateCamera(Lcom/huawei/hms/maps/CameraUpdate;Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;

.field final synthetic b:Lcom/huawei/hms/maps/HuaweiMap;


# direct methods
.method constructor <init>(Lcom/huawei/hms/maps/HuaweiMap;Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/maps/HuaweiMap$5;->b:Lcom/huawei/hms/maps/HuaweiMap;

    iput-object p2, p0, Lcom/huawei/hms/maps/HuaweiMap$5;->a:Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;

    invoke-direct {p0}, Lcom/huawei/hms/maps/internal/ICancelableCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$5;->a:Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;

    invoke-interface {v0}, Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;->onCancel()V

    return-void
.end method

.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/HuaweiMap$5;->a:Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;

    invoke-interface {v0}, Lcom/huawei/hms/maps/HuaweiMap$CancelableCallback;->onFinish()V

    return-void
.end method
