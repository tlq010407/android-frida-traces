.class Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TooltipDrawableView"
.end annotation


# instance fields
.field fadePaint:Landroid/graphics/Paint;

.field fadePaintBack:Landroid/graphics/Paint;

.field fromProgress:F

.field paint:Landroid/graphics/Paint;

.field paint2:Landroid/graphics/Paint;

.field progress:F

.field random:Ljava/util/Random;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

.field toProgress:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;Landroid/content/Context;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->this$0:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->random:Ljava/util/Random;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->progress:F

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fromProgress:F

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->paint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/16 v4, 0x4c

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->paint2:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const/4 v11, 0x0

    const/4 v12, -0x1

    filled-new-array {v11, v12}, [I

    move-result-object v7

    const/4 v13, 0x2

    new-array v8, v13, [F

    fill-array-data v8, :array_0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, v1

    move-object/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fadePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fadePaintBack:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    filled-new-array {v11, v12}, [I

    move-result-object v19

    new-array v4, v13, [F

    fill-array-data v4, :array_1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v14, v1

    move/from16 v18, v2

    move-object/from16 v20, v4

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fadePaintBack:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fadePaintBack:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

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


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v9, v1, v2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v9

    const/4 v2, 0x7

    mul-int/lit8 v1, v1, 0x7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v4, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->progress:F

    const/4 v11, 0x0

    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v6, v4, v5

    if-lez v6, :cond_0

    sub-float/2addr v4, v5

    const v5, 0x3f19999a    # 0.6f

    div-float/2addr v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fromProgress:F

    sub-float v5, v10, v3

    mul-float v4, v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->toProgress:F

    mul-float v5, v5, v3

    add-float v12, v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    neg-int v1, v1

    int-to-float v1, v1

    mul-float v1, v1, v12

    invoke-virtual {v8, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v9

    mul-int v4, v4, v1

    add-int/2addr v3, v4

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v9

    add-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v4, v11, v5, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v14, v15, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v9

    int-to-float v2, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v14, v9

    add-int/2addr v14, v9

    int-to-float v14, v14

    invoke-virtual {v4, v2, v5, v14, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x7

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fadePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v8, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fadePaintBack:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v12

    add-float/2addr v1, v2

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v9, v3

    int-to-float v3, v9

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {v2, v5, v6, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->progress:F

    const v2, 0x3c83126f    # 0.016f

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->progress:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_3

    iget v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->toProgress:F

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fromProgress:F

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->toProgress:F

    iget v2, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->fromProgress:F

    const v3, 0x3e99999a    # 0.3f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    add-float/2addr v1, v3

    :goto_2
    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->toProgress:F

    goto :goto_3

    :cond_2
    sub-float/2addr v1, v3

    goto :goto_2

    :goto_3
    iget v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->toProgress:F

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->toProgress:F

    iput v11, v0, Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip$TooltipDrawableView;->progress:F

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
