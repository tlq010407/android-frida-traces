.class public Lorg/telegram/ui/Components/GradientTools;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bounds:Landroid/graphics/RectF;

.field color1:I

.field color2:I

.field color3:I

.field color4:I

.field colors:[I

.field gradientBitmap:Landroid/graphics/Bitmap;

.field public isDiagonal:Z

.field public isLinear:Z

.field public isRotate:Z

.field matrix:Landroid/graphics/Matrix;

.field public paint:Landroid/graphics/Paint;

.field shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->colors:[I

    return-void
.end method


# virtual methods
.method public getAverageColor()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/GradientTools;->color1:I

    iget v1, p0, Lorg/telegram/ui/Components/GradientTools;->color2:I

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/GradientTools;->color3:I

    if-eqz v1, :cond_1

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/GradientTools;->color4:I

    if-eqz v1, :cond_2

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    :cond_2
    return v0
.end method

.method public setBounds(FFFF)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/GradientTools;->updateBounds()V

    return-void
.end method

.method public setColors(II)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    return-void
.end method

.method public setColors(IIII)V
    .locals 11

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/GradientTools;->color1:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/GradientTools;->color2:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/GradientTools;->color3:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/GradientTools;->color4:I

    if-ne v0, p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->colors:[I

    iput p1, p0, Lorg/telegram/ui/Components/GradientTools;->color1:I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput p2, p0, Lorg/telegram/ui/Components/GradientTools;->color2:I

    const/4 v1, 0x1

    aput p2, v0, v1

    iput p3, p0, Lorg/telegram/ui/Components/GradientTools;->color3:I

    const/4 v1, 0x2

    aput p3, v0, v1

    iput p4, p0, Lorg/telegram/ui/Components/GradientTools;->color4:I

    const/4 v1, 0x3

    aput p4, v0, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    :cond_1
    const/4 p4, 0x0

    const/high16 v0, 0x42a00000    # 80.0f

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    new-instance p4, Landroid/graphics/LinearGradient;

    filled-new-array {p1, p2}, [I

    move-result-object v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v4, 0x42a00000    # 80.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x42a00000    # 80.0f

    move-object v0, p4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    if-eqz v1, :cond_3

    const/high16 v2, 0x42a00000    # 80.0f

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    filled-new-array {p1, p2}, [I

    move-result-object v6

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v5, 0x42a00000    # 80.0f

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {p3, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    :cond_4
    iget-boolean v1, p0, Lorg/telegram/ui/Components/GradientTools;->isLinear:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    if-eqz v1, :cond_5

    iget-object p4, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    filled-new-array {p1, p2, p3}, [I

    move-result-object v5

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v4, 0x42a00000    # 80.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x42a00000    # 80.0f

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {p4, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    if-eqz v2, :cond_6

    const/high16 v3, 0x42a00000    # 80.0f

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    filled-new-array {p1, p2, p3}, [I

    move-result-object v7

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v6, 0x42a00000    # 80.0f

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_8

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p2, 0x3c

    const/16 p3, 0x50

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/GradientTools;->colors:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object p3, p0, Lorg/telegram/ui/Components/GradientTools;->gradientBitmap:Landroid/graphics/Bitmap;

    sget-object p4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p3, p4, p4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GradientTools;->updateBounds()V

    return-void
.end method

.method protected updateBounds()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x42a00000    # 80.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/GradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lorg/telegram/ui/Components/GradientTools;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Components/GradientTools;->bounds:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/GradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/GradientTools;->shader:Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/Components/GradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
