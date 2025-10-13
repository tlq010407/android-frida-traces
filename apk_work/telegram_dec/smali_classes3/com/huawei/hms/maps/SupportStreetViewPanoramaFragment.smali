.class public Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$mab;,
        Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Z = false


# instance fields
.field private final b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-direct {v0, p0}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    return-void
.end method

.method private static a(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->a:Z

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b()Z

    move-result v0

    return v0
.end method

.method private static b()Z
    .locals 1

    sget-boolean v0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->a:Z

    return v0
.end method

.method public static newInstance()Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;
    .locals 1

    .line 0
    new-instance v0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;

    invoke-direct {v0}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/huawei/hms/maps/StreetViewPanoramaOptions;)Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;
    .locals 3

    .line 0
    const-string v0, "SupportStreetViewPanoramaFragment"

    const-string v1, "SupportStreetViewPanoramaFragment construct"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;

    invoke-direct {v0}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "StreetViewOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory$-CC;->$default$getDefaultViewModelCreationExtras(Landroidx/lifecycle/HasDefaultViewModelProviderFactory;)Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    return-object v0
.end method

.method public getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 2

    const-string v0, "SupportStreetViewPanoramaFragment"

    const-string v1, "getStreetViewPanoramaAsync: "

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->a(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "SupportStreetViewPanoramaFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-static {v0, p1}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->a(Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->a(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/maps/internal/mac;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/mac;->b(Z)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/HmsUtil;->setRepeatFlag(Z)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onDestroy()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onDestroyView()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "SupportStreetViewPanoramaFragment"

    const-string v0, "onEnterAmbient: "

    invoke-static {p1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onExitAmbient()V
    .locals 2

    const-string v0, "SupportStreetViewPanoramaFragment"

    const-string v1, "onExitAmbient: "

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_0
    const-string v1, "SupportStreetViewPanoramaFragment"

    const-string v2, "onInflate"

    invoke-static {v1, v2}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    new-instance p2, Lcom/huawei/hms/maps/StreetViewPanoramaOptions;

    invoke-direct {p2}, Lcom/huawei/hms/maps/StreetViewPanoramaOptions;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "StreetViewOptions"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p2, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-static {p2, p1}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;->a(Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {p2, p1, v1, p3}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onLowMemory()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->a(Z)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lcom/huawei/hms/maps/SupportMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment;->b:Lcom/huawei/hms/maps/SupportStreetViewPanoramaFragment$maa;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onStop()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
