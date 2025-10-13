.class public Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;
.super Lorg/telegram/ui/Components/CompatDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarGiftDrawableIcon"
.end annotation


# instance fields
.field private gradient:Landroid/graphics/RadialGradient;

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final matrix:Landroid/graphics/Matrix;

.field private final path:Landroid/graphics/Path;

.field private final pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private patternsScale:F

.field private patternsType:I

.field private final rect:Landroid/graphics/RectF;

.field private rounding:I

.field private final sizeDp:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stars$StarGift;IF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/CompatDrawable;-><init>(Landroid/view/View;)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->path:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->matrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rounding:I

    const/4 v4, 0x0

    iput v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->patternsType:I

    move/from16 v5, p4

    iput v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->patternsScale:F

    new-instance v5, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v5, v1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 v7, 0xb4

    if-le v3, v7, :cond_0

    const/high16 v7, 0x41c00000    # 24.0f

    goto :goto_0

    :cond_0
    const/high16 v7, 0x41900000    # 18.0f

    :goto_0
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-direct {v6, v1, v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZI)V

    iput-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iput v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->sizeDp:I

    if-eqz v2, :cond_3

    iget-object v7, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v7, v8}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v8, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v8, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {v2, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    if-eqz v8, :cond_1

    iget-object v8, v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v8, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    :cond_1
    if-eqz v7, :cond_2

    new-instance v4, Landroid/graphics/RadialGradient;

    int-to-float v8, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v12, v8, v9

    iget v8, v7, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    const/high16 v16, -0x1000000

    or-int v8, v8, v16

    iget v9, v7, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int v9, v9, v16

    filled-new-array {v8, v9}, [I

    move-result-object v13

    const/4 v8, 0x2

    new-array v14, v8, [F

    fill-array-data v14, :array_0

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->gradient:Landroid/graphics/RadialGradient;

    iget v4, v7, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int v4, v4, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    :cond_2
    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->onAttachedToWindow()V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rounding:I

    int-to-float v2, v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->gradient:Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->gradient:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->patternsType:I

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->patternsScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPattern(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    sub-float/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v4, v3

    invoke-virtual {v1, v2, v4, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->sizeDp:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->sizeDp:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method public onDetachedToWindow()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public setPatternsType(I)Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->patternsType:I

    return-object p0
.end method

.method public setRounding(I)Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StarGiftDrawableIcon;->rounding:I

    return-object p0
.end method
