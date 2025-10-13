.class public Lorg/telegram/ui/GradientClip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gradient:Landroid/graphics/LinearGradient;

.field private final matrix:Landroid/graphics/Matrix;

.field private final paint:[Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public clipOut(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v0, v0, v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/GradientClip;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v0, v0, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p3, p3, v2

    float-to-int p3, p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object p3, p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V
    .locals 11

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/GradientClip;->gradient:Landroid/graphics/LinearGradient;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v3, -0x10000

    const/high16 v4, 0xff0000

    filled-new-array {v3, v4}, [I

    move-result-object v8

    new-array v9, v0, [F

    fill-array-data v9, :array_0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/GradientClip;->gradient:Landroid/graphics/LinearGradient;

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v3, v1, p3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v3, v1, p3

    iget-object v1, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v1, v1, p3

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v1, v1, p3

    iget-object v3, p0, Lorg/telegram/ui/GradientClip;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    const/high16 v1, 0x41800000    # 16.0f

    if-nez p3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    :goto_1
    iget v2, p2, Landroid/graphics/RectF;->top:F

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    :cond_3
    if-ne p3, v4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_4
    if-ne p3, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    if-ne p3, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->gradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/telegram/ui/GradientClip;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v0, v0, p3

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p4, p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p4, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object p3, p4, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZF)V
    .locals 0

    .line 0
    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    return-void
.end method

.method public getPaint(IF)Landroid/graphics/Paint;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, p1

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v0, v0, p1

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v0, v0, p1

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object v0, v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/GradientClip;->paint:[Landroid/graphics/Paint;

    aget-object p1, p2, p1

    return-object p1
.end method
