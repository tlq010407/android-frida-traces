.class Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;
.super Lcom/huawei/hms/maps/maa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/StreetViewPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreetViewDeferredLifecycleHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/maps/maa<",
        "Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/content/Context;

.field private h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener<",
            "Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/huawei/hms/maps/StreetViewPanoramaOptions;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/huawei/hms/maps/StreetViewPanoramaOptions;)V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/hms/maps/maa;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->j:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->k:Z

    iput-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->f:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->i:Lcom/huawei/hms/maps/StreetViewPanoramaOptions;

    return-void
.end method


# virtual methods
.method protected a(Lcom/huawei/hms/maps/internal/ICreator;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDelegate: initDelegateFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreetViewPanoramaView"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->k:Z

    :try_start_0
    new-instance v0, Lcom/huawei/hms/maps/MapClientIdentify;

    invoke-direct {v0}, Lcom/huawei/hms/maps/MapClientIdentify;-><init>()V

    iget-object v2, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/hms/maps/internal/mac;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->g:Landroid/content/Context;

    invoke-virtual {v0, v3, p1}, Lcom/huawei/hms/maps/MapClientIdentify;->regestIdentity(Landroid/content/Context;Lcom/huawei/hms/maps/internal/ICreator;)Z

    invoke-static {v2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->i:Lcom/huawei/hms/maps/StreetViewPanoramaOptions;

    invoke-interface {p1, v0, v2}, Lcom/huawei/hms/maps/internal/ICreator;->newStreetViewPanoramaViewDelegate(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/maps/StreetViewPanoramaOptions;)Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDelegate: sdk MapView constructor streetViewPanoramaViewDelegate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "createDelegate: streetViewPanoramaViewDelegate is null"

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->k:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;

    iget-object v2, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->f:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;-><init>(Landroid/view/ViewGroup;Lcom/huawei/hms/maps/internal/IStreetViewPanoramaViewDelegate;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;->onDelegateCreated(Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;)V

    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;

    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :goto_1
    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public createDelegate(Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener<",
            "Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hms/maps/StreetViewPanoramaView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/maps/internal/HmsUtil;->isHmsAvailable(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not load map hmsState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StreetViewPanoramaView"

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/maps/internal/mac;->a(Landroid/content/Context;)Lcom/huawei/hms/maps/internal/ICreator;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->g:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/maps/maa;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->a(Lcom/huawei/hms/maps/internal/ICreator;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;->getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
