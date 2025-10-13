.class Lorg/telegram/ui/ProfileActivity$OverlaysView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ProfileGalleryView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlaysView"
.end annotation


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

.field private isOverlaysVisible:Z

.field private lastTime:J

.field private final pressedOverlayAlpha:[F

.field private final pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

.field private final pressedOverlayVisible:[Z

.field private previousSelectedPotision:I

.field private previousSelectedProgress:F

.field private final rect:Landroid/graphics/RectF;

.field private final selectedBarPaint:Landroid/graphics/Paint;

.field private selectedPosition:I

.field private final statusBarHeight:I

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field private final topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

.field private final topOverlayRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$pElL-gCOy5Lvtdwn2ekBUnMw6Ro(Lorg/telegram/ui/ProfileActivity$OverlaysView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$OverlaysView;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->statusBarHeight:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->topOverlayRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->bottomOverlayRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->rect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->animatorValues:[F

    new-array v3, v1, [Landroid/graphics/drawable/GradientDrawable;

    iput-object v3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    new-array v3, v1, [Z

    iput-object v3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayVisible:[Z

    new-array v3, v1, [F

    iput-object v3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayAlpha:[F

    iput p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alphas:[F

    const/4 p2, -0x1

    iput p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->previousSelectedPotision:I

    iput v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentLoadingAnimationDirection:I

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->barPaint:Landroid/graphics/Paint;

    const v4, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->selectedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v4, 0x42000000    # 32.0f

    filled-new-array {v4, v2}, [I

    move-result-object v5

    invoke-direct {p2, v3, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v4, v2}, [I

    move-result-object v4

    invoke-direct {p2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->bottomOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v1, :cond_2

    if-nez p2, :cond_1

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :cond_1
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v6, 0x32000000

    filled-new-array {v6, v2}, [I

    move-result-object v6

    invoke-direct {v5, v3, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    aput-object v5, v4, p2

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v3, v3, p2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x42

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-array p2, v1, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lorg/telegram/ui/ProfileActivity$OverlaysView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$OverlaysView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$OverlaysView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/ProfileActivity$OverlaysView$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$OverlaysView$1;-><init>(Lorg/telegram/ui/ProfileActivity$OverlaysView;Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

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

.method static synthetic access$2000(Lorg/telegram/ui/ProfileActivity$OverlaysView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->isOverlaysVisible:Z

    return p0
.end method

.method static synthetic access$23900(Lorg/telegram/ui/ProfileActivity$OverlaysView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->animatorValues:[F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentAnimationValue:F

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp([FF)F

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ProfileActivity$OverlaysView;->setAlphaValue(FZ)V

    return-void
.end method


# virtual methods
.method public isOverlaysVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->isOverlaysVisible:Z

    return v0
.end method

.method public onDown(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayVisible:[Z

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    aput-boolean v1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ge v3, v5, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayAlpha:[F

    aget v5, v5, v3

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v6, v6, v3

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->bottomOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->topOverlayRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->bottomOverlayRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v7}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->selectedPosition:I

    iget-object v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alphas:[F

    if-eqz v7, :cond_2

    array-length v7, v7

    if-eq v7, v3, :cond_3

    :cond_2
    new-array v7, v3, [F

    iput-object v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alphas:[F

    invoke-static {v7, v6}, Ljava/util/Arrays;->fill([FF)V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->lastTime:J

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
    iput-wide v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->lastTime:J

    const/4 v8, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    if-le v3, v8, :cond_1b

    const/16 v12, 0x14

    if-gt v3, v12, :cond_1b

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v12

    const/4 v13, 0x3

    if-nez v12, :cond_6

    iput v6, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12, v13}, Lorg/telegram/ui/ProfileActivity;->access$2202(Lorg/telegram/ui/ProfileActivity;I)I

    goto :goto_1

    :cond_6
    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v12

    if-ne v12, v8, :cond_7

    iput v6, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12, v5}, Lorg/telegram/ui/ProfileActivity;->access$2202(Lorg/telegram/ui/ProfileActivity;I)I

    :cond_7
    :goto_1
    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v12

    const/high16 v14, 0x42aa0000    # 85.0f

    if-ne v12, v5, :cond_8

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->barPaint:Landroid/graphics/Paint;

    iget v15, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    mul-float v15, v15, v14

    float-to-int v15, v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v12, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->selectedBarPaint:Landroid/graphics/Paint;

    iget v15, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    mul-float v15, v15, v4

    float-to-int v4, v15

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v4, v12

    add-int/lit8 v12, v3, -0x1

    mul-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v4, v12

    div-int/2addr v4, v3

    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v15, v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_9

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v12, v2

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_3
    const/high16 v16, 0x43fa0000    # 500.0f

    if-ge v2, v3, :cond_14

    mul-int/lit8 v17, v2, 0x2

    add-int/lit8 v8, v17, 0x5

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    mul-int v17, v4, v2

    add-int v8, v8, v17

    iget v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->previousSelectedPotision:I

    const/16 v18, 0x50

    const/high16 v19, 0x40000000    # 2.0f

    if-ne v2, v7, :cond_a

    iget v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->previousSelectedProgress:F

    sub-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v20, 0x38d1b717    # 1.0E-4f

    cmpl-float v7, v7, v20

    if-lez v7, :cond_a

    iget v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->previousSelectedProgress:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v15, v8

    int-to-float v5, v4

    mul-float v5, v5, v7

    add-float/2addr v5, v15

    int-to-float v13, v12

    add-int v6, v8, v4

    int-to-float v6, v6

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v11, v12, v16

    int-to-float v11, v11

    invoke-virtual {v1, v5, v13, v6, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->rect:Landroid/graphics/RectF;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v5, v15, v13, v6, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->barPaint:Landroid/graphics/Paint;

    iget v6, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    mul-float v6, v6, v14

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->rect:Landroid/graphics/RectF;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v6, v13

    iget-object v13, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v11, v6, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/16 v6, 0x50

    const/high16 v11, 0x42aa0000    # 85.0f

    :goto_4
    const/4 v15, 0x1

    goto/16 :goto_8

    :cond_a
    iget v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->selectedPosition:I

    const/16 v6, 0x55

    if-ne v2, v5, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->isCurrentItemVideo()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemProgress()F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentProgress:F

    const/4 v5, 0x0

    cmpg-float v6, v7, v5

    if-gtz v6, :cond_b

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ProfileGalleryView;->isLoadingCurrentVideo()Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    iget v6, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentLoadingAnimationProgress:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_e

    :cond_c
    iget v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentLoadingAnimationProgress:F

    iget v6, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentLoadingAnimationDirection:I

    int-to-long v14, v6

    mul-long v14, v14, v9

    long-to-float v13, v14

    div-float v13, v13, v16

    add-float/2addr v5, v13

    iput v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentLoadingAnimationProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v14, v5, v13

    if-lez v14, :cond_d

    :goto_5
    iput v13, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentLoadingAnimationProgress:F

    mul-int/lit8 v6, v6, -0x1

    iput v6, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentLoadingAnimationDirection:I

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    cmpg-float v5, v5, v13

    if-gtz v5, :cond_e

    goto :goto_5

    :cond_e
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->rect:Landroid/graphics/RectF;

    int-to-float v6, v8

    int-to-float v13, v12

    add-int v14, v8, v4

    int-to-float v14, v14

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v12

    int-to-float v15, v15

    invoke-virtual {v5, v6, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->barPaint:Landroid/graphics/Paint;

    iget v6, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentLoadingAnimationProgress:F

    const/high16 v13, 0x42400000    # 48.0f

    mul-float v6, v6, v13

    const/high16 v11, 0x42aa0000    # 85.0f

    add-float/2addr v6, v11

    iget v13, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    mul-float v6, v6, v13

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->rect:Landroid/graphics/RectF;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v14, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/16 v6, 0x50

    goto/16 :goto_4

    :cond_f
    const/high16 v11, 0x42aa0000    # 85.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentProgress:F

    :goto_7
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_10
    const/high16 v11, 0x42aa0000    # 85.0f

    goto :goto_7

    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->rect:Landroid/graphics/RectF;

    int-to-float v8, v8

    int-to-float v13, v12

    int-to-float v14, v4

    mul-float v14, v14, v7

    add-float/2addr v14, v8

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v12

    int-to-float v7, v7

    invoke-virtual {v5, v8, v13, v14, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->selectedPosition:I

    if-eq v2, v5, :cond_11

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_12

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->barPaint:Landroid/graphics/Paint;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v8, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alphas:[F

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v7

    const/16 v8, 0xff

    invoke-static {v6, v8, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_9

    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alphas:[F

    const/high16 v6, 0x3f400000    # 0.75f

    aput v6, v5, v2

    :cond_12
    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->rect:Landroid/graphics/RectF;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v6, v8

    iget v8, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->selectedPosition:I

    if-ne v2, v8, :cond_13

    iget-object v8, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->selectedBarPaint:Landroid/graphics/Paint;

    goto :goto_a

    :cond_13
    iget-object v8, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->barPaint:Landroid/graphics/Paint;

    :goto_a
    invoke-virtual {v1, v5, v7, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x3

    const/high16 v14, 0x42aa0000    # 85.0f

    goto/16 :goto_3

    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    iget v1, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_16

    long-to-float v3, v9

    const/high16 v4, 0x43340000    # 180.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    iput v2, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    :cond_15
    const/4 v15, 0x1

    goto :goto_d

    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$2202(Lorg/telegram/ui/ProfileActivity;I)I

    goto :goto_d

    :cond_17
    const/4 v2, 0x3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x0

    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alphas:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1c

    iget v3, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->selectedPosition:I

    const/4 v4, -0x1

    if-eq v1, v3, :cond_19

    aget v3, v2, v1

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-lez v6, :cond_19

    long-to-float v6, v9

    div-float v6, v6, v16

    sub-float/2addr v3, v6

    aput v3, v2, v1

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_18

    aput v5, v2, v1

    iget v2, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->previousSelectedPotision:I

    if-ne v1, v2, :cond_18

    iput v4, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->previousSelectedPotision:I

    :cond_18
    const/4 v15, 0x1

    goto :goto_c

    :cond_19
    iget v2, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->previousSelectedPotision:I

    if-ne v1, v2, :cond_1a

    iput v4, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->previousSelectedPotision:I

    :cond_1a
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    const/4 v15, 0x0

    :cond_1c
    :goto_d
    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_22

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayVisible:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayAlpha:[F

    aget v4, v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1e

    long-to-float v6, v9

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    aput v4, v3, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1d

    aput v5, v3, v2

    :cond_1d
    const/4 v6, 0x0

    const/high16 v8, 0x43340000    # 180.0f

    goto :goto_f

    :cond_1e
    const/4 v6, 0x0

    :cond_1f
    const/high16 v8, 0x43340000    # 180.0f

    goto :goto_10

    :cond_20
    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayAlpha:[F

    aget v4, v3, v2

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-lez v7, :cond_1f

    long-to-float v7, v9

    const/high16 v8, 0x43340000    # 180.0f

    div-float/2addr v7, v8

    sub-float/2addr v4, v7

    aput v4, v3, v2

    cmpg-float v4, v4, v6

    if-gez v4, :cond_21

    aput v6, v3, v2

    :cond_21
    :goto_f
    const/4 v15, 0x1

    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    if-eqz v15, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_23
    return-void
.end method

.method public onPhotosLoaded()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method

.method public onRelease()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayVisible:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    iget p3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->topOverlayRect:Landroid/graphics/Rect;

    int-to-float v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v2, 0x0

    invoke-virtual {p4, v2, v2, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->bottomOverlayRect:Landroid/graphics/Rect;

    int-to-float v0, p2

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p4, v2, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->topOverlayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p4, v2, v0, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->bottomOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int p4, p2, p4

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p4, v0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->bottomOverlayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v2, p4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

    aget-object p3, p3, v2

    div-int/lit8 p4, p1, 0x5

    invoke-virtual {p3, v2, v2, p4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->pressedOverlayGradient:[Landroid/graphics/drawable/GradientDrawable;

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

    iget v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->previousSelectedProgress:F

    iget v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->selectedPosition:I

    iput v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->previousSelectedPotision:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentLoadingAnimationProgress:F

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentLoadingAnimationDirection:I

    return-void
.end method

.method public setAlphaValue(FZ)V
    .locals 3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->topOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->bottomOverlayGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42840000    # 66.0f

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->barPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42aa0000    # 85.0f

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->selectedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->alpha:F

    if-nez p2, :cond_0

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentAnimationValue:F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverlaysVisible()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->isOverlaysVisible:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOverlaysVisible(ZF)V
    .locals 6

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->isOverlaysVisible:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->isOverlaysVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->animatorValues:[F

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->currentAnimationValue:F

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp([FF)F

    move-result v0

    const/high16 v1, 0x437a0000    # 250.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    sub-float v4, v2, v0

    mul-float v4, v4, v1

    div-float/2addr v4, p2

    float-to-long v4, v4

    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_0
    mul-float v1, v1, v0

    div-float/2addr v1, p2

    float-to-long v4, v1

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->animatorValues:[F

    const/4 v1, 0x0

    aput v0, p2, v1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    const/4 p1, 0x1

    aput v2, p2, p1

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$OverlaysView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method
