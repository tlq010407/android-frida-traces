.class public Lorg/telegram/ui/AvatarPreviewPagerIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ProfileGalleryView$Callback;


# instance fields
.field private alpha:F

.field private alphas:[F

.field private final animator:Landroid/animation/ValueAnimator;

.field private final animatorValues:[F

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final barPaint:Landroid/graphics/Paint;

.field private final bottomOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

.field private final bottomOverlayRect:Landroid/graphics/Rect;

.field private currentAnimationValue:F

.field private currentLoadingAnimationDirection:I

.field private currentLoadingAnimationProgress:F

.field private currentProgress:F

.field private final indicatorRect:Landroid/graphics/RectF;

.field private isOverlaysVisible:Z

.field lastCurrentItem:I

.field private lastTime:J

.field private overlayCountVisible:I

.field path:Landroid/graphics/Path;

.field private final pressedOverlayAlpha:[F

.field private final pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

.field private final pressedOverlayVisible:[Z

.field private previousSelectedPotision:I

.field private previousSelectedProgress:F

.field protected profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

.field private progressToCounter:F

.field private final rect:Landroid/graphics/RectF;

.field rectF:Landroid/graphics/RectF;

.field private final selectedBarPaint:Landroid/graphics/Paint;

.field private selectedPosition:I

.field private final statusBarHeight:I

.field textPaint:Landroid/text/TextPaint;

.field title:Ljava/lang/String;

.field private final topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

.field private final topOverlayRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$wXg0i3IKSb4KfUj5-y5ToQNbcjc(Lorg/telegram/ui/AvatarPreviewPagerIndicator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->indicatorRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->statusBarHeight:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->overlayCountVisible:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->topOverlayRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->bottomOverlayRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->animatorValues:[F

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->path:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->rectF:Landroid/graphics/RectF;

    new-array v3, v2, [Landroid/graphics/drawable/GradientDrawable;

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    new-array v3, v2, [Z

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayVisible:[Z

    new-array v3, v2, [F

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayAlpha:[F

    iput v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alphas:[F

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->previousSelectedPotision:I

    iput v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationDirection:I

    iput v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->lastCurrentItem:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->barPaint:Landroid/graphics/Paint;

    const v4, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->selectedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v5, 0x42000000    # 32.0f

    filled-new-array {v5, p1}, [I

    move-result-object v6

    invoke-direct {v3, v4, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v5, p1}, [I

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->bottomOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    if-nez v3, :cond_0

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_0
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v7, 0x32000000

    filled-new-array {v7, p1}, [I

    move-result-object v7

    invoke-direct {v6, v4, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    aput-object v6, v5, v3

    iget-object v4, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x42

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    new-array p1, v2, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lorg/telegram/ui/AvatarPreviewPagerIndicator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/AvatarPreviewPagerIndicator$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/AvatarPreviewPagerIndicator;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lorg/telegram/ui/AvatarPreviewPagerIndicator$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/AvatarPreviewPagerIndicator$1;-><init>(Lorg/telegram/ui/AvatarPreviewPagerIndicator;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->textPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->textPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->textPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/AvatarPreviewPagerIndicator;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->isOverlaysVisible:Z

    return p0
.end method

.method private getCurrentTitle()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->lastCurrentItem:I

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->title:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->lastCurrentItem:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->title:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->animatorValues:[F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentAnimationValue:F

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp([FF)F

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->setAlphaValue(FZ)V

    return-void
.end method


# virtual methods
.method public getProfileGalleryView()Lorg/telegram/ui/Components/ProfileGalleryView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    return-object v0
.end method

.method public onDown(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayVisible:[Z

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    aput-boolean v1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ge v3, v5, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayAlpha:[F

    aget v5, v5, v3

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    iget-object v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v6, v6, v3

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->topOverlayRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->selectedPosition:I

    iget-object v7, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alphas:[F

    if-eqz v7, :cond_2

    array-length v7, v7

    if-eq v7, v3, :cond_3

    :cond_2
    new-array v7, v3, [F

    iput-object v7, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alphas:[F

    invoke-static {v7, v6}, Ljava/util/Arrays;->fill([FF)V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->lastTime:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-ltz v13, :cond_4

    const-wide/16 v11, 0x14

    cmp-long v13, v9, v11

    if-lez v13, :cond_5

    :cond_4
    const-wide/16 v9, 0x11

    :cond_5
    iput-wide v7, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->lastTime:J

    const/high16 v8, 0x41000000    # 8.0f

    const/16 v11, 0x14

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    if-le v3, v12, :cond_1c

    if-gt v3, v11, :cond_1c

    iget v14, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->overlayCountVisible:I

    const/4 v15, 0x3

    if-nez v14, :cond_6

    iput v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    iput v15, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->overlayCountVisible:I

    goto :goto_1

    :cond_6
    if-ne v14, v12, :cond_7

    iput v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    iput v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->overlayCountVisible:I

    :cond_7
    :goto_1
    iget v14, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->overlayCountVisible:I

    const/high16 v16, 0x42aa0000    # 85.0f

    if-ne v14, v5, :cond_8

    iget-object v14, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->barPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->selectedBarPaint:Landroid/graphics/Paint;

    iget v14, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    mul-float v14, v14, v4

    float-to-int v4, v14

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v4, v3, -0x1

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    div-int/2addr v2, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_2
    const/high16 v18, 0x43fa0000    # 500.0f

    if-ge v14, v3, :cond_14

    mul-int/lit8 v19, v14, 0x2

    add-int/lit8 v12, v19, 0x5

    int-to-float v12, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    mul-int v19, v2, v14

    add-int v12, v12, v19

    iget v8, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->previousSelectedPotision:I

    const/16 v20, 0x50

    const/high16 v21, 0x40000000    # 2.0f

    if-ne v14, v8, :cond_9

    iget v8, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->previousSelectedProgress:F

    sub-float/2addr v8, v13

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v22, 0x38d1b717    # 1.0E-4f

    cmpl-float v8, v8, v22

    if-lez v8, :cond_9

    iget v8, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->previousSelectedProgress:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v11, v12

    int-to-float v7, v2

    mul-float v7, v7, v8

    add-float/2addr v7, v11

    int-to-float v5, v4

    add-int v15, v12, v2

    int-to-float v15, v15

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v6, v4, v17

    int-to-float v6, v6

    invoke-virtual {v1, v7, v5, v15, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->rect:Landroid/graphics/RectF;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v4

    int-to-float v7, v7

    invoke-virtual {v6, v11, v5, v15, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->barPaint:Landroid/graphics/Paint;

    iget v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    mul-float v6, v6, v16

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->rect:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v11, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v11, v14

    :goto_3
    const/16 v6, 0x50

    const/16 v17, 0x1

    goto/16 :goto_7

    :cond_9
    iget v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->selectedPosition:I

    const/16 v6, 0x55

    if-ne v14, v5, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->isCurrentItemVideo()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemProgress()F

    move-result v8

    iput v8, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentProgress:F

    const/4 v5, 0x0

    cmpg-float v6, v8, v5

    if-gtz v6, :cond_a

    iget-object v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ProfileGalleryView;->isLoadingCurrentVideo()Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    iget v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationProgress:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_d

    :cond_b
    iget v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationProgress:F

    iget v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationDirection:I

    move v11, v14

    int-to-long v13, v6

    mul-long v13, v13, v9

    long-to-float v13, v13

    div-float v13, v13, v18

    add-float/2addr v5, v13

    iput v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v13, v5, v7

    if-lez v13, :cond_c

    iput v7, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationProgress:F

    :goto_4
    mul-int/lit8 v6, v6, -0x1

    iput v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationDirection:I

    goto :goto_5

    :cond_c
    const/4 v13, 0x0

    cmpg-float v5, v5, v13

    if-gtz v5, :cond_e

    iput v13, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationProgress:F

    goto :goto_4

    :cond_d
    move v11, v14

    :cond_e
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->rect:Landroid/graphics/RectF;

    int-to-float v6, v12

    int-to-float v13, v4

    add-int v14, v12, v2

    int-to-float v14, v14

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v4

    int-to-float v15, v15

    invoke-virtual {v5, v6, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->barPaint:Landroid/graphics/Paint;

    iget v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationProgress:F

    const/high16 v13, 0x42400000    # 48.0f

    mul-float v6, v6, v13

    add-float v6, v6, v16

    iget v13, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    mul-float v6, v6, v13

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->rect:Landroid/graphics/RectF;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v13, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_f
    move v11, v14

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentProgress:F

    :goto_6
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_10
    move v11, v14

    goto :goto_6

    :goto_7
    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->rect:Landroid/graphics/RectF;

    int-to-float v12, v12

    int-to-float v13, v4

    int-to-float v14, v2

    mul-float v14, v14, v8

    add-float/2addr v14, v12

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {v5, v12, v13, v14, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->selectedPosition:I

    if-eq v11, v5, :cond_11

    iget v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->overlayCountVisible:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_12

    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->barPaint:Landroid/graphics/Paint;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v12, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alphas:[F

    aget v12, v12, v11

    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    const/16 v12, 0xff

    invoke-static {v6, v12, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    iget v8, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    mul-float v6, v6, v8

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alphas:[F

    const/high16 v6, 0x3f400000    # 0.75f

    aput v6, v5, v11

    :cond_12
    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->rect:Landroid/graphics/RectF;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v8, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v6, v12

    iget v12, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->selectedPosition:I

    if-ne v11, v12, :cond_13

    iget-object v12, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->selectedBarPaint:Landroid/graphics/Paint;

    goto :goto_9

    :cond_13
    iget-object v12, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->barPaint:Landroid/graphics/Paint;

    :goto_9
    invoke-virtual {v1, v5, v8, v6, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v11, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v8, 0x41000000    # 8.0f

    const/16 v11, 0x14

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_14
    iget v2, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->overlayCountVisible:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_17

    iget v2, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v4

    if-gez v5, :cond_16

    long-to-float v5, v9

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    iput v2, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_15

    iput v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    :cond_15
    const/16 v2, 0x14

    const/16 v17, 0x1

    goto :goto_d

    :cond_16
    const/4 v4, 0x3

    iput v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->overlayCountVisible:I

    goto :goto_c

    :cond_17
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1b

    const/4 v2, 0x0

    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alphas:[F

    array-length v5, v4

    if-ge v2, v5, :cond_1b

    iget v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->selectedPosition:I

    const/4 v6, -0x1

    if-eq v2, v5, :cond_19

    aget v5, v4, v2

    const/4 v8, 0x0

    cmpl-float v11, v5, v8

    if-lez v11, :cond_19

    long-to-float v11, v9

    div-float v11, v11, v18

    sub-float/2addr v5, v11

    aput v5, v4, v2

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_18

    aput v8, v4, v2

    iget v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->previousSelectedPotision:I

    if-ne v2, v4, :cond_18

    iput v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->previousSelectedPotision:I

    :cond_18
    const/16 v17, 0x1

    goto :goto_b

    :cond_19
    iget v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->previousSelectedPotision:I

    if-ne v2, v4, :cond_1a

    iput v6, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->previousSelectedPotision:I

    :cond_1a
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    :goto_c
    const/16 v2, 0x14

    goto :goto_d

    :cond_1c
    const/16 v2, 0x14

    const/16 v17, 0x0

    :goto_d
    if-gt v3, v2, :cond_1d

    iget v2, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->progressToCounter:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_23

    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->textPaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->getCurrentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->indicatorRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->indicatorRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v2, v6

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->indicatorRect:Landroid/graphics/RectF;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->indicatorRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v4, 0x14

    if-le v3, v4, :cond_1e

    const/4 v3, 0x1

    goto :goto_e

    :cond_1e
    const/4 v3, 0x0

    :goto_e
    const/high16 v4, 0x43160000    # 150.0f

    if-eqz v3, :cond_1f

    iget v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->progressToCounter:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v6

    if-eqz v8, :cond_1f

    long-to-float v3, v9

    div-float/2addr v3, v4

    add-float/2addr v5, v3

    iput v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->progressToCounter:F

    goto :goto_f

    :cond_1f
    if-nez v3, :cond_20

    iget v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->progressToCounter:F

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_20

    long-to-float v5, v9

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    iput v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->progressToCounter:F

    :cond_20
    :goto_f
    iget v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->progressToCounter:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_21

    :goto_10
    iput v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->progressToCounter:F

    goto :goto_11

    :cond_21
    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_22

    goto :goto_10

    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_11
    iget v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->progressToCounter:F

    iget-object v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->indicatorRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->indicatorRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->indicatorRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->getCurrentTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->indicatorRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->indicatorRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x41940000    # 18.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_23
    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_29

    iget-object v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayVisible:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_27

    iget-object v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayAlpha:[F

    aget v4, v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_25

    long-to-float v6, v9

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    aput v4, v3, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_24

    aput v5, v3, v2

    :cond_24
    const/4 v6, 0x0

    const/high16 v8, 0x43340000    # 180.0f

    goto :goto_13

    :cond_25
    const/4 v6, 0x0

    :cond_26
    const/high16 v8, 0x43340000    # 180.0f

    goto :goto_14

    :cond_27
    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v3, v0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayAlpha:[F

    aget v4, v3, v2

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-lez v7, :cond_26

    long-to-float v7, v9

    const/high16 v8, 0x43340000    # 180.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    aput v4, v3, v2

    cmpg-float v4, v4, v6

    if-gez v4, :cond_28

    aput v6, v3, v2

    :cond_28
    :goto_13
    const/16 v17, 0x1

    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_29
    if-eqz v17, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->path:Landroid/graphics/Path;

    iget-object p2, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v2, 0x1

    aput v3, v5, v2

    const/4 v2, 0x2

    aput v4, v5, v2

    const/4 v2, 0x3

    aput v0, v5, v2

    const/4 v0, 0x4

    aput v1, v5, v0

    const/4 v0, 0x5

    aput v1, v5, v0

    const/4 v0, 0x6

    aput v1, v5, v0

    const/4 v0, 0x7

    aput v1, v5, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v5, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public onPhotosLoaded()V
    .locals 0

    return-void
.end method

.method public onRelease()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayVisible:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->topOverlayRect:Landroid/graphics/Rect;

    int-to-float v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v2, 0x0

    invoke-virtual {p4, v2, v2, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->bottomOverlayRect:Landroid/graphics/Rect;

    int-to-float v0, p2

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p4, v2, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->topOverlayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p4, v2, v0, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->bottomOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int p4, p2, p4

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p4, v0

    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->bottomOverlayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v2, p4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    aget-object p3, p3, v2

    div-int/lit8 p4, p1, 0x5

    invoke-virtual {p3, v2, v2, p4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    sub-int p4, p1, p4

    invoke-virtual {p3, p4, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public onVideoSet()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public saveCurrentPageProgress()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->previousSelectedProgress:F

    iget v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->selectedPosition:I

    iput v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->previousSelectedPotision:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationProgress:F

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentLoadingAnimationDirection:I

    return-void
.end method

.method public setAlphaValue(FZ)V
    .locals 3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->bottomOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42840000    # 66.0f

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->barPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42aa0000    # 85.0f

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->selectedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iput p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->alpha:F

    if-nez p2, :cond_0

    iput p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->currentAnimationValue:F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProfileGalleryView(Lorg/telegram/ui/Components/ProfileGalleryView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    return-void
.end method
