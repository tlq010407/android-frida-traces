.class public Lcom/huawei/hms/maps/SupportMapFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/maps/SupportMapFragment$mab;,
        Lcom/huawei/hms/maps/SupportMapFragment$maa;
    }
.end annotation


# static fields
.field private static a:Z = false


# instance fields
.field private final b:Lcom/huawei/hms/maps/mac;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    invoke-static {}, Lcom/huawei/hms/maps/MapsInitializer;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SupportMapFragment"

    const-string v1, "MapsInitializer is not initialized."

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    return-void

    :cond_0
    invoke-static {}, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->containsMapsBasic()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/huawei/hms/maps/SupportMapFragment$mab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/hms/maps/SupportMapFragment$mab;-><init>(Landroidx/fragment/app/Fragment;Z)V

    :goto_0
    iput-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/huawei/hms/maps/SupportMapFragment$maa;

    invoke-direct {v0, p0}, Lcom/huawei/hms/maps/SupportMapFragment$maa;-><init>(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private static a(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/huawei/hms/maps/SupportMapFragment;->a:Z

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/huawei/hms/maps/SupportMapFragment;->b()Z

    move-result v0

    return v0
.end method

.method private static b()Z
    .locals 1

    sget-boolean v0, Lcom/huawei/hms/maps/SupportMapFragment;->a:Z

    return v0
.end method

.method public static newInstance()Lcom/huawei/hms/maps/SupportMapFragment;
    .locals 1

    .line 0
    new-instance v0, Lcom/huawei/hms/maps/SupportMapFragment;

    invoke-direct {v0}, Lcom/huawei/hms/maps/SupportMapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/huawei/hms/maps/HuaweiMapOptions;)Lcom/huawei/hms/maps/SupportMapFragment;
    .locals 3

    .line 0
    const-string v0, "SupportMapFragment"

    const-string v1, "SupportMapFragment construct"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/huawei/hms/maps/SupportMapFragment;

    invoke-direct {v0}, Lcom/huawei/hms/maps/SupportMapFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "HuaweiMapOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/SupportMapFragment;->setArguments(Landroid/os/Bundle;)V

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

.method public getMapAsync(Lcom/huawei/hms/maps/OnMapReadyCallback;)V
    .locals 2

    const-string v0, "SupportMapFragment"

    const-string v1, "getMapAsync: "

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/mac;->a(Lcom/huawei/hms/maps/OnMapReadyCallback;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lcom/huawei/hms/maps/SupportMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "SupportMapFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/huawei/hms/maps/mac;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-nez v0, :cond_0

    const-string p1, "SupportMapFragment"

    const-string v0, "MapsInitializer is not initialized."

    invoke-static {p1, v0}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/hms/maps/SupportMapFragment;->a(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/maps/internal/mac;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/mac;->b(Z)V

    invoke-static {}, Lcom/huawei/hms/maps/utils/MapsAdvUtil;->containsMapsBasic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/maps/common/util/maa;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hms/maps/auth/AuthClient;->getInstance()Lcom/huawei/hms/maps/auth/AuthClient;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/maps/auth/AuthClient;->startAuth(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    invoke-interface {v0, p1}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string v0, "onCreateView: "

    const-string v1, "SupportMapFragment"

    invoke-static {v1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-nez v0, :cond_0

    const-string p1, "MapsInitializer is not initialized."

    invoke-static {v1, p1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/huawei/hms/maps/MapClientIdentify;->getMapAuthStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/MapClientIdentify;->setMapAuthStartTime(J)V

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/maps/mae;

    invoke-direct {p2}, Lcom/huawei/hms/maps/mae;-><init>()V

    invoke-virtual {p2, p1}, Lcom/huawei/hms/maps/mae;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SupportMapFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onDestroy()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/HmsUtil;->setRepeatFlag(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "SupportMapFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onDestroyView()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "SupportMapFragment"

    const-string v0, "onEnterAmbient: "

    invoke-static {p1, v0}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onExitAmbient()V
    .locals 2

    const-string v0, "SupportMapFragment"

    const-string v1, "onExitAmbient: "

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "SupportMapFragment"

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-nez v2, :cond_0

    const-string v1, "MapsInitializer is not initialized."

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/huawei/hms/maps/MapClientIdentify;->setMapAuthStartTime(J)V

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :try_start_0
    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-static {p1, p2}, Lcom/huawei/hms/maps/HuaweiMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/huawei/hms/maps/HuaweiMapOptions;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "HuaweiMapOptions"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/huawei/hms/maps/SupportMapFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    invoke-interface {p2, p1}, Lcom/huawei/hms/maps/mac;->a(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    invoke-interface {p2, p1, v0, p3}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "SupportMapFragment"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onLowMemory()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/hms/maps/SupportMapFragment;->a(Z)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SupportMapFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-class v0, Lcom/huawei/hms/maps/SupportMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/maps/SupportMapFragment;->b:Lcom/huawei/hms/maps/mac;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onStop()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
