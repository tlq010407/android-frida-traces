.class public Lorg/telegram/messenger/BotFullscreenButtons;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;
    }
.end annotation


# instance fields
.field private final animatedBack:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedDownloading:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedPreview:Lorg/telegram/ui/Components/AnimatedFloat;

.field private back:Z

.field private final backText:Lorg/telegram/ui/Components/Text;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundPath:Landroid/graphics/Path;

.field private blurNode:Landroid/graphics/RenderNode;

.field private final closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final closeRect:Landroid/graphics/RectF;

.field private final closeRectArea:Landroid/graphics/RectF;

.field private final closeText:Lorg/telegram/ui/Components/Text;

.field private final collapseBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final collapseClickRect:Landroid/graphics/RectF;

.field private final collapseRect:Landroid/graphics/RectF;

.field private final downloadPaint:Landroid/graphics/Paint;

.field private final downloadPath:Landroid/graphics/Path;

.field private downloading:Z

.field private final hidePreview:Ljava/lang/Runnable;

.field private final iconPaint:Landroid/graphics/Paint;

.field private final iconStrokePaint:Landroid/graphics/Paint;

.field private final insets:Landroid/graphics/RectF;

.field private final leftMenu:Landroid/graphics/RectF;

.field private final menuBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final menuClickRect:Landroid/graphics/RectF;

.field private final menuRect:Landroid/graphics/RectF;

.field private final nullBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public onCloseClickListener:Ljava/lang/Runnable;

.field public onCollapseClickListener:Ljava/lang/Runnable;

.field public onMenuClickListener:Ljava/lang/Runnable;

.field public parentRenderNode:Ljava/lang/Object;

.field pressed:I

.field private preview:Z

.field private final previewClip:Lorg/telegram/ui/GradientClip;

.field private previewText:Lorg/telegram/ui/Components/Text;

.field private final rightMenu:Landroid/graphics/RectF;

.field private final start:J

.field private verifiedBackground:Landroid/graphics/drawable/Drawable;

.field private verifiedForeground:Landroid/graphics/drawable/Drawable;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$DVLW-KZOjz7Uendup83Ns8fmZp0(Lorg/telegram/messenger/BotFullscreenButtons;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/BotFullscreenButtons;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->iconPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->iconStrokePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->nullBounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRectArea:Landroid/graphics/RectF;

    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->rightMenu:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseRect:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseClickRect:Landroid/graphics/RectF;

    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseBounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->menuRect:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->menuClickRect:Landroid/graphics/RectF;

    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->menuBounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v11, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x140

    move-object v4, v3

    move-object v5, p0

    move-object v10, v11

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->animatedBack:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-boolean v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->preview:Z

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v8, 0x1a4

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->animatedPreview:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->downloading:Z

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->animatedDownloading:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/GradientClip;

    invoke-direct {v0}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->previewClip:Lorg/telegram/ui/GradientClip;

    new-instance v0, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/BotFullscreenButtons;)V

    iput-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->hidePreview:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/messenger/BotFullscreenButtons;->start:J

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    new-instance p1, Lorg/telegram/ui/Components/Text;

    sget v0, Lorg/telegram/messenger/R$string;->BotFullscreenBack:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    invoke-direct {p1, v0, v4, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->backText:Lorg/telegram/ui/Components/Text;

    new-instance p1, Lorg/telegram/ui/Components/Text;

    sget v0, Lorg/telegram/messenger/R$string;->BotFullscreenClose:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {p1, v0, v4, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->closeText:Lorg/telegram/ui/Components/Text;

    new-instance p1, Landroid/graphics/CornerPathEffect;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p1, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    const p1, 0x3faa3d71    # 1.33f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    neg-float v0, v0

    const v1, 0x3e23d70a    # 0.16f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    neg-float v0, v0

    const/high16 v3, 0x40600000    # 3.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    neg-float p1, p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private getBounce(I)Lorg/telegram/ui/Components/ButtonBounce;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->nullBounce:Lorg/telegram/ui/Components/ButtonBounce;

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->menuBounce:Lorg/telegram/ui/Components/ButtonBounce;

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseBounce:Lorg/telegram/ui/Components/ButtonBounce;

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

    return-object p1
.end method

.method private getButton(Landroid/view/MotionEvent;)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRectArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseClickRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->menuClickRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/BotFullscreenButtons;->setPreview(ZZ)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconPaint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconStrokePaint:Landroid/graphics/Paint;

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->rightMenu:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    const v3, 0x429f51ec    # 79.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x42180000    # 38.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v11

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->rightMenu:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->rightMenu:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v3, v5, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseClickRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v5, v11

    invoke-virtual {v1, v2, v3, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->menuRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->rightMenu:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->rightMenu:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v5, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->menuClickRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->menuRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget-object v5, v0, Lorg/telegram/messenger/BotFullscreenButtons;->menuRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->menuRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v11

    invoke-virtual {v1, v3, v2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->rightMenu:Landroid/graphics/RectF;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v5, v6, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->animatedBack:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->back:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v12

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->animatedPreview:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->preview:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v13

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->rightMenu:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget-object v5, v0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    iget-object v5, v0, Lorg/telegram/messenger/BotFullscreenButtons;->previewText:Lorg/telegram/ui/Components/Text;

    const/high16 v14, 0x41400000    # 12.0f

    const/high16 v15, 0x41f00000    # 30.0f

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v5

    iget-object v9, v0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    const/high16 v9, 0x41f00000    # 30.0f

    goto :goto_0

    :cond_1
    const/high16 v9, 0x41400000    # 12.0f

    :goto_0
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v5, v9

    :goto_1
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v1

    iget-object v5, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v5

    invoke-static {v1, v5, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    invoke-static {v1, v9, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget-object v5, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget-object v14, v0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v14, v10

    iget-object v10, v0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v10, v6

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v6, v2

    add-float/2addr v6, v1

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v5, v14, v10, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget-object v7, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v5, v2, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRectArea:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRectArea:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v2, v5, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRectArea:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v5, v3, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->parentRenderNode:Ljava/lang/Object;

    const/high16 v2, -0x1000000

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v11, 0x0

    const/4 v14, 0x2

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-ne v1, v14, :cond_4

    :cond_2
    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->blurNode:Landroid/graphics/RenderNode;

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/RenderNode;

    const-string v3, "bot_fullscreen_blur"

    invoke-direct {v1, v3}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->blurNode:Landroid/graphics/RenderNode;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {v5, v3, v6}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/RenderNode;Landroid/graphics/RenderEffect;)Z

    :cond_3
    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->parentRenderNode:Ljava/lang/Object;

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RenderNode;)I

    move-result v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x42380000    # 46.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RenderNode;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->blurNode:Landroid/graphics/RenderNode;

    invoke-static {v6, v11, v11, v3, v5}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;IIII)Z

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->blurNode:Landroid/graphics/RenderNode;

    invoke-static {v3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v3, v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->blurNode:Landroid/graphics/RenderNode;

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/RenderNode;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->blurNode:Landroid/graphics/RenderNode;

    invoke-static {v8, v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPaint:Landroid/graphics/Paint;

    const v3, 0x3e6147ae    # 0.22f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPaint:Landroid/graphics/Paint;

    const v3, 0x3eb33333    # 0.35f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v7, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x40d00000    # 6.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float v1, v1, v12

    const/4 v6, 0x0

    invoke-virtual {v8, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const v1, 0x40951eb8    # 4.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    neg-float v4, v5

    invoke-static {v4, v6, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-static {v4, v6, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    move v7, v4

    move v4, v5

    move/from16 v17, v5

    const/4 v11, 0x0

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {v7, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    move/from16 v4, v17

    invoke-static {v4, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconStrokePaint:Landroid/graphics/Paint;

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    cmpl-float v1, v12, v11

    if-lez v1, :cond_5

    const v1, 0x4139999a    # 11.6f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v1, v12

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconStrokePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v16, 0x41200000    # 10.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v1, v13, v11

    if-lez v1, :cond_9

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->previewText:Lorg/telegram/ui/Components/Text;

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float v2, v6, v13

    mul-float v9, v9, v2

    sub-float/2addr v1, v9

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->previewText:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    const/high16 v3, 0x41f00000    # 30.0f

    goto :goto_3

    :cond_6
    const/high16 v3, 0x41400000    # 12.0f

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    move-object/from16 v2, p1

    const/high16 v9, 0x3f800000    # 1.0f

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->previewText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    neg-int v3, v1

    div-int/2addr v3, v14

    div-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x42960000    # 75.0f

    mul-float v3, v3, v13

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    neg-int v3, v1

    div-int/2addr v3, v14

    div-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedForeground:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v13

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/messenger/BotFullscreenButtons;->leftMenu:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->previewClip:Lorg/telegram/ui/GradientClip;

    invoke-virtual {v2, v8, v1, v14, v9}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_9
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_4
    cmpg-float v1, v13, v9

    if-gez v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v10, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-float v14, v9, v12

    const/high16 v16, 0x42000000    # 32.0f

    cmpl-float v1, v14, v11

    if-lez v1, :cond_a

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeText:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v3, v4

    mul-float v3, v3, v12

    sub-float/2addr v2, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v13

    add-float/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v6, v9, v13

    mul-float v6, v6, v14

    const/4 v5, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_a
    cmpl-float v1, v12, v11

    if-lez v1, :cond_b

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->backText:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v14

    add-float/2addr v2, v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v13

    add-float/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->closeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v6, v9, v13

    mul-float v6, v6, v12

    const/4 v5, -0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_c
    const v10, 0x3dcccccd    # 0.1f

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->collapseBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v12, v1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v13, v1

    neg-float v2, v12

    neg-float v14, v13

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconStrokePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move v3, v14

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconStrokePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move v3, v13

    move v4, v12

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->menuRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->menuRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->menuBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const v2, 0x3fd47ae1    # 1.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v11, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/messenger/BotFullscreenButtons;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->animatedDownloading:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->downloading:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    cmpl-float v2, v1, v11

    if-lez v2, :cond_e

    const v2, 0x4102a7f0    # 8.166f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x40600000    # 3.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-float/2addr v1, v2

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPaint:Landroid/graphics/Paint;

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, -0x1

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v12, v0, Lorg/telegram/messenger/BotFullscreenButtons;->start:J

    sub-long/2addr v4, v12

    const-wide/16 v12, 0x1c2

    rem-long/2addr v4, v12

    long-to-float v1, v4

    const/high16 v4, 0x43e10000    # 450.0f

    div-float/2addr v1, v4

    add-float/2addr v2, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    neg-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-static {v5, v6, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    neg-float v6, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    invoke-static {v6, v10, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    invoke-virtual {v8, v4, v1, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-static {v4, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    cmpl-float v1, v2, v9

    if-lez v1, :cond_d

    sub-float/2addr v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-static {v4, v5, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    neg-float v6, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v6, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v8, v1, v4, v5, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/messenger/BotFullscreenButtons;->downloadPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->pressed:I

    invoke-direct {p0, v0}, Lorg/telegram/messenger/BotFullscreenButtons;->getBounce(I)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    invoke-direct {p0, p1}, Lorg/telegram/messenger/BotFullscreenButtons;->getButton(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->pressed:I

    invoke-direct {p0, p1}, Lorg/telegram/messenger/BotFullscreenButtons;->getBounce(I)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/BotFullscreenButtons;->getButton(Landroid/view/MotionEvent;)I

    move-result p1

    iget v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->pressed:I

    if-eq p1, v0, :cond_6

    iput v2, p0, Lorg/telegram/messenger/BotFullscreenButtons;->pressed:I

    invoke-direct {p0, v2}, Lorg/telegram/messenger/BotFullscreenButtons;->getBounce(I)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v1, :cond_4

    iget p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->pressed:I

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->onCloseClickListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->onCollapseClickListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_5

    iget-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->onMenuClickListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_6

    :cond_5
    :goto_1
    iget p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->pressed:I

    invoke-direct {p0, p1}, Lorg/telegram/messenger/BotFullscreenButtons;->getBounce(I)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iput v2, p0, Lorg/telegram/messenger/BotFullscreenButtons;->pressed:I

    :cond_6
    :goto_2
    iget p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->pressed:I

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public setBack(Z)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/BotFullscreenButtons;->setBack(ZZ)V

    return-void
.end method

.method public setBack(ZZ)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->back:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/messenger/BotFullscreenButtons;->animatedBack:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDownloading(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->downloading:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->downloading:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/RectF;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->insets:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setName(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Text;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-direct {v0, p1, v2, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->previewText:Lorg/telegram/ui/Components/Text;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedForeground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->verified_area:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->verified_check:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setOnCloseClickListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->onCloseClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnCollapseClickListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->onCollapseClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnMenuClickListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->onMenuClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setParentRenderNode(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->parentRenderNode:Ljava/lang/Object;

    return-void
.end method

.method public setPreview(ZZ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/BotFullscreenButtons;->hidePreview:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-boolean p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->preview:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/messenger/BotFullscreenButtons;->animatedPreview:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->hidePreview:Ljava/lang/Runnable;

    const-wide/16 v0, 0x9c4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/BotFullscreenButtons;->webView:Landroid/webkit/WebView;

    return-void
.end method
