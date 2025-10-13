.class public Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardBackground"
.end annotation


# instance fields
.field private animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

.field private backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

.field private final clipPath:Landroid/graphics/Path;

.field private gradient:Landroid/graphics/RadialGradient;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private gradientRadius:I

.field public final paint:Landroid/graphics/Paint;

.field private pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private final rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selected:Z

.field private final selectedPaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 7

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->clipPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v3, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;)V

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x140

    invoke-direct {v1, v3, v5, v6, v4}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->view:Landroid/view/View;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v1, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$1;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, p0, p1, v3}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;Landroid/view/View;I)V

    iput-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    new-instance v1, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$2;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p3, :cond_1

    const p1, 0x3fd47ae1    # 1.66f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const p3, 0x3ea8f5c3    # 0.33f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCardShadow:I

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_1
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->draw(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;F)V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selected:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    const v2, 0x40551eb8    # 3.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/high16 v2, -0x1000000

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradient:Landroid/graphics/RadialGradient;

    if-eqz v4, :cond_0

    iget v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientRadius:I

    if-eq v4, v1, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/RadialGradient;

    iput v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientRadius:I

    int-to-float v15, v1

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget v5, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v5, v2

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int/2addr v1, v2

    filled-new-array {v5, v5, v1}, [I

    move-result-object v16

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v12, v4

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradient:Landroid/graphics/RadialGradient;

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradient:Landroid/graphics/RadialGradient;

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->paint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradient:Landroid/graphics/RadialGradient;

    :goto_0
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    const/high16 v12, 0x41300000    # 11.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->clipPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const v1, 0x3f6ccccd    # 0.925f

    invoke-static {v3, v1, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    cmpg-float v1, p2, v3

    if-gez v1, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v6, v1

    sub-float v7, v3, p2

    const/4 v2, 0x2

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v13

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPattern(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;FFFF)V

    :cond_3
    cmpl-float v1, p2, v11

    if-lez v1, :cond_4

    const/high16 v1, -0x3e080000    # -31.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v5, v1

    const/4 v2, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPattern(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;FFFF)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    cmpl-float v1, v10, v11

    if-lez v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    const v2, 0x40151eb8    # 2.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    const v3, 0x40a54fdf    # 5.166f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const v3, 0x40d51eb8    # 6.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v2, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_6
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    const v0, 0x40551eb8    # 3.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradient:Landroid/graphics/RadialGradient;

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->invalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    :goto_0
    return-void
.end method

.method public setSelected(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selected:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selected:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->invalidate()V

    return-void
.end method
