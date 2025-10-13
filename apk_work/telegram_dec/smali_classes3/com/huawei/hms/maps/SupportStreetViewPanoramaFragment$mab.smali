.class Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/StreetLifecycleDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "mab"
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/huawei/hms/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    iput-object p2, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-static {p1}, Lcom/huawei/hms/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->a:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    new-instance v1, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab$1;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab$1;-><init>(Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/internal/IOnStreetViewPanoramaReadyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "StreetViewOptions"

    :try_start_0
    invoke-static {p1}, Lcom/huawei/hms/maps/internal/mad;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/huawei/hms/maps/internal/mad;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    :try_start_0
    invoke-static {p3}, Lcom/huawei/hms/maps/internal/mad;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p3, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->c:Landroid/app/Activity;

    invoke-static {p3}, Lcom/huawei/hms/maps/internal/mac;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    if-eqz v0, :cond_0

    const-string v0, "SupportStreetViewPanoramaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk onCreateView iStreetViewFragmentDelegate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-static {p3}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {v0, p3, p2, p1}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onCreateView(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Landroid/os/Bundle;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/huawei/hms/maps/R$layout;->empty_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :goto_1
    new-instance p2, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onDestroyView()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onDestroyView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SupportStreetViewPanoramaFragment"

    if-eqz p2, :cond_0

    const-string v1, "StreetViewOptions"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/huawei/hms/maps/StreetViewPanoramaOptions;

    :try_start_0
    const-string v1, "SupportStreetViewPanoramaFragment:onInflate"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/huawei/hms/maps/internal/mad;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onInflate(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/maps/StreetViewPanoramaOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :cond_0
    const-string p1, "onInflate Bundle is null!"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onLowMemory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onLowMemory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onStart()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onStop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->b:Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
