.class public abstract Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;,
        Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    }
.end annotation


# static fields
.field public static EXPANDED_WIDTH:F = 64.0f


# instance fields
.field private animateFromPosition:Z

.field animateToExpanded:Z

.field currentDragPosition:I

.field currentPlayingImages:Landroid/util/SparseArray;

.field currentPlayingImagesTmp:Landroid/util/SparseArray;

.field private currentPosition:I

.field private currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private defaultExpandLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

.field private dividerPadding:I

.field dragDx:F

.field private dragEnabled:Z

.field draggindViewDxOnScreen:F

.field draggindViewXOnScreen:F

.field draggingView:Landroid/view/View;

.field draggingViewOutProgress:F

.field private expandOffset:F

.field expandProgress:F

.field expandStickerAnimator:Landroid/animation/ValueAnimator;

.field expanded:Z

.field private futureTabsPositions:Landroid/util/SparseArray;

.field private imageReceiversPlayingNum:I

.field private indicatorColor:I

.field private indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private indicatorHeight:I

.field private lastAnimationTime:J

.field private lastScrollX:I

.field private leftTabBounds:Landroid/graphics/RectF;

.field longClickRunnable:Ljava/lang/Runnable;

.field longClickRunning:Z

.field private positionAnimationProgress:F

.field pressedX:F

.field pressedY:F

.field private prevTypes:Ljava/util/HashMap;

.field private rectPaint:Landroid/graphics/Paint;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightTabBounds:Landroid/graphics/RectF;

.field private scrollByOnNextMeasure:I

.field private scrollOffset:I

.field scrollRight:Z

.field scrollRunnable:Ljava/lang/Runnable;

.field scrollStartTime:J

.field private selectorPaint:Landroid/graphics/Paint;

.field private shouldExpand:Z

.field private showSelected:Z

.field private showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private startAnimationPosition:F

.field startDragFromPosition:I

.field startDragFromX:F

.field private stickerTabExpandedWidth:F

.field private stickerTabWidth:F

.field private tabBounds:Landroid/graphics/RectF;

.field private tabCount:I

.field private tabPadding:I

.field private tabTypes:Ljava/util/HashMap;

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private touchSlop:F

.field private type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method public static synthetic $r8$lambda$8C8Xv68f_J2YLhJ7z805oTHiby0(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addStickerTab$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JCwEncDGWlgcJdullEkBOOrzk9Q(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addIconTab$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NtJL_QPnsyzk8PmXcK9xTmG4Yi4(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addStickerTab$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W60eSp9BwnmY9xThHpOwAVKmqqI(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addEmojiTab$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j9XTVZ5sUMs7Q8H3ciOvkUzOrn8(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addStickerIconTab$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mnZJ4dErPPhjyzg5XUMnykmTZAg(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;ZFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$expandStickers$5(ZFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o0Zet1LC8U1Sh9WHuMZuD9gk6zE(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$checkLongPress$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->imageReceiversPlayingNum:I

    sget-object v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;->LINE:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x15e

    invoke-direct {v1, p0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->leftTabBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rightTabBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabBounds:Landroid/graphics/RectF;

    const v1, -0x99999a

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorColor:I

    const/high16 v1, 0x1a000000

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x42040000    # 33.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dividerPadding:I

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabPadding:I

    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    new-instance v6, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    iput-boolean v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    sget v6, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    const/4 v6, -0x1

    iput v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelected:Z

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v7, p0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->touchSlop:F

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/high16 p2, 0x41180000    # 9.5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v2, v5, p2, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x10

    invoke-direct {p2, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-direct {p1, p2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v5, v6, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultExpandLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)I
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTabSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    return p1
.end method

.method private canSwap(I)Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dragEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/ui/Components/StickerTabView;

    iget v0, p1, Lorg/telegram/ui/Components/StickerTabView;->type:I

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private getTabSize()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42040000    # 33.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$addEmojiTab$3(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addIconTab$0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addStickerIconTab$1(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addStickerTab$2(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addStickerTab$4(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$checkLongPress$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingViewOutProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    return-void
.end method

.method private synthetic lambda$expandStickers$5(ZFLandroid/animation/ValueAnimator;)V
    .locals 4

    if-nez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    div-float/2addr v1, p1

    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    move v0, v1

    const/4 p2, 0x0

    :cond_0
    mul-float p1, p1, v0

    sub-float v0, p1, p2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move p1, p2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    :cond_2
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updatePosition()V

    return-void
.end method

.method private scrollToChild(I)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, p1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    if-ge v0, p1, :cond_2

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr p1, v3

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    if-le v2, p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private startScroll(Z)V
    .locals 4

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRight:Z

    iget-wide v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private stopScroll()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addEmojiTab(ILorg/telegram/messenger/Emoji$EmojiDrawable;Lorg/telegram/tgnet/TLRPC$Document;)Landroid/view/View;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    sget v4, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget v4, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v1, v4, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p2, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 p2, 0x11

    const/16 v4, 0x18

    invoke-static {v4, v4, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    sget p2, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    iget-object v3, v1, Lorg/telegram/ui/Components/StickerTabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    const/4 p2, 0x0

    iput-boolean p2, v1, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    sget v3, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addStickerTab(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Landroid/view/View;
    .locals 7

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_0

    :cond_0
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    new-instance v5, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_1
    iget-object v5, v2, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->imageReceiversPlayingNum:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    iput-boolean v3, v2, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget p1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public addStickerTab(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    new-instance v5, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickerTabView;->setRoundImage()V

    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v5, v6, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v6, v2, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->imageReceiversPlayingNum:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    invoke-virtual {v6, p1, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    iget-object v5, v2, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iput-boolean v4, v2, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    sget p1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public beginUpdate(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz p1, :cond_0

    new-instance p1, Landroid/transition/AutoTransition;

    invoke-direct {p1}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v1, v2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$3;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->cancelLongPress()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkLongPress(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedY:F

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedX:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->touchSlop:F

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedY:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->touchSlop:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTabSize()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    sub-int/2addr v1, v2

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v1, v4, :cond_4

    if-ge v1, v4, :cond_3

    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v1, v4, :cond_4

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v1, v4, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v4, v1, :cond_7

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-ne v4, v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/StickerTabView;->saveXPosition()V

    :goto_3
    add-int/2addr v4, v2

    goto :goto_2

    :cond_6
    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromX:F

    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTabSize()I

    move-result v6

    mul-int v5, v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromX:F

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dragDx:F

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewDxOnScreen:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startScroll(Z)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startScroll(Z)V

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stopScroll()V

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    return v2

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_e

    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stopScroll()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz p1, :cond_d

    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromPosition:I

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq p1, v1, :cond_c

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerSetPositionChanged(II)V

    const/4 p1, 0x0

    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/2addr p1, v2

    goto :goto_5

    :cond_c
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    :cond_e
    return v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public commitUpdate()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v2, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    iget v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/StickerTabView;->animateIfPositionChanged(Landroid/view/ViewGroup;)V

    iget-boolean v7, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v7, :cond_0

    int-to-float v7, v5

    mul-float v7, v7, v1

    iget v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    sub-float v8, v4, v8

    mul-float v7, v7, v8

    add-float/2addr v7, v2

    iget v8, v6, Lorg/telegram/ui/Components/StickerTabView;->dragOffset:F

    add-float/2addr v7, v8

    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_0
    iget v7, v6, Lorg/telegram/ui/Components/StickerTabView;->dragOffset:F

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    sub-float v5, v4, v5

    mul-float v2, v2, v5

    sub-float/2addr v1, v2

    :cond_3
    move v9, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelected:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_f

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v2, :cond_f

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    if-ltz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    if-ltz v8, :cond_6

    iget-object v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lt v8, v10, :cond_5

    goto :goto_4

    :cond_5
    iget-object v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    goto :goto_5

    :cond_6
    :goto_4
    move-object v10, v7

    :goto_5
    if-ltz v6, :cond_8

    iget-object v11, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lt v6, v11, :cond_7

    goto :goto_6

    :cond_7
    iget-object v7, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :cond_8
    :goto_6
    const/high16 v6, 0x40000000    # 2.0f

    div-float v11, v9, v6

    const/high16 v12, 0x42040000    # 33.0f

    if-eqz v10, :cond_b

    if-eqz v7, :cond_b

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sget v15, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    iget v5, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v14, v15, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v13, v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v14

    add-float/2addr v5, v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sget v14, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v12, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v6

    add-float/2addr v5, v12

    int-to-float v8, v8

    sub-float/2addr v2, v8

    invoke-static {v13, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    instance-of v8, v10, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v8, :cond_9

    check-cast v10, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v8

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    instance-of v10, v7, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v10, :cond_a

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v7

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    :goto_8
    invoke-static {v8, v7, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    move/from16 v16, v5

    move v5, v2

    move/from16 v2, v16

    goto :goto_a

    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v2, v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v7, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v5, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    instance-of v5, v10, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v5, :cond_d

    check-cast v10, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v5

    goto :goto_a

    :cond_c
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v2, v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v8, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v5, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    instance-of v5, v7, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v5, :cond_d

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v5

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v5, 0x0

    goto :goto_a

    :cond_e
    const/4 v2, 0x0

    goto :goto_9

    :goto_a
    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedFloat;->getTransitionProgressInterpolated()F

    move-result v8

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v8, v10, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float v8, v8, v12

    mul-float v8, v8, v6

    const/high16 v12, 0x3fa00000    # 1.25f

    sub-float/2addr v12, v8

    mul-float v12, v12, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedFloat;->getTransitionProgressInterpolated()F

    move-result v8

    sub-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v10, 0x3dcccccd    # 0.1f

    mul-float v8, v8, v10

    mul-float v8, v8, v6

    const v10, 0x3f666666    # 0.9f

    add-float/2addr v8, v10

    mul-float v7, v7, v8

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v5, v10

    invoke-static {v12, v5, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    const/high16 v10, 0x41d00000    # 26.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v3, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v11, v3

    const v3, 0x3f0ccccd    # 0.55f

    invoke-static {v4, v3, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    mul-float v7, v7, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabBounds:Landroid/graphics/RectF;

    div-float/2addr v5, v6

    sub-float v4, v2, v5

    div-float/2addr v7, v6

    sub-float v6, v11, v7

    add-float/2addr v2, v5

    add-float/2addr v11, v7

    invoke-virtual {v3, v4, v6, v2, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getThemedColor(I)I

    move-result v3

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_f
    move-object/from16 v5, p1

    :goto_b
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v1, :cond_10

    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    if-lez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    int-to-float v1, v1

    sub-float v7, v9, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v8, v1

    iget-object v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_10
    return-void
.end method

.method public drawOverlays(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewXOnScreen:F

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewDxOnScreen:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingViewOutProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingViewOutProgress:F

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    :cond_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public expandStickers(FZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    if-eq v2, p2, :cond_6

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->fling(I)V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    if-eqz p2, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v2, v4, v0

    aput v3, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;ZF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$4;

    invoke-direct {v3, p0, p2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$4;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;ZF)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_5

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sget v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42ac0000    # 86.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    div-float/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    mul-float v0, v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    sub-float p2, v0, p2

    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    :cond_6
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method public getExpandedOffset()F
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    return-object v0
.end method

.method protected invalidateOverlays()V
    .locals 0

    return-void
.end method

.method public invalidateTabs()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method isDragging()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setImages()V

    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    if-ltz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    :cond_0
    return-void
.end method

.method public onPageScrolled(II)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startAnimationPosition:F

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->positionAnimationProgress:F

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateFromPosition:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastAnimationTime:J

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateFromPosition:Z

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    return-void

    :cond_2
    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->positionAnimationProgress:F

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, p1, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_6

    if-ne p2, p1, :cond_5

    if-le p1, v3, :cond_5

    sub-int/2addr p1, v3

    :cond_5
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollToChild(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setImages()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public selectTab(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dragEnabled:Z

    return-void
.end method

.method public setImageReceiversLayerNum(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->imageReceiversPlayingNum:I

    return-void
.end method

.method public setImages()V
    .locals 17

    move-object/from16 v0, p0

    const/high16 v1, 0x42040000    # 33.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float v1, v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    float-to-int v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    add-int/2addr v2, v1

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v2, v2, 0x2

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-le v2, v3, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x0

    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    iget-object v7, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    iget v7, v7, Lorg/telegram/ui/Components/StickerTabView;->index:I

    iget-object v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    :goto_2
    const/4 v3, 0x0

    if-ge v1, v2, :cond_1d

    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v7, :cond_1c

    move-object v7, v6

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    iget v8, v7, Lorg/telegram/ui/Components/StickerTabView;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    sget v6, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v7, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v6, Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    check-cast v6, Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    move-object v6, v3

    :goto_3
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v9, :cond_6

    iget-object v6, v7, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    invoke-static {v4}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "36_36_firstframe"

    goto :goto_4

    :cond_5
    const-string v9, "36_36_nolimit"

    :goto_4
    invoke-virtual {v6, v8, v9, v3, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_6
    iget-object v3, v7, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v6, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v6, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v10, v8, Lorg/telegram/tgnet/TLRPC$Document;

    const-string v11, "v"

    const v12, 0x3e4ccccd    # 0.2f

    if-eqz v10, :cond_9

    iget-boolean v10, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    if-nez v10, :cond_8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-static {v8, v10, v12}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    :cond_8
    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    move-object v10, v3

    goto :goto_6

    :cond_9
    instance-of v10, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v10, :cond_1c

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v10, :cond_a

    move-object v10, v9

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v13, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    iget-boolean v14, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    if-nez v14, :cond_b

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-static {v10, v11}, Lorg/telegram/messenger/DocumentObject;->containsPhotoSizeType(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v15

    invoke-static {v10, v14, v12, v15}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IFZ)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v10

    iput-object v10, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    :cond_b
    :goto_5
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-static {v8, v6, v13}, Lorg/telegram/messenger/ImageLocation;->getForSticker(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    :goto_6
    iget-boolean v13, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    if-nez v13, :cond_c

    iget-object v13, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-nez v13, :cond_c

    if-eqz v6, :cond_c

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-static {v6, v13, v12}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v12

    iput-object v12, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    :cond_c
    if-nez v8, :cond_d

    goto/16 :goto_10

    :cond_d
    iput-boolean v4, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    iget-object v14, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    iget-object v12, v7, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v4}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v13

    xor-int/2addr v13, v4

    if-eqz v13, :cond_e

    const-string v15, "40_40_firstframe"

    goto :goto_7

    :cond_e
    const-string v15, "40_40"

    :goto_7
    if-nez v10, :cond_f

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v16

    if-eqz v16, :cond_f

    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_10

    :cond_f
    if-eqz v10, :cond_15

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_10
    if-nez v10, :cond_13

    if-eqz v13, :cond_11

    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v8, 0x5a

    invoke-static {v5, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const-string v5, "40_40"

    const/4 v6, 0x0

    move-object v10, v12

    move-object v12, v5

    move-object v13, v14

    move v14, v6

    :goto_8
    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto/16 :goto_e

    :cond_11
    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    if-eqz v14, :cond_12

    const/4 v5, 0x0

    move-object v10, v12

    :goto_9
    move-object v12, v15

    move-object v13, v14

    move v14, v5

    goto :goto_8

    :cond_12
    const/4 v14, 0x0

    const/4 v5, 0x0

    move-object v10, v12

    :goto_a
    move-object v12, v15

    move-object v13, v8

    :goto_b
    move v15, v5

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_e

    :cond_13
    if-eqz v14, :cond_14

    goto :goto_c

    :cond_14
    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object v10, v12

    move-object v11, v8

    move-object v12, v15

    goto :goto_b

    :cond_15
    if-nez v10, :cond_16

    invoke-static {v6, v4}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    if-eqz v10, :cond_19

    const-string v5, "a"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_17
    if-eqz v14, :cond_18

    :goto_c
    const/4 v5, 0x0

    move-object v10, v12

    move-object v11, v8

    goto :goto_9

    :cond_18
    const/4 v14, 0x0

    const/4 v5, 0x0

    move-object v10, v12

    move-object v11, v8

    goto :goto_a

    :cond_19
    iget v5, v8, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v5, v4, :cond_1a

    const-string v13, "tgs"

    :goto_d
    move-object v10, v12

    move-object v11, v8

    move-object v12, v15

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_e

    :cond_1a
    const-string v13, "webp"

    goto :goto_d

    :goto_e
    instance-of v5, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v5, :cond_1b

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    :cond_1b
    iget-object v5, v7, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    iget v5, v7, Lorg/telegram/ui/Components/StickerTabView;->index:I

    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    iget v5, v7, Lorg/telegram/ui/Components/StickerTabView;->index:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_1c
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_1d
    const/4 v5, 0x0

    :goto_11
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eq v1, v2, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1f
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    if-eq v3, p1, :cond_2

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    sget-object v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$7;->$SwitchMap$org$telegram$ui$Components$ScrollSlidingTabStrip$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40400000    # 3.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    aput p1, v4, v1

    aput p1, v4, v0

    const/4 v0, 0x3

    aput p1, v4, v0

    const/4 p1, 0x4

    aput v2, v4, p1

    const/4 p1, 0x5

    aput v2, v4, p1

    const/4 p1, 0x6

    aput v2, v4, p1

    const/4 p1, 0x7

    aput v2, v4, p1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public showSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelected:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected stickerSetPositionChanged(II)V
    .locals 0

    return-void
.end method

.method protected updatePosition()V
    .locals 0

    return-void
.end method

.method public updateTabStyles()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->shouldExpand:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultExpandLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
