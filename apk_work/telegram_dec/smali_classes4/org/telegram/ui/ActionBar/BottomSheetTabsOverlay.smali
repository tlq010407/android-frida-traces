.class public Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;,
        Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;,
        Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;
    }
.end annotation


# instance fields
.field private actionBarLayout:Landroid/view/View;

.field private final animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

.field private animator:Landroid/animation/ValueAnimator;

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurBitmapPaint:Landroid/graphics/Paint;

.field private blurBitmapShader:Landroid/graphics/BitmapShader;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private final clipPath:Landroid/graphics/Path;

.field private final clipRect:Landroid/graphics/RectF;

.field private closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

.field private closeAllButtonBackgroundDark:Z

.field private closeAllButtonText:Lorg/telegram/ui/Components/Text;

.field private dismissProgress:F

.field private dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

.field private dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

.field private gradientClip:Lorg/telegram/ui/GradientClip;

.field private hitCloseAllButton:Z

.field private horizontallySwiping:Z

.field private isOpen:Z

.field private lastY:F

.field private final maximumVelocity:I

.field private final minimumVelocity:I

.field public offset:F

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openProgress:F

.field private openingProgress:F

.field private openingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

.field private openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

.field private openingTabScroll:F

.field private final pos:[I

.field private final pos2:[I

.field private final pos3:[I

.field private pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

.field private pressTabClose:Z

.field private final rect:Landroid/graphics/RectF;

.field private final rect2:Landroid/graphics/RectF;

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scroller:Landroid/widget/OverScroller;

.field private slowerDismiss:Z

.field private startTime:J

.field private startX:F

.field private startY:F

.field private final tabs:Ljava/util/ArrayList;

.field private tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

.field private final tabsViewBounds:Landroid/graphics/RectF;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private verticallyScrolling:Z


# direct methods
.method public static synthetic $r8$lambda$LREsDnp96sn9DgVnFnbXLEWNL70(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$dispatchTouchEvent$0(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NGy108bCoDNX59NerEu9xYvxTBI(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$animateOpen$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NW-uusz9g5vueIEfVss1lK-SytE(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$scrollTo$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yz27qODkmoqVOntKbmMtYcVmrWk(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$dispatchTouchEvent$1(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXGnNPWO7I1wkl5xjJT0SgMoWSw(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$dismissSheet$3(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pOPXl6ElZPvk0GArL-YZGPUoamo(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lambda$dismissSheet$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos3:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->maximumVelocity:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->minimumVelocity:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->isOpen:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clearTabs()V

    return-void
.end method

.method static synthetic access$502(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)Lorg/telegram/ui/ActionBar/BottomSheetTabs;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    return p1
.end method

.method private animateOpen(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->isOpen:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->isOpen:Z

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v1, :cond_2

    iput-boolean v0, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->drawTabs:Z

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x1

    aput p1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$3;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private clearTabs()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private drawDismissingTab(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabBounds(Landroid/graphics/RectF;F)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    aget v2, v4, v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    aget v3, v4, v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissProgress:F

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    move-object v2, p1

    move v4, v6

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;->drawInto(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/RectF;FZ)F

    move-result v11

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v11, v11, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float v2, v2, v4

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clipRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {v2, v4, v0, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setupTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget v12, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawTabsPreview(Landroid/graphics/Canvas;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/4 v10, 0x0

    cmpg-float v1, v1, v10

    if-gtz v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingProgress:F

    cmpg-float v1, v1, v10

    if-gtz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aget v3, v2, v11

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    aget v5, v4, v11

    sub-int/2addr v3, v5

    int-to-float v5, v3

    aget v2, v2, v12

    aget v4, v4, v12

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aget v4, v4, v12

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    aget v6, v6, v12

    sub-int/2addr v4, v6

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aput v11, v1, v12

    aput v11, v1, v11

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v13

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v14

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmap:Landroid/graphics/Bitmap;

    const/high16 v15, 0x437f0000    # 255.0f

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    mul-float v2, v2, v15

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v4, v13

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v4, v13

    move v5, v14

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v8, v1

    const/high16 v1, 0x42880000    # 68.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v7, v1

    const/high16 v1, 0x43aa0000    # 340.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f733333    # 0.95f

    mul-float v2, v2, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v6, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/high16 v16, 0x3f000000    # 0.5f

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v16

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v1, v1, v14

    :goto_1
    float-to-int v5, v1

    const/high16 v17, 0x40000000    # 2.0f

    div-float v18, v13, v17

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget v3, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->index:I

    if-ltz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    add-float/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow()F

    move-result v1

    cmpg-float v1, v1, v10

    if-gtz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollOffset()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow()F

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    mul-float v2, v2, v3

    div-float/2addr v1, v2

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    :goto_4
    invoke-static {v1, v4, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    sub-float v1, v4, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    invoke-static {v10, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_5
    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v15, v12

    if-ge v1, v15, :cond_16

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v1, v15, :cond_8

    if-ltz v2, :cond_7

    iget v15, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingProgress:F

    cmpl-float v15, v15, v16

    if-lez v15, :cond_7

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    :goto_6
    check-cast v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    goto :goto_7

    :cond_7
    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v24, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move v10, v8

    const/16 v20, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    goto/16 :goto_f

    :cond_8
    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    goto :goto_6

    :goto_7
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_9

    iget-object v12, v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v12, v11, :cond_9

    iget v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingProgress:F

    cmpl-float v11, v11, v16

    if-lez v11, :cond_9

    move v2, v1

    move/from16 v21, v2

    move/from16 v24, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move v10, v8

    const/16 v20, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    goto/16 :goto_10

    :cond_9
    iget-object v11, v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v11, v12, :cond_a

    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_a
    move/from16 v21, v3

    :goto_8
    if-ne v11, v12, :cond_b

    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingProgress:F

    goto :goto_9

    :cond_b
    const/4 v12, 0x0

    :goto_9
    sub-float v22, v19, v4

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getPosition()F

    move-result v11

    sub-float v11, v22, v11

    iget-object v4, v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v4, v10, :cond_c

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTabScroll:F

    :goto_a
    const/4 v10, 0x0

    goto :goto_b

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollOffset()F

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v4, v11, v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow()F

    move-result v10

    div-float/2addr v4, v10

    goto :goto_a

    :goto_b
    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move/from16 v24, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v10, -0x3f800000    # -4.0f

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v1, v1, v10

    add-float/2addr v1, v8

    sub-float v10, v14, v7

    move/from16 v25, v2

    int-to-float v2, v5

    const v26, 0x3e851eb8    # 0.26f

    mul-float v26, v26, v2

    sub-float v10, v10, v26

    sub-float/2addr v10, v1

    mul-float v10, v10, v4

    add-float/2addr v1, v10

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    int-to-float v10, v6

    div-float v10, v10, v17

    move/from16 v26, v5

    sub-float v5, v18, v10

    add-float v10, v18, v10

    add-float/2addr v2, v1

    invoke-virtual {v4, v5, v1, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    const v4, 0x3dcccccd    # 0.1f

    if-eq v1, v2, :cond_e

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v10, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v14

    if-gtz v10, :cond_d

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v10, 0x0

    cmpg-float v5, v5, v10

    if-ltz v5, :cond_d

    cmpg-float v5, v3, v4

    if-gez v5, :cond_e

    :cond_d
    const/high16 v5, 0x40400000    # 3.0f

    sub-float v5, v19, v5

    cmpg-float v5, v11, v5

    if-gez v5, :cond_e

    const/4 v5, 0x1

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    :goto_c
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    if-eqz v10, :cond_f

    if-ne v1, v2, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    invoke-interface {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    invoke-static {v1, v2, v12, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    move/from16 v28, v6

    goto :goto_d

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getPosition()F

    move-result v1

    move/from16 v28, v6

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v6, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    invoke-virtual {v2, v10, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabBounds(Landroid/graphics/RectF;F)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-static {v1, v2, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v1, :cond_10

    iget-object v2, v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setupTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V

    :cond_10
    iget-object v1, v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-eq v1, v2, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v14

    if-gtz v2, :cond_11

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    :cond_11
    move v10, v8

    move/from16 v21, v24

    move/from16 v22, v25

    move/from16 v27, v28

    const/16 v20, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v24, v3

    move/from16 v28, v7

    goto/16 :goto_f

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$800(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$900(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    aput v2, v1, v4

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$900(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$900(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x2

    aput v2, v1, v4

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$900(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x3

    aput v2, v1, v6

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$900(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/4 v10, 0x4

    aput v2, v1, v10

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$900(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v22, 0x3f800000    # 1.0f

    mul-float v2, v2, v22

    add-float/2addr v10, v2

    const/4 v2, 0x5

    aput v10, v1, v2

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$900(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    const/16 v29, 0x6

    aput v10, v1, v29

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$900(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v22, 0x3f800000    # 1.0f

    mul-float v10, v10, v22

    add-float/2addr v2, v10

    const/4 v10, 0x7

    aput v2, v1, v10

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/16 v20, 0x0

    aput v2, v1, v20

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v2, v10

    const/4 v10, 0x1

    aput v2, v1, v10

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v1, v4

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    aput v2, v1, v6

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, v4, v17

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v10, v6, v12

    mul-float v10, v10, v21

    move/from16 v30, v3

    const v3, 0x3f547ae1    # 0.83f

    invoke-static {v6, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v31

    mul-float v4, v4, v31

    add-float/2addr v2, v4

    const/4 v4, 0x4

    aput v2, v1, v4

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v6, v6, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v22

    mul-float v6, v6, v22

    add-float/2addr v2, v6

    const/4 v6, 0x5

    aput v2, v1, v6

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v6, v6, v17

    const v3, 0x3f547ae1    # 0.83f

    invoke-static {v4, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    mul-float v6, v6, v3

    sub-float/2addr v2, v6

    aput v2, v1, v29

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v4, v4, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v3, v6

    add-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    invoke-static {v3, v6, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    mul-float v4, v4, v6

    add-float/2addr v2, v4

    const/4 v3, 0x7

    aput v2, v1, v3

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$800(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)Landroid/graphics/Matrix;

    move-result-object v31

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$900(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v32

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x4

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->access$800(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    iget-object v1, v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v1, v2, :cond_13

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_13
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getAlpha()F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    move v6, v1

    :goto_e
    iget-object v1, v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v1, v2, :cond_14

    const/high16 v10, 0x3f800000    # 1.0f

    :cond_14
    sub-float v11, v11, v19

    add-float v11, v11, v17

    invoke-static {v11}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    sub-float v21, v21, v2

    const v2, 0x3f4ccccd    # 0.8f

    div-float v21, v21, v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    move/from16 v21, v24

    move-object v1, v15

    move/from16 v22, v25

    move-object/from16 v2, p1

    move/from16 v24, v30

    const/high16 v25, 0x3f800000    # 1.0f

    move v4, v5

    move v5, v6

    move/from16 v27, v28

    move v6, v10

    move v10, v7

    move v7, v12

    move/from16 v28, v10

    move v10, v8

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZFFFF)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    if-eqz v1, :cond_15

    iget-object v2, v15, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    if-ne v2, v3, :cond_15

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect2:Landroid/graphics/RectF;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    move-object/from16 v2, p1

    move-object v3, v5

    move v6, v12

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;->drawInto(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/RectF;FZ)F

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_f
    move/from16 v2, v22

    :goto_10
    add-int/lit8 v1, v21, 0x1

    move v8, v10

    move/from16 v3, v24

    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v7, v28

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_16
    move v10, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->gradientClip:Lorg/telegram/ui/GradientClip;

    if-nez v1, :cond_17

    new-instance v1, Lorg/telegram/ui/GradientClip;

    invoke-direct {v1}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->gradientClip:Lorg/telegram/ui/GradientClip;

    :cond_17
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->gradientClip:Lorg/telegram/ui/GradientClip;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/4 v4, 0x1

    invoke-virtual {v2, v9, v1, v4, v3}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonText:Lorg/telegram/ui/Components/Text;

    const/high16 v2, 0x41600000    # 14.0f

    if-nez v1, :cond_18

    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v3, Lorg/telegram/messenger/R$string;->BotCloseAllTabs:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonText:Lorg/telegram/ui/Components/Text;

    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackgroundDark:Z

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v3

    if-eq v1, v3, :cond_1b

    :cond_19
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackgroundDark:Z

    const/16 v3, 0x40

    if-eqz v1, :cond_1a

    const v1, 0x20ffffff

    const v4, 0x33ffffff

    :goto_11
    invoke-static {v3, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_12

    :cond_1a
    const/high16 v1, 0x2e000000

    const/high16 v4, 0x44000000    # 512.0f

    goto :goto_11

    :goto_12
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v1

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    sub-float v4, v13, v1

    div-float v4, v4, v17

    float-to-int v5, v4

    const/high16 v6, 0x42be0000    # 95.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v17

    sub-float v8, v10, v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v8, v7

    float-to-int v7, v8

    add-float/2addr v13, v1

    div-float v13, v13, v17

    float-to-int v1, v13

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v17

    sub-float v8, v10, v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    float-to-int v2, v8

    invoke-virtual {v3, v5, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonText:Lorg/telegram/ui/Components/Text;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v3, v4, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v17

    sub-float v4, v10, v2

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/4 v5, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getScrollStep()F
    .locals 1

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getTabAt(FF)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;
    .locals 5

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget v3, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3ecccccd    # 0.4f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private synthetic lambda$animateOpen$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$dismissSheet$3(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;->setDrawingFromOverlay(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dismissSheet$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$0(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget p2, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax(Z)F

    move-result v0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin(Z)F

    move-result p2

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollTo(F)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$1(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax(Z)F

    move-result v0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin(Z)F

    move-result p2

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollTo(F)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$scrollTo$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    return-void
.end method

.method private prepareBlur(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    const/high16 v1, 0x41600000    # 14.0f

    const/16 v2, 0xe

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->makeBlurBitmap(Landroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    sput-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3da3d70a    # 0.08f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->blurMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private prepareTabs()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v7, v6, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    if-ne v7, v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-direct {v7, p0, v4, v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->setScrollOffset(F)V

    return-void
.end method

.method public static renderHardwareViewToBitmap(Landroid/view/View;FLorg/telegram/messenger/Utilities$Callback;)V
    .locals 5

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Surface;)Landroid/graphics/Canvas;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    new-instance p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;

    invoke-direct {p0, p2, v2, v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$5;-><init>(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2, p0, p1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline29;->m(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private scrollTo(F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public closeTabsView()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animateOpen(Z)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->setScrollOffset(F)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public dismissSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingSheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->setLastVisible(Z)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->saveState()Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->pushTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissingTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissProgress:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$2;

    invoke-direct {v3, p0, v1, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x406b800000000000L    # 220.0

    invoke-static/range {v4 .. v10}, Lorg/telegram/messenger/AndroidUtilities;->applySpring(Landroid/animation/Animator;DDD)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v1, v1, v2

    float-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->slowerDismiss:Z

    const/4 p1, 0x1

    return p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->drawDismissingTab(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->drawTabsPreview(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25

    move-object/from16 v0, p0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openProgress:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2e

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v5, 0x41c00000    # 24.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getTabAt(FF)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    if-eqz v1, :cond_3

    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    const v3, 0x101009e

    const v9, 0x10100a7

    const/16 v10, 0x15

    if-eqz v1, :cond_6

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-static {v1, v11, v12}, Landroidx/core/graphics/drawable/WrappedDrawableApi21$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/drawable/Drawable;FF)V

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    if-eqz v11, :cond_5

    new-array v11, v6, [I

    aput v9, v11, v2

    aput v3, v11, v8

    goto :goto_1

    :cond_5
    new-array v11, v2, [I

    :goto_1
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->cancelDismissAnimator()V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v12, v12, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v13, v13, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v12, v5

    float-to-int v5, v12

    invoke-virtual {v1, v11, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v10, :cond_7

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v10

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->rect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-static {v1, v5, v10}, Landroidx/core/graphics/drawable/WrappedDrawableApi21$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/drawable/Drawable;FF)V

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    xor-int/2addr v5, v8

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->setPressed(Z)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-eqz v5, :cond_8

    new-array v5, v6, [I

    aput v9, v5, v2

    aput v3, v5, v8

    goto :goto_2

    :cond_8
    new-array v5, v2, [I

    :goto_2
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lastY:F

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    goto/16 :goto_a

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_1d

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-nez v1, :cond_c

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_c

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {v1, v5, v6, v9}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_c

    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    :cond_c
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-nez v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {v1, v5, v6, v9}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    :cond_e
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-eqz v1, :cond_16

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->setPressed(Z)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->cancelDismissAnimator()V

    goto/16 :goto_3

    :cond_11
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-nez v1, :cond_12

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-nez v1, :cond_12

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_12

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v1, v6, v9, v10}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_12

    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    :cond_12
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-nez v1, :cond_15

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_15

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-nez v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v1, v6, v9, v10}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollAnimator:Landroid/animation/ValueAnimator;

    :cond_14
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    :cond_15
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-eqz v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v7, v7, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v9, v9, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v7, v5

    float-to-int v5, v7

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-nez v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    new-array v5, v2, [I

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_16
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->isPressed()Z

    move-result v1

    if-nez v1, :cond_19

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startX:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x43960000    # 300.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    iput v3, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    goto :goto_4

    :cond_17
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-eqz v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lastY:F

    sub-float/2addr v1, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    sub-float/2addr v5, v6

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v3, v3, v5

    sub-float/2addr v6, v3

    mul-float v1, v1, v6

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollOffset()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v5

    mul-float v3, v3, v5

    sub-float/2addr v3, v1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v1

    div-float/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v6

    const v7, 0x3fb33333    # 1.4f

    mul-float v6, v6, v7

    sub-float/2addr v5, v6

    invoke-static {v3, v1, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->setScrollOffset(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_19
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1c

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    if-nez v3, :cond_1b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    if-nez v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->lastY:F

    goto/16 :goto_a

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_2a

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    if-eqz v1, :cond_26

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v6, :cond_1e

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v6, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    new-instance v9, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda4;

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)V

    invoke-virtual {v3, v6, v9}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_7

    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iput-object v7, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    goto/16 :goto_7

    :cond_1f
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-eqz v1, :cond_23

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow()F

    move-result v6

    const v9, 0x3e19999a    # 0.15f

    mul-float v6, v6, v9

    sub-float/2addr v3, v6

    cmpg-float v1, v1, v3

    if-gez v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    goto/16 :goto_6

    :cond_20
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scrollTo(F)V

    goto/16 :goto_6

    :cond_21
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->maximumVelocity:I

    int-to-float v3, v3

    const/16 v6, 0x3e8

    invoke-virtual {v1, v6, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->minimumVelocity:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_22

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollOffset()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v6

    mul-float v3, v3, v6

    float-to-int v11, v3

    neg-float v1, v1

    float-to-int v13, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin()F

    move-result v1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v6

    mul-float v3, v3, v6

    float-to-int v3, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v6

    const v10, 0x3dcccccd    # 0.1f

    mul-float v6, v6, v10

    float-to-int v6, v6

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v19, v6

    invoke-virtual/range {v9 .. v19}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto :goto_6

    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->scroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollOffset()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollStep()F

    move-result v6

    mul-float v3, v3, v6

    float-to-int v3, v3

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v1

    move/from16 v21, v3

    invoke-virtual/range {v19 .. v24}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_23
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->setPressed(Z)V

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-eqz v1, :cond_24

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    :cond_24
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    if-eqz v1, :cond_25

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)V

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    new-array v3, v2, [I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_9

    :cond_26
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeAll()Z

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    goto :goto_9

    :cond_27
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startX:F

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v1, v3, v5, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_28

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->verticallyScrolling:Z

    if-nez v1, :cond_28

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->horizontallySwiping:Z

    if-nez v1, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->startTime:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f99999a    # 1.2f

    mul-float v3, v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_28

    goto :goto_8

    :cond_28
    :goto_9
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_29
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2d

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_a

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2d

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    if-eqz v1, :cond_2b

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->setPressed(Z)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    new-array v3, v2, [I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2b
    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTab:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pressTabClose:Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_2c
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->hitCloseAllButton:Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2d

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2d
    :goto_a
    const/4 v2, 0x1

    :cond_2e
    return v2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getScrollMax()F
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMax(Z)F

    move-result v0

    return v0
.end method

.method public getScrollMax(Z)F
    .locals 4

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange(Z)F

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow(Z)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow(Z)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange(Z)F

    move-result p1

    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getScrollMin()F
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollMin(Z)F

    move-result v0

    return v0
.end method

.method public getScrollMin(Z)F
    .locals 3

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollWindow()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange(Z)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    mul-float v0, v0, p1

    return v0
.end method

.method public getScrollOffset()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    return v0
.end method

.method public getScrollRange()F
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange(Z)F

    move-result v0

    return v0
.end method

.method public getScrollRange(Z)F
    .locals 4

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget v3, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->index:I

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animatedCount:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    :cond_2
    return v2
.end method

.method public getScrollWindow()F
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getScrollWindow(Z)F
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->getScrollRange(Z)F

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->isOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeTabsView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public openTabsView()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->stopAnimations()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aput v1, v0, v2

    aput v1, v0, v1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsViewBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aget v4, v3, v1

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    aget v1, v5, v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    aget v3, v3, v2

    aget v5, v5, v2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos:[I

    aget v5, v5, v2

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->pos2:[I

    aget v6, v6, v2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->actionBarLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->prepareBlur(Landroid/view/View;)V

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->clearTabs()V

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->prepareTabs()V

    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animateOpen(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setScrollOffset(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->offset:F

    return-void
.end method

.method public setSlowerDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->slowerDismiss:Z

    return-void
.end method

.method public setTabsView(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->tabsView:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    return-void
.end method

.method public stopAnimations()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->animator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->closeAllButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
