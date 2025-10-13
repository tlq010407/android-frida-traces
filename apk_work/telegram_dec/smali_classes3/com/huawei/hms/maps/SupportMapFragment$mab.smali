.class Lcom/huawei/hms/maps/SupportMapFragment$mab;
.super Lcom/huawei/hms/maps/mab;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/mac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/SupportMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "mab"
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Z

.field private f:Lcom/huawei/hms/maps/HuaweiMapOptions;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;Landroid/app/Activity;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/huawei/hms/maps/mab;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->d:Z

    iput-boolean v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->g:Ljava/util/List;

    invoke-static {p2}, Lcom/huawei/hms/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    iput-object p2, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-static {p1}, Lcom/huawei/hms/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->a:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->c:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/huawei/hms/maps/mab;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->d:Z

    iput-boolean v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->g:Ljava/util/List;

    iput-boolean p2, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->e:Z

    invoke-static {p1}, Lcom/huawei/hms/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private a()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/huawei/hms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V

    new-instance v0, Lcom/huawei/hms/maps/provider/inhuawei/MapFragmentDelegate;

    iget-object v1, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->f:Lcom/huawei/hms/maps/HuaweiMapOptions;

    iget-boolean v3, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->e:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/maps/provider/inhuawei/MapFragmentDelegate;-><init>(Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;Z)V

    iput-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onAttach(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SupportMapFragment"

    const-string v1, "exception"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->f:Lcom/huawei/hms/maps/HuaweiMapOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hms/maps/HuaweiMapOptions;->getSupportChina()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/hms/maps/MapClientIdentify;->setSupportChina(Z)V

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/maps/OnMapReadyCallback;

    invoke-virtual {p0, v1}, Lcom/huawei/hms/maps/SupportMapFragment$mab;->a(Lcom/huawei/hms/maps/OnMapReadyCallback;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/hms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/huawei/hms/maps/MapClientIdentify;->setAppContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hms/maps/internal/mac;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->c:Landroid/app/Activity;

    return-void
.end method

.method public final a(Lcom/huawei/hms/maps/OnMapReadyCallback;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/huawei/hms/maps/SupportMapFragment$mab$1;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/maps/SupportMapFragment$mab$1;-><init>(Lcom/huawei/hms/maps/SupportMapFragment$mab;Lcom/huawei/hms/maps/OnMapReadyCallback;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->getMapAsync(Lcom/huawei/hms/maps/internal/IOnMapReadyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "HuaweiMapOptions"

    :try_start_0
    invoke-static {p1}, Lcom/huawei/hms/maps/internal/mad;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/maps/HuaweiMapOptions;

    iput-object v1, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->f:Lcom/huawei/hms/maps/HuaweiMapOptions;

    invoke-static {p1, v0, v1}, Lcom/huawei/hms/maps/internal/mad;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->containsMapsBasic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/huawei/hms/maps/SupportMapFragment$mab;->a()V

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/huawei/hms/maps/mad;->a(Landroid/app/Activity;Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onDestroy()V

    iget-boolean v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->c:Landroid/app/Activity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "SupportMapFragment"

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "clearResource in onDestroy method"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-string v0, "onDestroy: execute clearResource in onDestroy method, but activity is  running"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onDestroyView()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onDestroyView()V
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
    .locals 1

    if-eqz p2, :cond_1

    const-string v0, "HuaweiMapOptions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/huawei/hms/maps/HuaweiMapOptions;

    iput-object p2, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->f:Lcom/huawei/hms/maps/HuaweiMapOptions;

    :try_start_0
    invoke-static {}, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->containsMapsBasic()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/huawei/hms/maps/SupportMapFragment$mab;->a()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p3}, Lcom/huawei/hms/maps/internal/mad;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->f:Lcom/huawei/hms/maps/HuaweiMapOptions;

    invoke-interface {p3, p1, v0, p2}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onInflate(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/maps/HuaweiMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p2, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :cond_1
    const-string p1, "SupportMapFragment"

    const-string p2, "onInflate Bundle is null!"

    invoke-static {p1, p2}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final onLowMemory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onLowMemory()V
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
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onPause()V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupportMapFragment"

    const-string v1, "clearResource in onPause method"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->d:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onResume()V
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
    invoke-static {p1}, Lcom/huawei/hms/maps/internal/mad;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
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
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onStart()V
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
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment$mab;->b:Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    invoke-interface {v0}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
