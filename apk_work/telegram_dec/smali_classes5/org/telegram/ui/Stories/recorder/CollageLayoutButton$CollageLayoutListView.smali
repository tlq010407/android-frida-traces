.class public Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollageLayoutListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$Button;
    }
.end annotation


# instance fields
.field public final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private onLayoutClick:Lorg/telegram/messenger/Utilities$Callback;

.field private selectedLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

.field private visible:Z

.field private visibleAnimator:Landroid/animation/ValueAnimator;

.field private visibleProgress:F


# direct methods
.method public static synthetic $r8$lambda$RXEKyEE-9da3xj1oSzU_3fBV6HM(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_GBIt8Plj4l0VSEWFSXYp-Md9Hc(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->lambda$setVisible$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/FlashViews;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$2;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/FlashViews;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    const/4 p1, -0x1

    const/high16 p2, 0x42600000    # 56.0f

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleProgress:F

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleProgress:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;)Lorg/telegram/ui/Stories/recorder/CollageLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->selectedLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->onLayoutClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->getLayouts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setVisible$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visible:Z

    return v0
.end method

.method public setBounds(FF)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    float-to-int p1, p1

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnLayoutClick(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/ui/Stories/recorder/CollageLayout;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->onLayoutClick:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setSelected(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->selectedLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method public setVisible(ZZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visible:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visible:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleProgress:F

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p2, v2, v0

    const/4 p2, 0x1

    aput v1, v2, p2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$3;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x154

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_4
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->visibleProgress:F

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :goto_1
    return-void
.end method
