.class Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;
.super Lcom/huawei/hms/maps/maa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "maa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/maps/maa<",
        "Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Landroidx/fragment/app/Fragment;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener<",
            "Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/app/Activity;

.field private j:Lcom/huawei/hms/maps/StreetViewPanoramaOptions;

.field private k:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Lcom/huawei/hms/maps/maa;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->k:Z

    iput-object p1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->f:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->i:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->c()V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;

    iget-object v2, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->f:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->i:Landroid/app/Activity;

    invoke-direct {v1, v2, p1, v3}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;-><init>(Landroidx/fragment/app/Fragment;Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;->onDelegateCreated(Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;)V

    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;

    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->i:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;

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

    invoke-direct {p0}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/huawei/hms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->i:Landroid/app/Activity;

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

    const-string v1, "SupportStreetViewPanoramaFragment"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/mac;->a(Landroid/content/Context;)Lcom/huawei/hms/maps/internal/ICreator;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->i:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/maps/maa;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->a(Lcom/huawei/hms/maps/internal/ICreator;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->getDelegate()Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;->getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected a(Lcom/huawei/hms/maps/internal/ICreator;)V
    .locals 5

    .line 0
    const-string v0, "HuaweiMapOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDelegate: initDelegateFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupportStreetViewPanoramaFragment"

    invoke-static {v2, v1}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->k:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->k:Z

    :try_start_0
    new-instance v1, Lcom/huawei/hms/maps/MapClientIdentify;

    invoke-direct {v1}, Lcom/huawei/hms/maps/MapClientIdentify;-><init>()V

    iget-object v3, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->i:Landroid/app/Activity;

    invoke-static {v3}, Lcom/huawei/hms/maps/internal/mac;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->i:Landroid/app/Activity;

    invoke-virtual {v1, v4, p1}, Lcom/huawei/hms/maps/MapClientIdentify;->regestIdentity(Landroid/content/Context;Lcom/huawei/hms/maps/internal/ICreator;)Z

    iget-object v1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->f:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/maps/StreetViewPanoramaOptions;

    iput-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->j:Lcom/huawei/hms/maps/StreetViewPanoramaOptions;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->j:Lcom/huawei/hms/maps/StreetViewPanoramaOptions;

    invoke-interface {p1, v0, v1}, Lcom/huawei/hms/maps/internal/ICreator;->optStreetViewPanoramaFragmentDelegate(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/maps/StreetViewPanoramaOptions;)Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "createDelegate: supportStreetViewPanoramaFragmentDelegate is null"

    invoke-static {v2, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->k:Z

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->a(Lcom/huawei/hms/maps/internal/IStreetViewPanoramaFragmentDelegate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lcom/huawei/hms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/huawei/hms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final createDelegate(Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener<",
            "Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->h:Lcom/huawei/hms/feature/dynamic/OnDelegateCreatedListener;

    invoke-direct {p0}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->c()V

    return-void
.end method
