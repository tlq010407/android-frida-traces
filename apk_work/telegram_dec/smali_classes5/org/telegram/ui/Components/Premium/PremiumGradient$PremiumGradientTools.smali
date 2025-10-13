.class public Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/PremiumGradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PremiumGradientTools"
.end annotation


# instance fields
.field final colorKey1:I

.field final colorKey2:I

.field final colorKey3:I

.field final colorKey4:I

.field final colorKey5:I

.field final colors:[I

.field public cx:F

.field public cy:F

.field public darkColors:Z

.field public exactly:Z

.field matrix:Landroid/graphics/Matrix;

.field public final paint:Landroid/graphics/Paint;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field shader:Landroid/graphics/Shader;

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>(III)V
    .locals 6

    .line 0
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    .line 0
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7

    .line 0
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(IIIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cx:F

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cy:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colors:[I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    iput-object p6, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colorKey1:I

    iput p2, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colorKey2:I

    iput p3, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colorKey3:I

    iput p4, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colorKey4:I

    iput p5, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colorKey5:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->chekColors()V

    return-void
.end method

.method private chekColors()V
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    iget v4, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colorKey1:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->getColor(I)I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colorKey2:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->getColor(I)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colorKey3:I

    const/4 v7, 0x0

    if-gez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->getColor(I)I

    move-result v6

    :goto_0
    iget v8, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colorKey4:I

    if-gez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->getColor(I)I

    move-result v8

    :goto_1
    iget v9, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colorKey5:I

    if-gez v9, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->getColor(I)I

    move-result v9

    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colors:[I

    aget v11, v10, v7

    const/4 v12, 0x1

    if-ne v11, v4, :cond_3

    aget v11, v10, v12

    if-ne v11, v5, :cond_3

    aget v11, v10, v1

    if-ne v11, v6, :cond_3

    aget v11, v10, v2

    if-ne v11, v8, :cond_3

    aget v11, v10, v3

    if-eq v11, v9, :cond_7

    :cond_3
    aput v4, v10, v7

    aput v5, v10, v12

    aput v6, v10, v1

    aput v8, v10, v2

    aput v9, v10, v3

    const/high16 v4, 0x42c80000    # 100.0f

    if-nez v6, :cond_4

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    mul-float v14, v3, v4

    iget v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    mul-float v15, v3, v4

    iget v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    mul-float v16, v3, v4

    iget v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    mul-float v17, v3, v4

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colors:[I

    aget v4, v3, v7

    aget v3, v3, v12

    filled-new-array {v4, v3}, [I

    move-result-object v18

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v2

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->shader:Landroid/graphics/Shader;

    goto/16 :goto_4

    :cond_4
    if-nez v8, :cond_5

    new-instance v11, Landroid/graphics/LinearGradient;

    iget v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    mul-float v5, v3, v4

    iget v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    mul-float v6, v3, v4

    iget v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    mul-float v8, v3, v4

    iget v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    mul-float v9, v3, v4

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colors:[I

    aget v4, v3, v7

    aget v7, v3, v12

    aget v1, v3, v1

    filled-new-array {v4, v7, v1}, [I

    move-result-object v1

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    move v4, v5

    move v5, v6

    move v6, v8

    move v7, v9

    move-object v8, v1

    move-object v9, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->shader:Landroid/graphics/Shader;

    goto :goto_4

    :cond_5
    new-instance v5, Landroid/graphics/LinearGradient;

    iget v6, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    if-nez v9, :cond_6

    mul-float v13, v6, v4

    iget v6, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    mul-float v14, v6, v4

    iget v6, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    mul-float v15, v6, v4

    iget v6, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    mul-float v16, v6, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colors:[I

    aget v6, v4, v7

    aget v7, v4, v12

    aget v1, v4, v1

    aget v2, v4, v2

    filled-new-array {v6, v7, v1, v2}, [I

    move-result-object v17

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v5

    move-object/from16 v18, v1

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_3
    iput-object v5, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->shader:Landroid/graphics/Shader;

    goto :goto_4

    :cond_6
    mul-float v21, v6, v4

    iget v6, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    mul-float v22, v6, v4

    iget v6, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    mul-float v23, v6, v4

    iget v6, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    mul-float v24, v6, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->colors:[I

    aget v6, v4, v7

    aget v7, v4, v12

    aget v1, v4, v1

    aget v2, v4, v2

    aget v3, v4, v3

    filled-new-array {v6, v7, v1, v2, v3}, [I

    move-result-object v25

    const/4 v1, 0x5

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v20, v5

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_3

    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->shader:Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->shader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3ed9999a    # 0.425f
        0x3f27ae14    # 0.655f
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getColor(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->getThemeColorByKey(I)I

    move-result p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->darkColors:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int/lit8 p1, p1, -0xf

    int-to-float p1, p1

    float-to-int v0, v0

    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int p1, p1

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    :cond_0
    return p1
.end method


# virtual methods
.method protected getThemeColorByKey(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public gradientMatrix(IIIIFF)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->chekColors()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->exactly:Z

    const/high16 v1, 0x42c80000    # 100.0f

    sub-int/2addr p4, p2

    if-eqz v0, :cond_0

    sub-int/2addr p3, p1

    int-to-float p1, p3

    div-float/2addr p1, v1

    int-to-float p2, p4

    div-float/2addr p2, v1

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    iget p4, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cx:F

    mul-float p4, p4, v1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->cy:F

    mul-float v0, v0, v1

    invoke-virtual {p3, p1, p2, p4, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p5, p6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->shader:Landroid/graphics/Shader;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_0
    add-int/2addr p4, p4

    sub-int/2addr p3, p1

    int-to-float p1, p3

    div-float/2addr p1, v1

    int-to-float p2, p4

    div-float/2addr p2, v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->chekColors()V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x42960000    # 75.0f

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    neg-int p2, p4

    int-to-float p2, p2

    add-float/2addr p2, p6

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :goto_1
    return-void
.end method

.method public gradientMatrix(Landroid/graphics/Rect;)V
    .locals 7

    .line 0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    return-void
.end method

.method public gradientMatrix(Landroid/graphics/RectF;)V
    .locals 8

    .line 0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    return-void
.end method

.method public gradientMatrixLinear(FF)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->chekColors()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->shader:Landroid/graphics/Shader;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
