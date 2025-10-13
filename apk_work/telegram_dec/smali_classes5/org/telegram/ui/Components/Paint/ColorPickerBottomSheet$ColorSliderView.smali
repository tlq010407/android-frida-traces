.class final Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColorSliderView"
.end annotation


# instance fields
.field private colorPaint:Landroid/graphics/Paint;

.field private filledColor:I

.field private mode:I

.field private outlinePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->colorPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->outlinePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->outlinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private invalidateShader()V
    .locals 12

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->mode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xff

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v3, v2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v3, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v3, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v3, v0, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v3, v1, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->colorPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    filled-new-array {v0, v1}, [I

    move-result-object v8

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private updatePosition(F)V
    .locals 4

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr p1, v0

    add-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v3

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->mode:I

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/high16 v3, 0x437f0000    # 255.0f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    mul-float p1, p1, v3

    float-to-int p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, p1, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    mul-float p1, p1, v3

    float-to-int p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v0, p1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$900(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public invalidateColor()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->filledColor:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->invalidateShader()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v4, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    add-float v6, v0, v2

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->mode:I

    const/4 v4, 0x1

    const/high16 v5, 0x437f0000    # 255.0f

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    :goto_0
    int-to-float v3, v3

    div-float/2addr v3, v5

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    goto :goto_0

    :goto_1
    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float/2addr v5, v1

    sub-float v5, v4, v5

    add-float v6, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v1, v1, v2

    sub-float/2addr v7, v1

    mul-float v7, v7, v3

    add-float/2addr v2, v7

    sub-float/2addr v2, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->filledColor:I

    invoke-static {p1, v1, v0, v5, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->drawColorCircle(Landroid/graphics/Canvas;FFFI)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->invalidateShader()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->updatePosition(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->updatePosition(F)V

    :goto_1
    return v1
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->mode:I

    return-void
.end method
