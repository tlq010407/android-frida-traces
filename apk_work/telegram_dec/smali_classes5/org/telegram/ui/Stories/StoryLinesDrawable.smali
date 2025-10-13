.class public Lorg/telegram/ui/Stories/StoryLinesDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bufferingProgress:F

.field incrementBuffering:Z

.field lastPosition:I

.field private final sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

.field private final view:Landroid/view/View;

.field private final zoomHintLayout:Landroid/text/StaticLayout;

.field private final zoomHintLayoutLeft:F

.field private final zoomHintLayoutWidth:F

.field private final zoomHintPaint:Landroid/text/TextPaint;

.field private final zoomT:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->view:Landroid/view/View;

    move-object/from16 v1, p2

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    new-instance v8, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x168

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v8, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v11, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomHintPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x30000000

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v4, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v1, Landroid/text/StaticLayout;

    sget v2, Lorg/telegram/messenger/R$string;->StorySeekHelp:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v2, Landroid/graphics/Point;->x:I

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomHintLayoutLeft:F

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    :cond_1
    iput v4, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomHintLayoutWidth:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIFIFFZZF)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p9

    if-gtz v4, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x1

    if-eqz p8, :cond_1

    if-nez v5, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    iget v9, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->lastPosition:I

    const/4 v10, 0x0

    if-eq v9, v3, :cond_2

    iput v10, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    iput-boolean v7, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->incrementBuffering:Z

    :cond_2
    iput v3, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->lastPosition:I

    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v11, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->barPaint:Landroid/graphics/Paint;

    iget-object v9, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->selectedBarPaint:Landroid/graphics/Paint;

    const/16 v12, 0x64

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    if-le v4, v12, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/16 v12, 0x32

    if-lt v4, v12, :cond_4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    goto :goto_1

    :cond_4
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    :goto_1
    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int v15, v2, v15

    add-int/lit8 v16, v4, -0x1

    mul-int v16, v16, v12

    sub-int v15, v15, v16

    int-to-float v15, v15

    int-to-float v7, v4

    div-float/2addr v15, v7

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    div-float v6, v15, v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    const/high16 v7, 0x437f0000    # 255.0f

    cmpl-float v18, v5, v10

    move/from16 v14, p4

    if-lez v18, :cond_5

    move/from16 v10, p10

    invoke-static {v14, v10, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v14, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomHintPaint:Landroid/text/TextPaint;

    mul-float v13, v5, v7

    float-to-int v13, v13

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomHintPaint:Landroid/text/TextPaint;

    const/high16 v14, 0x40400000    # 3.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    move/from16 p4, v10

    const/high16 v10, 0x30000000

    invoke-static {v10, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v10

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-virtual {v13, v14, v9, v7, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    int-to-float v7, v2

    iget v9, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomHintLayoutWidth:F

    sub-float/2addr v7, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    iget v9, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomHintLayoutLeft:F

    sub-float/2addr v7, v9

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9, v10, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->zoomHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move/from16 v14, p4

    goto :goto_2

    :cond_5
    move-object/from16 v21, v9

    const/high16 v20, 0x3f800000    # 1.0f

    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_12

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v9, v10

    const/high16 v10, -0x80000000

    add-float/2addr v9, v10

    mul-int v10, v12, v7

    int-to-float v10, v10

    add-float/2addr v9, v10

    int-to-float v10, v7

    mul-float v10, v10, v15

    add-float/2addr v9, v10

    int-to-float v10, v2

    cmpl-float v10, v9, v10

    if-gtz v10, :cond_6

    add-float v10, v9, v15

    const/4 v13, 0x0

    cmpg-float v19, v10, v13

    if-ltz v19, :cond_6

    cmpg-float v22, p7, v13

    if-gtz v22, :cond_7

    :cond_6
    move/from16 v22, v6

    move/from16 v23, v12

    move/from16 p4, v14

    move-object/from16 v10, v21

    const/high16 v0, 0x437f0000    # 255.0f

    const/4 v12, 0x1

    const/high16 v14, 0x40a00000    # 5.0f

    goto/16 :goto_b

    :cond_7
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    if-gt v7, v3, :cond_e

    if-ne v7, v3, :cond_e

    move/from16 v22, v6

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    move/from16 v23, v12

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    move/from16 p4, v14

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v14

    if-ne v3, v7, :cond_8

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    :goto_4
    int-to-float v13, v13

    mul-float v13, v13, v5

    invoke-static {v12, v14, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v6, v9, v13, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v8, :cond_c

    iget-boolean v12, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->incrementBuffering:Z

    const v13, 0x3cda740e

    if-eqz v12, :cond_a

    iget v12, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    add-float/2addr v12, v13

    iput v12, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    const/high16 v13, 0x3f000000    # 0.5f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    const/4 v12, 0x0

    iput-boolean v12, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->incrementBuffering:Z

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    iget v14, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    sub-float/2addr v14, v13

    iput v14, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    const/high16 v13, -0x41000000    # -0.5f

    cmpg-float v13, v14, v13

    if-gez v13, :cond_b

    const/4 v13, 0x1

    iput-boolean v13, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->incrementBuffering:Z

    :cond_b
    :goto_5
    const/high16 v13, 0x424c0000    # 51.0f

    mul-float v13, v13, p7

    mul-float v13, v13, p6

    iget v14, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    mul-float v13, v13, v14

    float-to-int v13, v13

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_6
    const/high16 v14, 0x42aa0000    # 85.0f

    mul-float v14, v14, p7

    mul-float v14, v14, p6

    float-to-int v14, v14

    add-int/2addr v14, v13

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v13, 0x0

    cmpl-float v14, v5, v13

    if-lez v14, :cond_d

    iget v13, v6, Landroid/graphics/RectF;->left:F

    sub-int v14, v7, v3

    mul-int v17, v14, v2

    const/high16 v24, 0x40a00000    # 5.0f

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    add-int v12, v17, v25

    int-to-float v12, v12

    invoke-static {v13, v12, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int v13, v2, v13

    int-to-float v13, v13

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v12, v13, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v6, Landroid/graphics/RectF;->left:F

    iget v0, v6, Landroid/graphics/RectF;->right:F

    const/4 v12, 0x1

    add-int/2addr v14, v12

    mul-int v14, v14, v2

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v14, v12

    int-to-float v12, v14

    invoke-static {v0, v12, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v12, v2, v12

    int-to-float v12, v12

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v0, v12, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, v6, Landroid/graphics/RectF;->right:F

    :cond_d
    invoke-virtual {v1, v6, v4, v4, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move/from16 v0, p4

    goto :goto_7

    :cond_e
    move/from16 v22, v6

    move/from16 v23, v12

    move/from16 p4, v14

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_7
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    const/high16 v14, 0x40a00000    # 5.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    if-ne v3, v7, :cond_f

    const/4 v14, 0x1

    goto :goto_8

    :cond_f
    const/4 v14, 0x0

    :goto_8
    int-to-float v14, v14

    mul-float v14, v14, v5

    invoke-static {v13, v12, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v6, v9, v13, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    cmpl-float v9, v5, v13

    if-lez v9, :cond_10

    iget v9, v6, Landroid/graphics/RectF;->left:F

    sub-int v10, v7, v3

    mul-int v12, v10, v2

    const/high16 v14, 0x40a00000    # 5.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v12, v12, v17

    int-to-float v12, v12

    invoke-static {v9, v12, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v12, v2, v12

    int-to-float v12, v12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v9, v12, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v9

    iput v9, v6, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->right:F

    const/4 v12, 0x1

    add-int/2addr v10, v12

    mul-int v10, v10, v2

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v10, v13

    int-to-float v10, v10

    invoke-static {v9, v10, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, v2, v10

    int-to-float v10, v10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v9, v10, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v9

    iput v9, v6, Landroid/graphics/RectF;->right:F

    goto :goto_9

    :cond_10
    const/4 v12, 0x1

    const/high16 v14, 0x40a00000    # 5.0f

    :goto_9
    iget v9, v6, Landroid/graphics/RectF;->left:F

    iget v10, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v9, v10, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, v6, Landroid/graphics/RectF;->right:F

    if-gt v7, v3, :cond_11

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v9, p7, v0

    mul-float v9, v9, p6

    float-to-int v9, v9

    move-object/from16 v10, v21

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object v9, v10

    goto :goto_a

    :cond_11
    move-object/from16 v10, v21

    const/high16 v0, 0x437f0000    # 255.0f

    const/16 v9, 0x55

    int-to-float v9, v9

    mul-float v9, v9, p7

    mul-float v9, v9, p6

    float-to-int v9, v9

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object v9, v11

    :goto_a
    invoke-virtual {v1, v6, v4, v4, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v14, p4

    move/from16 v4, p5

    move-object/from16 v21, v10

    move/from16 v6, v22

    move/from16 v12, v23

    goto/16 :goto_3

    :cond_12
    return-void
.end method
