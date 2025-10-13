.class Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/StreetLifecycleDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/StreetViewPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreetViewLifecycleDelegate"
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/huawei/hms/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->a:Landroid/view/ViewGroup;

    invoke-static {p2}, Lcom/huawei/hms/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    iput-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    return-void
.end method


# virtual methods
.method public getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    new-instance v1, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate$1;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate$1;-><init>(Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;->getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/internal/IOnStreetViewPanoramaReadyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/huawei/hms/maps/internal/mad;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    invoke-interface {p1}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;->getView()Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->c:Landroid/view/View;

    iget-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "onCreateView not allowed on MapViewDelegate"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onDestroyView()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onDestroyView not allowed on MapViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "onInflate not allowed on MapViewDelegate"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLowMemory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;->onLowMemory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onResume()V
    .locals 2

    :try_start_0
    const-string v0, "StreetViewPanoramaView"

    const-string v1, "MapView:onResume"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/huawei/hms/maps/internal/mad;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public onStart()V
    .locals 2

    :try_start_0
    const-string v0, "StreetViewPanoramaView"

    const-string v1, "MapView:onStart"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;->onStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onStop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
