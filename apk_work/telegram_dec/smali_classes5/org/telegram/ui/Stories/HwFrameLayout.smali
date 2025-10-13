.class abstract Lorg/telegram/ui/Stories/HwFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field static hwEnabled:Z

.field static final hwViews:Ljava/util/Set;


# instance fields
.field private final isFastDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/HwFrameLayout;->hwViews:Ljava/util/Set;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/ui/Stories/HwFrameLayout;->hwEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/HwFrameLayout;->isFastDevice:Z

    return-void
.end method

.method private disableHwAcceleration(Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/ui/Stories/HwFrameLayout;->hwEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    sget-object p1, Lorg/telegram/ui/Stories/HwFrameLayout;->hwViews:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/telegram/ui/Stories/HwFrameLayout;->hwViews:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public checkHwAcceleration(F)V
    .locals 1

    const v0, 0x3f19999a    # 0.6f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    sget-boolean p1, Lorg/telegram/ui/Stories/HwFrameLayout;->hwEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/HwFrameLayout;->isFastDevice:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration(Z)V

    :cond_0
    return-void
.end method

.method public disableHwAcceleration()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration(Z)V

    return-void
.end method

.method public enableHwAcceleration()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/ui/Stories/HwFrameLayout;->hwEnabled:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 0
    sget-boolean v0, Lorg/telegram/ui/Stories/HwFrameLayout;->hwEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Stories/HwFrameLayout;->hwViews:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 0
    sget-boolean v0, Lorg/telegram/ui/Stories/HwFrameLayout;->hwEnabled:Z

    if-eqz v0, :cond_0

    sget-object p1, Lorg/telegram/ui/Stories/HwFrameLayout;->hwViews:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->invalidate(IIII)V

    return-void
.end method
