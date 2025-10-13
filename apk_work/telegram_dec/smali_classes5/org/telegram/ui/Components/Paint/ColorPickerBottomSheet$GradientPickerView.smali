.class final Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GradientPickerView"
.end annotation


# instance fields
.field private gradientPaint:Landroid/graphics/Paint;

.field private hsv:[F

.field private outlinePaint:Landroid/graphics/Paint;

.field private positionX:F

.field private positionY:F

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

.field private whiteBlackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->gradientPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->whiteBlackPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->outlinePaint:Landroid/graphics/Paint;

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->hsv:[F

    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v0, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->outlinePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->outlinePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->outlinePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget p1, Lorg/telegram/messenger/R$drawable;->knob_shadow:I

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private updatePosition(Landroid/view/MotionEvent;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->positionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->positionY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->hsv:[F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float p1, p1, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    iget p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->positionX:F

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x3f47ae14    # 0.78f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e6147ae    # 0.22f

    cmpg-float v7, p1, v6

    if-lez v7, :cond_1

    cmpl-float v7, p1, v4

    if-ltz v7, :cond_0

    goto :goto_0

    :cond_0
    aput v5, v0, v3

    aput v5, v0, v2

    goto :goto_4

    :cond_1
    :goto_0
    const v7, 0x3e6147b0    # 0.22000003f

    const/4 v8, 0x0

    cmpg-float v9, p1, v6

    if-gtz v9, :cond_2

    div-float/2addr p1, v6

    sub-float p1, v5, p1

    :goto_1
    invoke-static {v5, v8, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    goto :goto_2

    :cond_2
    sub-float/2addr p1, v4

    div-float/2addr p1, v7

    goto :goto_1

    :goto_2
    aput p1, v0, v3

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->hsv:[F

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->positionX:F

    cmpg-float v3, v0, v6

    if-gtz v3, :cond_3

    goto :goto_3

    :cond_3
    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    invoke-static {v5, v8, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    :goto_3
    aput v5, p1, v2

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->hsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$402(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$900(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->whiteBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->positionX:F

    int-to-float v3, v3

    mul-float v6, v6, v3

    sub-float/2addr v3, v2

    invoke-static {v6, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    add-float/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iget v6, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->positionY:F

    int-to-float v4, v4

    mul-float v6, v6, v4

    sub-float/2addr v4, v2

    invoke-static {v6, v2, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    add-float/2addr v3, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    sub-float v6, v5, v0

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-float v7, v3, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    add-float v8, v5, v0

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    add-float/2addr v8, v4

    float-to-int v8, v8

    add-float v9, v3, v0

    add-float/2addr v9, v4

    float-to-int v4, v9

    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v0

    const/16 v2, 0xff

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-static {p1, v5, v3, v1, v0}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->drawColorCircle(Landroid/graphics/Canvas;FFFI)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->gradientPaint:Landroid/graphics/Paint;

    new-instance p4, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float v4, p2

    const/4 p2, 0x7

    new-array v5, p2, [I

    fill-array-data v5, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->whiteBlackPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    int-to-float v1, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float v3, p1

    const/4 p1, 0x0

    const/high16 p4, -0x1000000

    const/4 v0, -0x1

    filled-new-array {v0, p1, p1, p4}, [I

    move-result-object v5

    const/4 p1, 0x4

    new-array v6, p1, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data

    :array_1
    .array-data 4
        0x3d75c28f    # 0.06f
        0x3e6147ae    # 0.22f
        0x3f47ae14    # 0.78f
        0x3f70a3d7    # 0.94f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->updatePosition(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :goto_1
    return v1
.end method

.method public setColor(IZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$402(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->hsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->hsv:[F

    const/4 p2, 0x1

    aget p2, p1, p2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p2, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_0

    sub-float v0, v1, v2

    const v2, 0x3e6147b0    # 0.22000003f

    mul-float v0, v0, v2

    const v2, 0x3f47ae14    # 0.78f

    add-float/2addr v0, v2

    :goto_0
    sub-float/2addr v1, v0

    goto :goto_1

    :cond_0
    sub-float v0, v1, v2

    const v2, 0x3e6147ae    # 0.22f

    mul-float v0, v0, v2

    goto :goto_0

    :goto_1
    sub-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->positionX:F

    const/4 p2, 0x0

    aget p1, p1, p2

    const/high16 p2, 0x43b40000    # 360.0f

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GradientPickerView;->positionY:F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
