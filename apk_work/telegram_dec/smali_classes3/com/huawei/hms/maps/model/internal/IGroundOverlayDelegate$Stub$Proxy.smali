.class Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public equalsRemote(Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate;)Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0x19

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IInterface;Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public getBearing()F
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->c(Landroid/os/IBinder;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getBounds()Lcom/huawei/hms/maps/model/LatLngBounds;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->f(Landroid/os/IBinder;Ljava/lang/String;I)Lcom/huawei/hms/maps/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->c(Landroid/os/IBinder;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->d(Landroid/os/IBinder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    return-object v0
.end method

.method public getPosition()Lcom/huawei/hms/maps/model/LatLng;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->e(Landroid/os/IBinder;Ljava/lang/String;I)Lcom/huawei/hms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->j(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/feature/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getTransparency()F
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->c(Landroid/os/IBinder;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->c(Landroid/os/IBinder;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getZIndex()F
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->c(Landroid/os/IBinder;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public hashCodeRemote()I
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->b(Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setBearing(F)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0xe

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0xf

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setDimension(F)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0x10

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setDimensions(FF)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 p2, 0x11

    invoke-static {v0, p1, p2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setImage(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x13

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/IBinder;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/IBinder;)V

    return-void
.end method

.method public setPosition(Lcom/huawei/hms/maps/model/LatLng;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x12

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method

.method public setPositionFromBounds(Lcom/huawei/hms/maps/model/LatLngBounds;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x14

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method

.method public setTag(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x15

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/IBinder;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/IBinder;)V

    return-void
.end method

.method public setTransparency(F)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0x16

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0x17

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IGroundOverlayDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.model.internal.IGroundOverlayDelegate"

    const/16 v2, 0x18

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method
