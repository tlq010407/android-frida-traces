.class Lcom/huawei/hms/maps/MapFragment$maa;
.super Lcom/huawei/hms/maps/maa;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/maps/mac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "maa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/maps/maa<",
        "Lcom/huawei/hms/maps/MapFragment$mab;",
        ">;",
        "Lcom/huawei/hms/maps/mac;"
    }
.end annotation


# instance fields
.field private final f:Landroid/app/Fragment;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener<",
            "Lcom/huawei/hms/maps/MapFragment$mab;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/app/Activity;

.field private j:Lcom/huawei/hms/maps/HuaweiMapOptions;

.field private k:Z

.field private l:Z


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/huawei/hms/maps/maa;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->l:Z

    iput-object p1, p0, Lcom/huawei/hms/maps/MapFragment$maa;->f:Landroid/app/Fragment;

    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;Z)V
    .locals 1

    .line 0
    invoke-direct {p0}, Lcom/huawei/hms/maps/maa;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->l:Z

    iput-object p1, p0, Lcom/huawei/hms/maps/MapFragment$maa;->f:Landroid/app/Fragment;

    iput-boolean p2, p0, Lcom/huawei/hms/maps/MapFragment$maa;->k:Z

    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private c()V
    .locals 3

    invoke-direct {p0}, Lcom/huawei/hms/maps/MapFragment$maa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/common/util/maa;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/huawei/hms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/HmsUtil;->isHmsAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not load map hmsState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapFragment"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/huawei/hms/maps/MapClientIdentify;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/common/util/maa;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/MapClientIdentify;->setApiKey(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/huawei/hms/maps/MapClientIdentify;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/common/util/maa;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/MapClientIdentify;->setAppId(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->f:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "HuaweiMapOptions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/maps/HuaweiMapOptions;

    iput-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->j:Lcom/huawei/hms/maps/HuaweiMapOptions;

    :cond_4
    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->j:Lcom/huawei/hms/maps/HuaweiMapOptions;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/huawei/hms/maps/HuaweiMapOptions;->getSupportChina()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/hms/maps/MapClientIdentify;->setSupportChina(Z)V

    :cond_5
    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/mac;->a(Landroid/content/Context;)Lcom/huawei/hms/maps/internal/ICreator;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/maps/maa;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/huawei/hms/maps/MapFragment$maa;->a(Lcom/huawei/hms/maps/internal/ICreator;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/huawei/hms/maps/internal/ICreator;Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;
    .locals 1

    .line 0
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/maps/internal/ICreator;->newTextureMapFragmentDelegate(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/maps/HuaweiMapOptions;)Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/huawei/hms/maps/internal/ICreator;->newMapFragmentDelegate(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/maps/HuaweiMapOptions;)Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    new-instance p2, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    return-void
.end method

.method public final a(Lcom/huawei/hms/maps/OnMapReadyCallback;)V
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/maps/MapFragment$mab;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/MapFragment$mab;->a(Lcom/huawei/hms/maps/OnMapReadyCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected a(Lcom/huawei/hms/maps/internal/ICreator;)V
    .locals 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDelegate: initDelegateFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/hms/maps/MapFragment$maa;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapFragment"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->l:Z

    :try_start_0
    new-instance v0, Lcom/huawei/hms/maps/MapClientIdentify;

    invoke-direct {v0}, Lcom/huawei/hms/maps/MapClientIdentify;-><init>()V

    iget-object v2, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-static {v2}, Lcom/huawei/hms/maps/internal/mac;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-virtual {v0, v3, p1}, Lcom/huawei/hms/maps/MapClientIdentify;->regestIdentity(Landroid/content/Context;Lcom/huawei/hms/maps/internal/ICreator;)Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->j:Lcom/huawei/hms/maps/HuaweiMapOptions;

    invoke-virtual {p0, p1, v2, v0}, Lcom/huawei/hms/maps/MapFragment$maa;->a(Lcom/huawei/hms/maps/internal/ICreator;Landroid/content/Context;Lcom/huawei/hms/maps/HuaweiMapOptions;)Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const-string p1, "createDelegate: createDelegateRemote == null"

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/hms/maps/MapFragment$maa;->l:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;->onAttach(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/MapFragment$maa;->h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/huawei/hms/maps/MapFragment$mab;

    iget-object v2, p0, Lcom/huawei/hms/maps/MapFragment$maa;->f:Landroid/app/Fragment;

    iget-object v3, p0, Lcom/huawei/hms/maps/MapFragment$maa;->i:Landroid/app/Activity;

    invoke-direct {v1, v2, p1, v3}, Lcom/huawei/hms/maps/MapFragment$mab;-><init>(Landroid/app/Fragment;Lcom/huawei/hms/maps/internal/IMapFragmentDelegate;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;->onDelegateCreated(Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;)V

    :cond_3
    iget-object p1, p0, Lcom/huawei/hms/maps/MapFragment$maa;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/maps/OnMapReadyCallback;

    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/maps/MapFragment$mab;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/maps/MapFragment$mab;->a(Lcom/huawei/hms/maps/OnMapReadyCallback;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/huawei/hms/maps/MapFragment$maa;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final createDelegate(Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener<",
            "Lcom/huawei/hms/maps/MapFragment$mab;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hms/maps/MapFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/huawei/hms/maps/MapFragment$maa;->h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0, p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/maps/MapFragment$maa;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method
