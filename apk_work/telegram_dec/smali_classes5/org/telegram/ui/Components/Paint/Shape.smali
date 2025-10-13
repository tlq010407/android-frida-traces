.class public Lorg/telegram/ui/Components/Paint/Shape;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public arrowTriangleLength:F

.field public final brush:Lorg/telegram/ui/Components/Paint/Brush$Shape;

.field public centerX:F

.field public centerY:F

.field public fill:Z

.field public middleX:F

.field public middleY:F

.field public radiusX:F

.field public radiusY:F

.field public rotation:F

.field public rounding:F

.field public thickness:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Brush$Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Shape;->brush:Lorg/telegram/ui/Components/Paint/Brush$Shape;

    return-void
.end method


# virtual methods
.method public getBounds(Landroid/graphics/RectF;)V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Shape;->arrowTriangleLength:F

    sub-float v2, v0, v1

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    sub-float v4, v3, v1

    add-float/2addr v0, v1

    add-float/2addr v3, v1

    invoke-virtual {p1, v2, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->union(FF)V

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->union(FF)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    const v2, 0x3fb5c28f    # 1.42f

    mul-float v0, v0, v2

    sub-float v2, v1, v0

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    sub-float v4, v3, v0

    add-float/2addr v1, v0

    add-float/2addr v3, v0

    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    neg-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Shape;->brush:Lorg/telegram/ui/Components/Paint/Brush$Shape;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getShapeShaderType()I

    move-result v0

    return v0
.end method
