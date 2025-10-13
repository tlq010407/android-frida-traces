.class Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub;
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

    iput-object p1, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public equalsRemote(Lcom/huawei/hms/maps/model/internal/IMarkerDelegate;)Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x10

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IInterface;Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public getAlpha()F
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x1a

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->c(Landroid/os/IBinder;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->d(Landroid/os/IBinder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    return-object v0
.end method

.method public getPosition()Lcom/huawei/hms/maps/model/LatLng;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->e(Landroid/os/IBinder;Ljava/lang/String;I)Lcom/huawei/hms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()F
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->c(Landroid/os/IBinder;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->d(Landroid/os/IBinder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->j(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/feature/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->d(Landroid/os/IBinder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()F
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x1c

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->c(Landroid/os/IBinder;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public hashCodeRemote()I
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->b(Landroid/os/IBinder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hideInfoWindow()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public isClusterable()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isDraggable()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isFlat()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x19

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setAnchor(FF)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

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

    const-string p1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 p2, 0x13

    invoke-static {v0, p1, p2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setAnimation(Lcom/huawei/hms/maps/model/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x21

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method

.method public setAnimationListener(Lcom/huawei/hms/maps/internal/IAnimationListener;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x23

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x9

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setFlat(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x14

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setIcon(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x12

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/IBinder;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/IBinder;)V

    return-void
.end method

.method public setInfoWindowAnchor(FF)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

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

    const-string p1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 p2, 0x18

    invoke-static {v0, p1, p2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setMarkerAnchor(FF)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

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

    const-string p1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 p2, 0x20

    invoke-static {v0, p1, p2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setPosition(Lcom/huawei/hms/maps/model/LatLng;)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method

.method public setRotation(F)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x16

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/4 v2, 0x7

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

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
    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/16 v1, 0x1d

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/IBinder;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    invoke-static {v0, p1, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/IBinder;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/4 v2, 0x5

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0xe

    invoke-static {p1, v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->a(ZLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0x1b

    invoke-static {v0, p1, v2, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/Float;)V

    return-void
.end method

.method public showInfoWindow()V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const-string v1, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/maps/model/internal/mab;->i(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public startAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/maps/model/internal/IMarkerDelegate$Stub$Proxy;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Parcelable;

    const-string v2, "com.huawei.hms.maps.model.internal.IMarkerDelegate"

    const/16 v3, 0x22

    invoke-static {v0, v2, v3, v1}, Lcom/huawei/hms/maps/model/internal/mab;->a(Landroid/os/IBinder;Ljava/lang/String;I[Landroid/os/Parcelable;)V

    return-void
.end method
