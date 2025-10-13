.class Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabPreview"
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field public final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public final clickBounds:Landroid/graphics/RectF;

.field private final clipPath:Landroid/graphics/Path;

.field private dismissAnimator:Landroid/animation/ValueAnimator;

.field public dismissProgress:F

.field private final dst:[F

.field private final gradient:Landroid/graphics/RadialGradient;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private final gradientPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field public final parentView:Landroid/view/View;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private final src:[F

.field private final tabBounds:Landroid/graphics/RectF;

.field public final tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

.field public final tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$AYGFEWFhhiGH9NmwHbUFx6HBwyk(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->lambda$animateDismiss$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clickBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->matrix:Landroid/graphics/Matrix;

    const/16 v2, 0x8

    new-array v3, v2, [F

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->src:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dst:[F

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clipPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RadialGradient;

    const/4 v3, 0x0

    const/high16 v4, 0x30000000

    filled-new-array {v3, v4}, [I

    move-result-object v8

    const/4 v3, 0x2

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v5, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradient:Landroid/graphics/RadialGradient;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->parentView:Landroid/view/View;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    new-instance p3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iget p1, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backgroundColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dst:[F

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->src:[F

    return-object p0
.end method

.method private synthetic lambda$animateDismiss$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->parentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateDismiss(F)V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->cancelDismissAnimator()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    const-wide v0, 0x4071d00000000000L    # 285.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->applySpring(Landroid/animation/Animator;DD)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public cancelDismissAnimator()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZFFFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    sub-float/2addr v1, v2

    const v2, 0x3f333333    # 0.7f

    div-float/2addr v1, v2

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v1, v11, v1

    const/4 v12, 0x0

    invoke-static {v1, v11, v12}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    mul-float v13, p4, v1

    cmpg-float v1, v13, v12

    if-gtz v1, :cond_0

    return-void

    :cond_0
    sub-float v14, v11, p6

    mul-float v1, v10, v14

    const v2, 0x3fa66666    # 1.3f

    invoke-static {v11, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v15

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v16, 0x42480000    # 50.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v7, p6, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v2, v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget v4, v9, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x43af0000    # 350.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v8, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v3, 0x3c23d70a    # 0.01f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v8, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3, v4, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v6, v3

    const/high16 v3, 0x20000000

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v5, 0x0

    const/high16 v17, 0x437f0000    # 255.0f

    if-eqz p3, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v13, v10

    mul-float v5, v5, v14

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v1, v4, v12, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v6, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->backgroundPaint:Landroid/graphics/Paint;

    mul-float v13, v13, v17

    float-to-int v2, v13

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v6, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clipPath:Landroid/graphics/Path;

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v9, v6, v6, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v11, v13, v10

    mul-float v12, v11, v14

    invoke-static {v3, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const/4 v12, 0x0

    invoke-virtual {v5, v4, v12, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clipPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->backgroundPaint:Landroid/graphics/Paint;

    mul-float v3, v13, v17

    mul-float v12, v3, v10

    float-to-int v5, v12

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v6, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v9, Landroid/graphics/RectF;->left:F

    iget v3, v9, Landroid/graphics/RectF;->top:F

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v15

    add-float/2addr v3, v4

    add-float/2addr v3, v7

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3fa00000    # 1.25f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v8, v3, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->previewNode:Ljava/lang/Object;

    if-eqz v1, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RenderNode;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->previewNode:Ljava/lang/Object;

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RenderNode;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v8, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-static {v1, v11}, Lorg/telegram/messenger/pip/source/PipSourceSnapshot$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/RenderNode;F)Z

    invoke-static {v8, v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    :cond_2
    :goto_1
    move/from16 p3, v6

    move v11, v7

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->previewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->previewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabData:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->previewBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v11, v1

    const/4 v3, 0x0

    const/16 v18, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move/from16 v19, v5

    move v5, v11

    move v11, v6

    move/from16 v6, v19

    move/from16 p3, v11

    move v11, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientPaint:Landroid/graphics/Paint;

    mul-float v12, v12, v14

    float-to-int v2, v12

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, v1, v17

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradient:Landroid/graphics/RadialGradient;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v11}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setExpandProgress(F)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v8, v3, v15, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabDrawable:Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->tabBounds:Landroid/graphics/RectF;

    mul-float v5, v13, v13

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public isPressed()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    return v0
.end method

.method public setPressed(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method
