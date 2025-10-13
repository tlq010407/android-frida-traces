.class public Lcom/huawei/hms/maps/StreetViewPanoramaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewLifecycleDelegate;,
        Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Z = false


# instance fields
.field private b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/huawei/hms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/maps/StreetViewPanoramaOptions;)V
    .locals 1

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/huawei/hms/maps/StreetViewPanoramaOptions;)V

    iput-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/huawei/hms/maps/StreetViewPanoramaView;->b()Z

    move-result v0

    return v0
.end method

.method private static b()Z
    .locals 1

    sget-boolean v0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->a:Z

    return v0
.end method

.method private static setFlag(Z)V
    .locals 0

    sput-boolean p0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->a:Z

    return-void
.end method


# virtual methods
.method public getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 2

    const-string v0, "StreetViewPanoramaView"

    const-string v1, "getStreetViewPanoramaAsync"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;->getStreetViewPanoramaAsync(Lcom/huawei/hms/maps/OnStreetViewPanoramaReadyCallback;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "StreetViewPanoramaView"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/hms/maps/StreetViewPanoramaView;->setFlag(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/maps/internal/mac;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/mac;->b(Z)V

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "StreetViewPanoramaView"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/hms/maps/internal/HmsUtil;->setRepeatFlag(Z)V

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onDestroy()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 2

    const-string v0, "StreetViewPanoramaView"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onLowMemory()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "StreetViewPanoramaView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    const-string v0, "StreetViewPanoramaView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/hms/maps/StreetViewPanoramaView;->setFlag(Z)V

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    invoke-virtual {v0}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onResume()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "StreetViewPanoramaView"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/huawei/hms/maps/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/maps/StreetViewPanoramaView;->b:Lcom/huawei/hms/maps/StreetViewPanoramaView$StreetViewDeferredLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
