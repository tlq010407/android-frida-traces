.class public Lorg/telegram/ui/Components/MediaActionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;
    }
.end annotation


# instance fields
.field private animatedDownloadProgress:F

.field private animatingTransition:Z

.field private backPaint:Landroid/graphics/Paint;

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private currentIcon:I

.field private delegate:Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;

.field private downloadProgress:F

.field private downloadProgressAnimationStart:F

.field private downloadProgressTime:F

.field private downloadRadOffset:F

.field private gradientDrawable:Landroid/graphics/LinearGradient;

.field private gradientMatrix:Landroid/graphics/Matrix;

.field private hasOverlayImage:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isMini:Z

.field private lastAnimationTime:J

.field private lastPercent:I

.field private messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private nextIcon:I

.field private overrideAlpha:F

.field public paint:Landroid/graphics/Paint;

.field public paint2:Landroid/graphics/Paint;

.field private paint3:Landroid/graphics/Paint;

.field private percentString:Ljava/lang/String;

.field private percentStringWidth:I

.field private rect:Landroid/graphics/RectF;

.field private savedTransitionProgress:F

.field private scale:F

.field private textPaint:Landroid/text/TextPaint;

.field private transitionAnimationTime:F

.field private transitionProgress:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x43c80000    # 400.0f

    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastPercent:I

    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static getCircleValue(F)F
    .locals 2

    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    return p0
.end method


# virtual methods
.method public applyShaderMatrix(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->hasGradient()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getGradientShader()Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->applyMatrixScale()V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTopY()I

    move-result v3

    neg-int v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTopY()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const v16, 0x3e19999a    # 0.15f

    const/high16 v1, 0x41100000    # 9.0f

    const/4 v5, 0x0

    const/high16 v17, 0x42be0000    # 95.0f

    const/high16 v18, 0x42b40000    # 90.0f

    const v19, 0x3e4ccccd    # 0.2f

    const/high16 v20, 0x43c00000    # 384.0f

    const/high16 v21, 0x40400000    # 3.0f

    const/16 v10, 0xa

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->hasGradient()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getGradientShader()Landroid/graphics/Shader;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    iget v3, v11, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v13, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v12, 0x6

    const/4 v14, 0x3

    const/4 v8, 0x4

    const/16 v9, 0xe

    const/high16 v15, 0x3f800000    # 1.0f

    if-ne v4, v8, :cond_2

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq v4, v14, :cond_4

    if-eq v4, v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v6, v15, v6

    :goto_1
    int-to-float v13, v3

    int-to-float v15, v2

    invoke-virtual {v7, v6, v6, v13, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v13, v4

    goto :goto_2

    :cond_2
    if-eq v4, v12, :cond_3

    if-ne v4, v10, :cond_4

    :cond_3
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v4, v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    :goto_2
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/high16 v28, 0x41400000    # 12.0f

    const/high16 v29, 0x42c80000    # 100.0f

    const/high16 v30, 0x40600000    # 3.5f

    const/high16 v31, 0x40e00000    # 7.0f

    const/high16 v32, 0x40000000    # 2.0f

    const/4 v15, 0x2

    const/high16 v33, 0x437f0000    # 255.0f

    const/high16 v34, 0x3f000000    # 0.5f

    if-eq v4, v15, :cond_6

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v4, v15, :cond_5

    goto :goto_3

    :cond_5
    move v9, v3

    move-object v8, v11

    move/from16 v38, v13

    move v13, v2

    goto/16 :goto_12

    :cond_6
    :goto_3
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    int-to-float v4, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v12, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v5, v5, v12

    sub-float v5, v4, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v12, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v1, v1, v12

    add-float/2addr v1, v4

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget v10, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v12, v12, v10

    add-float/2addr v12, v4

    iget v10, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq v10, v14, :cond_7

    if-ne v10, v9, :cond_8

    :cond_7
    iget v10, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v10, v15, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v8, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v8, v8, v34

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float v8, v8, v33

    float-to-int v6, v8

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget v10, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v8, v8, v10

    add-float/2addr v8, v4

    move v10, v8

    const/16 v8, 0xff

    goto :goto_6

    :cond_8
    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v6, v14, :cond_9

    if-eq v6, v9, :cond_9

    if-eq v6, v15, :cond_9

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v8, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    div-float v8, v8, v34

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float v8, v8, v33

    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v14, v10, v14

    mul-float v8, v8, v14

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    const/16 v8, 0xff

    :goto_4
    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_4

    :goto_5
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v10, v14

    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v10, v10, v14

    add-float/2addr v10, v4

    :goto_6
    iget-boolean v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    const/high16 v36, 0x41000000    # 8.0f

    if-eqz v14, :cond_17

    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v14, v15, :cond_a

    cmpg-float v37, v6, v34

    if-gtz v37, :cond_b

    :cond_a
    move v9, v3

    move-object v8, v11

    move/from16 v38, v13

    move v13, v2

    const/4 v2, 0x2

    goto/16 :goto_e

    :cond_b
    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v1, v1, v5

    mul-float v1, v1, v5

    iget-boolean v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v5, :cond_c

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    int-to-float v5, v5

    add-float/2addr v1, v5

    sub-float v6, v6, v34

    div-float v5, v6, v34

    cmpl-float v14, v6, v19

    if-lez v14, :cond_d

    sub-float v6, v6, v19

    const v14, 0x3e99999a    # 0.3f

    div-float/2addr v6, v14

    move v14, v6

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_d
    div-float v6, v6, v19

    move/from16 v19, v6

    const/4 v14, 0x0

    :goto_8
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    int-to-float v8, v3

    sub-float v15, v8, v1

    div-float v1, v1, v32

    sub-float v9, v12, v1

    add-float/2addr v1, v12

    invoke-virtual {v6, v15, v9, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v6, v14, v29

    iget-object v9, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x42d00000    # 104.0f

    mul-float v5, v5, v1

    sub-float/2addr v5, v6

    iget-object v15, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/16 v36, 0x0

    move-object/from16 v1, p1

    move/from16 v38, v13

    move v13, v2

    move-object v2, v9

    move v9, v3

    move v3, v6

    move v6, v4

    move v4, v5

    move/from16 v5, v36

    move-object/from16 v22, v11

    move v11, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sub-float v1, v12, v10

    mul-float v1, v1, v19

    add-float/2addr v10, v1

    const/4 v1, 0x0

    cmpl-float v2, v14, v1

    if-lez v2, :cond_14

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    const/4 v15, 0x0

    goto :goto_9

    :cond_e
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v15, v1, v14

    const/high16 v1, -0x3dcc0000    # -45.0f

    mul-float v1, v1, v15

    move v15, v1

    :goto_9
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v14

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v1, v1, v2

    mul-float v14, v14, v33

    float-to-int v2, v14

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    const/16 v4, 0xe

    if-eq v3, v4, :cond_f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_f

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v3, v3, v34

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v4, v3

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    :cond_f
    move v14, v2

    const/4 v2, 0x0

    cmpl-float v3, v15, v2

    if-eqz v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v15, v8, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_10
    if-eqz v14, :cond_13

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v3, v9, v2

    int-to-float v2, v3

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v13, v3

    int-to-float v3, v3

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v13

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v2, v14

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v1, :cond_11

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_a

    :cond_11
    const/high16 v1, 0x40800000    # 4.0f

    :goto_a
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    move-object/from16 v11, v22

    iget v3, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object v14, v11

    :goto_b
    const/4 v1, 0x0

    goto :goto_c

    :cond_12
    move-object/from16 v14, v22

    sub-float v19, v8, v1

    sub-float v22, v11, v1

    add-float v23, v8, v1

    add-float/2addr v11, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, v23

    move/from16 v4, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_13
    move-object/from16 v14, v22

    goto :goto_b

    :goto_c
    cmpl-float v2, v15, v1

    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    :cond_14
    move-object/from16 v14, v22

    :cond_15
    :goto_d
    move v11, v8

    move v3, v10

    move v10, v11

    move-object v8, v14

    move v14, v12

    goto :goto_11

    :goto_e
    if-ne v14, v2, :cond_16

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v15, v2, v6

    goto :goto_f

    :cond_16
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v15, v6, v34

    sub-float v6, v2, v15

    :goto_f
    sub-float/2addr v10, v5

    mul-float v10, v10, v15

    add-float/2addr v5, v10

    sub-float/2addr v12, v1

    mul-float v12, v12, v15

    add-float/2addr v1, v12

    int-to-float v2, v9

    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v3, v3, v4

    sub-float v3, v2, v3

    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v6

    iget v10, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v4, v4, v10

    add-float/2addr v2, v4

    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v6

    :goto_10
    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v4, v4, v6

    sub-float v4, v1, v4

    move v14, v1

    move v11, v2

    move v10, v3

    move v12, v4

    move v3, v5

    goto :goto_11

    :cond_17
    move v9, v3

    move-object v8, v11

    move/from16 v38, v13

    move v13, v2

    int-to-float v2, v9

    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v3, v3, v4

    sub-float v3, v2, v3

    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v4, v4, v6

    add-float/2addr v2, v4

    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    goto :goto_10

    :goto_11
    cmpl-float v1, v3, v14

    if-eqz v1, :cond_18

    int-to-float v4, v9

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_18
    int-to-float v15, v9

    cmpl-float v1, v10, v15

    if-eqz v1, :cond_19

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v3, v12

    move v4, v15

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v2, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_19
    :goto_12
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v10, 0xd

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    const/16 v3, 0xe

    if-eq v1, v3, :cond_1a

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1b

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v4, v3, :cond_1a

    if-ne v4, v2, :cond_1b

    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_18

    :cond_1b
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1d

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v3, v2, :cond_1d

    if-ne v1, v10, :cond_1c

    goto :goto_14

    :cond_1c
    :goto_13
    const/4 v11, 0x7

    const/16 v14, 0x8

    const/16 v15, 0x9

    goto/16 :goto_28

    :cond_1d
    :goto_14
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1e

    goto :goto_15

    :cond_1e
    const/16 v6, 0xff

    goto :goto_16

    :cond_1f
    :goto_15
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v15, v2, v1

    mul-float v15, v15, v33

    float-to-int v6, v15

    :goto_16
    if-eqz v6, :cond_1c

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v2, v6

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v1, :cond_20

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_17

    :cond_20
    const/high16 v15, 0x40800000    # 4.0f

    :goto_17
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v5, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    int-to-float v6, v6

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v1

    int-to-float v1, v12

    invoke-virtual {v2, v3, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_13

    :goto_18
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    cmpg-float v2, v1, v34

    if-gtz v2, :cond_21

    div-float v1, v1, v34

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v15, v2, v1

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v15

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v1, v1, v2

    mul-float v15, v15, v33

    float-to-int v5, v15

    goto :goto_19

    :cond_21
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_19
    move v6, v5

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v14, 0x8

    const/16 v15, 0x9

    goto/16 :goto_24

    :cond_22
    const/16 v2, 0xf

    if-eq v1, v2, :cond_2c

    if-eqz v1, :cond_2c

    const/4 v12, 0x1

    if-eq v1, v12, :cond_2b

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2b

    const/16 v14, 0x8

    const/16 v15, 0x9

    if-eq v1, v14, :cond_2a

    if-eq v1, v15, :cond_2a

    const/4 v6, 0x7

    if-eq v1, v6, :cond_2a

    const/4 v2, 0x6

    if-ne v1, v2, :cond_23

    goto/16 :goto_22

    :cond_23
    const/4 v2, 0x4

    if-ne v1, v2, :cond_25

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v2, v2, v3

    mul-float v3, v1, v33

    float-to-int v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_24

    iget v4, v8, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v6, v8, Landroid/graphics/Rect;->top:I

    :goto_1a
    int-to-float v6, v6

    move v12, v1

    move v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move/from16 v41, v6

    move v6, v3

    move/from16 v3, v41

    goto/16 :goto_24

    :cond_24
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    goto :goto_1a

    :cond_25
    const/16 v5, 0xe

    if-eq v1, v5, :cond_27

    const/4 v2, 0x3

    if-ne v1, v2, :cond_26

    goto :goto_1b

    :cond_26
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_24

    :cond_27
    :goto_1b
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v1

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_28

    move v3, v1

    const/4 v2, 0x0

    goto :goto_1c

    :cond_28
    const/high16 v2, 0x42340000    # 45.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1c
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v4, v4, v5

    mul-float v1, v1, v33

    float-to-int v6, v1

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/16 v5, 0xe

    if-ne v1, v5, :cond_29

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v5, v8, Landroid/graphics/Rect;->top:I

    :goto_1d
    int-to-float v5, v5

    goto :goto_1e

    :cond_29
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    goto :goto_1d

    :goto_1e
    move v12, v3

    move v3, v5

    move v5, v2

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1f
    move/from16 v41, v4

    move v4, v1

    move/from16 v1, v41

    goto :goto_24

    :cond_2a
    :goto_20
    const/4 v2, 0x6

    goto :goto_22

    :cond_2b
    :goto_21
    const/16 v14, 0x8

    const/16 v15, 0x9

    goto :goto_20

    :cond_2c
    const/4 v12, 0x1

    goto :goto_21

    :goto_22
    if-ne v1, v2, :cond_2d

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v1, v1, v34

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_23

    :cond_2d
    const/high16 v2, 0x3f800000    # 1.0f

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :goto_23
    sub-float v27, v2, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v27

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v4, v4, v5

    mul-float v5, v27, v32

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v5, v5, v33

    float-to-int v6, v5

    move/from16 v12, v27

    const/4 v5, 0x0

    goto :goto_1f

    :goto_24
    cmpl-float v19, v12, v2

    if-eqz v19, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v12, v12, v4, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2e
    const/4 v2, 0x0

    cmpl-float v3, v5, v2

    if-eqz v3, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v9

    int-to-float v3, v13

    invoke-virtual {v7, v5, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_2f
    if-eqz v6, :cond_32

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v3, v6

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v4, 0xe

    if-eq v2, v4, :cond_30

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v4, :cond_31

    :cond_30
    move/from16 v35, v5

    move v10, v6

    const/4 v11, 0x7

    goto :goto_26

    :cond_31
    int-to-float v2, v9

    sub-float v19, v2, v1

    int-to-float v3, v13

    sub-float v22, v3, v1

    add-float v23, v2, v1

    add-float v24, v3, v1

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v22

    move-object/from16 v26, v4

    move/from16 v4, v23

    move/from16 v35, v5

    move/from16 v5, v24

    move v10, v6

    const/4 v11, 0x7

    move-object/from16 v6, v26

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, v23

    move/from16 v4, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_25
    const/4 v1, 0x0

    goto :goto_27

    :goto_26
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v3, v9, v2

    int-to-float v2, v3

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v13, v3

    int-to-float v3, v3

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v13

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_25

    :cond_32
    move/from16 v35, v5

    move v10, v6

    const/4 v11, 0x7

    goto :goto_25

    :goto_27
    cmpl-float v2, v35, v1

    if-eqz v2, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_33
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v12, v1

    if-eqz v2, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_34
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_35

    const/16 v3, 0xe

    if-eq v1, v3, :cond_35

    const/4 v4, 0x4

    if-ne v1, v4, :cond_39

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v3, :cond_35

    if-ne v1, v2, :cond_39

    :cond_35
    if-eqz v10, :cond_39

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iget-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v1, :cond_36

    const/high16 v2, 0x40000000    # 2.0f

    :cond_36
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_37

    const/4 v3, 0x4

    if-ne v1, v3, :cond_38

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_38

    :cond_37
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v2, v10

    mul-float v2, v2, v16

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_38
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_39
    :goto_28
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_3a

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_2a

    :cond_3a
    const/4 v2, 0x4

    if-eq v1, v2, :cond_3b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3b

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3c

    :cond_3b
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_29

    :cond_3c
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v1, v1, v34

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v27

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v1, v1, v34

    sub-float v1, v2, v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v12, v1

    move/from16 v10, v27

    goto :goto_2a

    :goto_29
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v3, v2, v1

    move v10, v1

    move v12, v3

    :goto_2a
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3d

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_updatePath:[Landroid/graphics/Path;

    :goto_2b
    const/4 v3, 0x0

    :goto_2c
    const/4 v4, 0x5

    goto :goto_2d

    :cond_3d
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v3, v2, :cond_3e

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_updatePath:[Landroid/graphics/Path;

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_2c

    :cond_3e
    const/4 v2, 0x0

    goto :goto_2b

    :goto_2d
    if-ne v1, v4, :cond_40

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_filePath:[Landroid/graphics/Path;

    :cond_3f
    :goto_2e
    move-object v6, v2

    move-object v5, v3

    goto :goto_2f

    :cond_40
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v5, v4, :cond_3f

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_filePath:[Landroid/graphics/Path;

    goto :goto_2e

    :goto_2f
    if-ne v1, v11, :cond_41

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_flameIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v2

    const/4 v2, 0x0

    goto :goto_31

    :cond_41
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v2, v11, :cond_42

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_flameIcon:Landroid/graphics/drawable/Drawable;

    :goto_30
    const/16 v25, 0x0

    goto :goto_31

    :cond_42
    const/4 v2, 0x0

    goto :goto_30

    :goto_31
    if-ne v1, v14, :cond_44

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->chat_gifIcon:Landroid/graphics/drawable/Drawable;

    :cond_43
    :goto_32
    move-object v11, v2

    move-object/from16 v14, v25

    goto :goto_33

    :cond_44
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v3, v14, :cond_43

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_gifIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_32

    :goto_33
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/high16 v16, 0x40c00000    # 6.0f

    if-eq v2, v15, :cond_45

    if-ne v1, v15, :cond_46

    :cond_45
    const/4 v1, 0x0

    goto :goto_34

    :cond_46
    move-object/from16 v39, v5

    move-object/from16 v40, v6

    move/from16 v19, v12

    goto/16 :goto_36

    :goto_34
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v3, :cond_47

    const/16 v2, 0xff

    goto :goto_35

    :cond_47
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v2, v2, v33

    float-to-int v2, v2

    :goto_35
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v15, v13, v1

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v4, v9, v1

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v2, :cond_48

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    int-to-float v2, v9

    int-to-float v3, v13

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_48
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v4, v1

    int-to-float v2, v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v15, v1

    int-to-float v3, v1

    int-to-float v1, v4

    move/from16 v19, v12

    int-to-float v12, v15

    move-object/from16 v22, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v23, v1

    move-object/from16 v1, p1

    move/from16 v24, v4

    move/from16 v4, v23

    move-object/from16 v39, v5

    move v5, v12

    move-object/from16 v40, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v4, v24, v1

    int-to-float v4, v4

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v15, v1

    int-to-float v5, v15

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v23

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v2, :cond_49

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_49
    :goto_36
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4a

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_4f

    :cond_4a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_4b

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_37

    :cond_4b
    const/16 v3, 0xd

    if-ne v2, v3, :cond_4c

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_37

    :cond_4c
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    :goto_37
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    if-ne v1, v2, :cond_4d

    const/16 v6, 0xff

    goto :goto_38

    :cond_4d
    mul-float v1, v3, v33

    float-to-int v6, v1

    :goto_38
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v2, :cond_4e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v9

    int-to-float v2, v13

    invoke-virtual {v7, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_4e
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float v1, v1, v2

    int-to-float v2, v9

    sub-float v12, v2, v1

    int-to-float v3, v13

    sub-float v15, v3, v1

    add-float v22, v2, v1

    add-float v23, v3, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v22

    move/from16 v5, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, v22

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v2, :cond_4f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4f
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_50

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_56

    :cond_50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v3, :cond_51

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_39

    :cond_51
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    if-ne v3, v2, :cond_52

    goto :goto_39

    :cond_52
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    :goto_39
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    mul-float v3, v1, v33

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v2, v13, v3

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentStringWidth:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sub-int v3, v9, v3

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v4, v5, :cond_53

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v9

    int-to-float v5, v13

    invoke-virtual {v7, v1, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_53
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    mul-float v1, v1, v29

    float-to-int v1, v1

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentString:Ljava/lang/String;

    if-eqz v4, :cond_54

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastPercent:I

    if-eq v1, v4, :cond_55

    :cond_54
    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastPercent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v5, v4

    const-string v1, "%d%%"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentString:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentStringWidth:I

    :cond_55
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentString:Ljava/lang/String;

    int-to-float v3, v3

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v2, :cond_56

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_56
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v2, 0x1

    if-eqz v1, :cond_58

    if-eq v1, v2, :cond_58

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eqz v3, :cond_58

    if-ne v3, v2, :cond_57

    goto :goto_3a

    :cond_57
    const/16 v12, 0xff

    goto/16 :goto_48

    :cond_58
    :goto_3a
    if-nez v1, :cond_59

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v3, v2, :cond_5a

    :cond_59
    if-ne v1, v2, :cond_5d

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-nez v2, :cond_5d

    :cond_5a
    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v2, :cond_5c

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-nez v2, :cond_5b

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    :goto_3b
    const/4 v3, 0x1

    goto :goto_3d

    :cond_5b
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_3b

    :cond_5c
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5e

    goto :goto_3c

    :cond_5d
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5e

    :goto_3c
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3d

    :cond_5e
    const/4 v2, 0x0

    :goto_3d
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eqz v4, :cond_60

    if-ne v4, v3, :cond_5f

    goto :goto_3f

    :cond_5f
    :goto_3e
    const/4 v3, 0x4

    goto :goto_40

    :cond_60
    :goto_3f
    if-eqz v1, :cond_63

    if-eq v1, v3, :cond_63

    goto :goto_3e

    :goto_40
    if-ne v4, v3, :cond_61

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v15, v4, v3

    mul-float v15, v15, v33

    float-to-int v3, v15

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_41
    const/4 v1, 0x1

    const/16 v12, 0xff

    goto :goto_43

    :cond_61
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    if-ne v1, v4, :cond_62

    const/16 v6, 0xff

    goto :goto_42

    :cond_62
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v1, v1, v33

    float-to-int v6, v1

    :goto_42
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_41

    :cond_63
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    const/16 v12, 0xff

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x1

    :goto_43
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v15, v3, v2

    mul-float v4, v4, v15

    add-float/2addr v1, v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float v2, v2, v1

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_64

    const/high16 v4, 0x42b40000    # 90.0f

    goto :goto_44

    :cond_64
    const/4 v4, 0x0

    :goto_44
    if-nez v1, :cond_67

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v5, v3, :cond_67

    cmpg-float v1, v2, v20

    if-gez v1, :cond_65

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float v3, v2, v20

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v18, v1, v17

    goto :goto_45

    :cond_65
    const/high16 v1, 0x43f20000    # 484.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_66

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v3, v2, v20

    div-float v3, v3, v29

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v1, v1, v3

    sub-float v18, v17, v1

    :cond_66
    :goto_45
    add-float v2, v2, v29

    :goto_46
    move/from16 v4, v18

    goto :goto_47

    :cond_67
    if-ne v1, v3, :cond_6a

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-nez v1, :cond_6a

    cmpg-float v1, v2, v29

    if-gez v1, :cond_68

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float v3, v2, v29

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v3, -0x3f600000    # -5.0f

    mul-float v18, v1, v3

    goto :goto_46

    :cond_68
    const/high16 v1, 0x43f20000    # 484.0f

    const/high16 v3, -0x3f600000    # -5.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_69

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v4, v2, v29

    div-float v4, v4, v20

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v1, v1, v17

    add-float v18, v1, v3

    goto :goto_46

    :cond_69
    const/high16 v4, 0x42b40000    # 90.0f

    :cond_6a
    :goto_47
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eqz v1, :cond_6b

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6c

    :cond_6b
    const/4 v3, 0x4

    if-ne v1, v3, :cond_6d

    :cond_6c
    invoke-virtual {v7, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6d
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->playPauseAnimator:Lorg/telegram/ui/Components/PathAnimator;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v2}, Lorg/telegram/ui/Components/PathAnimator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->playPauseAnimator:Lorg/telegram/ui/Components/PathAnimator;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v2}, Lorg/telegram/ui/Components/PathAnimator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_48
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6e

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_74

    :cond_6e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq v1, v2, :cond_71

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    cmpl-float v2, v1, v34

    if-lez v2, :cond_70

    sub-float v1, v1, v34

    div-float v1, v1, v34

    div-float v2, v1, v34

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v3, v2

    cmpl-float v3, v1, v34

    if-lez v3, :cond_6f

    sub-float v1, v1, v34

    div-float v1, v1, v34

    goto :goto_49

    :cond_6f
    const/4 v1, 0x0

    goto :goto_49

    :cond_70
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_49

    :cond_71
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_72

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v15, v3, v2

    mul-float v15, v15, v33

    float-to-int v2, v15

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_4a

    :cond_72
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    :goto_49
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    move v8, v1

    :goto_4a
    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v15, v13, v1

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v6, v9, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v1

    if-gez v3, :cond_73

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v6, v1

    int-to-float v3, v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v1, v15, v1

    int-to-float v4, v1

    int-to-float v1, v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    sub-float v5, v1, v5

    int-to-float v1, v15

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v2

    sub-float v12, v1, v12

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v12

    move v12, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_4b
    const/4 v1, 0x0

    goto :goto_4c

    :cond_73
    move v12, v6

    goto :goto_4b

    :goto_4c
    cmpl-float v2, v8, v1

    if-lez v2, :cond_74

    int-to-float v2, v12

    int-to-float v3, v15

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v8

    add-float v4, v2, v1

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v8

    sub-float v5, v3, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_74
    if-eqz v11, :cond_76

    if-eq v11, v14, :cond_76

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v19

    float-to-int v1, v1

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v19

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v3, v4, :cond_75

    const/16 v6, 0xff

    goto :goto_4d

    :cond_75
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v15, v4, v3

    mul-float v15, v15, v33

    float-to-int v6, v15

    :goto_4d
    invoke-virtual {v11, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x2

    div-int/2addr v1, v3

    sub-int v4, v9, v1

    div-int/2addr v2, v3

    sub-int v3, v13, v2

    add-int/2addr v1, v9

    add-int/2addr v2, v13

    invoke-virtual {v11, v4, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_76
    if-eqz v14, :cond_78

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v14, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v3, v4, :cond_77

    const/16 v6, 0xff

    goto :goto_4e

    :cond_77
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v3, v3, v33

    float-to-int v6, v3

    :goto_4e
    invoke-virtual {v14, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x2

    div-int/2addr v1, v3

    sub-int v4, v9, v1

    div-int/2addr v2, v3

    sub-int v3, v13, v2

    add-int/2addr v1, v9

    add-int/2addr v2, v13

    invoke-virtual {v14, v4, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v14, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_78
    move-object/from16 v3, v39

    move-object/from16 v2, v40

    if-eqz v3, :cond_7c

    if-eq v3, v2, :cond_7c

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v5, v6, :cond_79

    const/16 v6, 0xff

    goto :goto_4f

    :cond_79
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v15, v6, v5

    mul-float v15, v15, v33

    float-to-int v6, v15

    :goto_4f
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v9

    int-to-float v5, v13

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v1, v19

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v1, v4

    const/4 v4, 0x2

    div-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    aget-object v4, v3, v1

    if-eqz v4, :cond_7a

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7a
    const/4 v1, 0x1

    aget-object v3, v3, v1

    if-eqz v3, :cond_7b

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7c
    if-eqz v2, :cond_82

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v3, v4, :cond_7d

    const/16 v6, 0xff

    goto :goto_50

    :cond_7d
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v3, v3, v33

    float-to-int v6, v3

    :goto_50
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v9

    int-to-float v4, v13

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v1, v1

    const/4 v3, 0x2

    div-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    aget-object v4, v2, v1

    if-eqz v4, :cond_7e

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7e
    array-length v1, v2

    const/4 v4, 0x3

    if-lt v1, v4, :cond_7f

    aget-object v1, v2, v3

    if-eqz v1, :cond_7f

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7f
    const/4 v1, 0x1

    aget-object v3, v2, v1

    if-eqz v3, :cond_81

    const/16 v1, 0xff

    if-eq v6, v1, :cond_80

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    int-to-float v4, v1

    int-to-float v5, v6

    div-float v5, v5, v33

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_51

    :cond_80
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_81
    :goto_51
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastAnimationTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x11

    cmp-long v8, v3, v5

    if-lez v8, :cond_83

    move-wide v8, v5

    goto :goto_52

    :cond_83
    move-wide v8, v3

    :goto_52
    iput-wide v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastAnimationTime:J

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_85

    const/16 v2, 0xe

    if-eq v1, v2, :cond_85

    const/4 v3, 0x4

    if-ne v1, v3, :cond_84

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v3, v2, :cond_85

    :cond_84
    const/16 v2, 0xa

    if-eq v1, v2, :cond_85

    const/16 v2, 0xd

    if-ne v1, v2, :cond_88

    :cond_85
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    const-wide/16 v2, 0x168

    mul-long v2, v2, v8

    long-to-float v2, v2

    const v3, 0x451c4000    # 2500.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    invoke-static {v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCircleValue(F)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_87

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    sub-float v3, v1, v2

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_87

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    long-to-float v6, v8

    add-float/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    const/high16 v6, 0x43480000    # 200.0f

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_86

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    iput v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    goto :goto_53

    :cond_86
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    :cond_87
    :goto_53
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    :cond_88
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v1, :cond_8a

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_8a

    long-to-float v3, v8

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_89

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iput v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    :cond_89
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    :cond_8a
    move/from16 v4, v38

    const/4 v1, 0x1

    if-lt v4, v1, :cond_8b

    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8b
    return-void
.end method

.method public getCurrentIcon()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPreviousIcon()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    return v0
.end method

.method public getTransitionProgress()F
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->delegate:Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBackColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr p3, p1

    int-to-float p1, p3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    const p2, 0x3f333333    # 0.7f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->delegate:Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;

    return-void
.end method

.method public setHasOverlayImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    return-void
.end method

.method public setIcon(IZ)Z
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v0, p1, :cond_0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x1

    if-eqz p2, :cond_d

    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq p2, p1, :cond_c

    iget v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, p1, :cond_1

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    if-eq p1, v5, :cond_3

    :cond_2
    if-ne p2, v5, :cond_4

    if-nez p1, :cond_4

    :cond_3
    const/high16 p2, 0x43960000    # 300.0f

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_6

    if-eq p1, v0, :cond_5

    if-ne p1, v4, :cond_6

    :cond_5
    const/high16 p2, 0x43c80000    # 400.0f

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    if-eq p2, v2, :cond_7

    const/4 v6, 0x6

    if-ne p1, v6, :cond_7

    const/high16 p2, 0x43b40000    # 360.0f

    goto :goto_0

    :cond_7
    if-ne p2, v2, :cond_8

    if-eq p1, v4, :cond_9

    :cond_8
    if-ne p2, v4, :cond_a

    if-ne p1, v2, :cond_a

    :cond_9
    const/high16 p2, 0x43200000    # 160.0f

    goto :goto_0

    :cond_a
    const/high16 p2, 0x435c0000    # 220.0f

    goto :goto_0

    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz p2, :cond_b

    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    :cond_b
    iput-boolean v5, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    iput v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_3

    :cond_c
    :goto_2
    return v2

    :cond_d
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne p2, p1, :cond_e

    return v2

    :cond_e
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :goto_3
    if-eq p1, v0, :cond_f

    if-ne p1, v4, :cond_10

    :cond_f
    const/high16 p1, 0x42e00000    # 112.0f

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    iput v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    iput v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    iput v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    return v5
.end method

.method public setMini(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40400000    # 3.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setOverrideAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    return-void
.end method

.method public setProgress(FZ)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_2

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    :cond_2
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    return-void
.end method
