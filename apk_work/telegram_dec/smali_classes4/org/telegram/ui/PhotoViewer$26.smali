.class Lorg/telegram/ui/PhotoViewer$26;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final bgGradient:Landroid/graphics/LinearGradient;

.field private final bgMatrix:Landroid/graphics/Matrix;

.field private final bgPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$26;->bgPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 p2, 0x0

    const/high16 v0, 0x7f000000

    filled-new-array {p2, v0}, [I

    move-result-object v5

    const/4 p2, 0x2

    new-array v6, p2, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$26;->bgGradient:Landroid/graphics/LinearGradient;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$26;->bgMatrix:Landroid/graphics/Matrix;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$19500(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$19600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$26;->bgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$26;->bgPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$26;->bgMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$26;->bgMatrix:Landroid/graphics/Matrix;

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$26;->bgMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$26;->bgGradient:Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$26;->bgMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$26;->bgPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$26;->bgGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_2
    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer$26;->bgPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p3, 0x8

    if-eq p1, p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x428c0000    # 70.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p2}, Lorg/telegram/ui/PhotoViewer;->access$19700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p3}, Lorg/telegram/ui/PhotoViewer;->access$19700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p4

    iget-object p5, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p5}, Lorg/telegram/ui/PhotoViewer;->access$19700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/LinearLayout;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$19700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$19700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$19800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$19900(Lorg/telegram/ui/PhotoViewer;)[F

    move-result-object v3

    aget v3, v3, v2

    mul-float v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$20000(Lorg/telegram/ui/PhotoViewer;)[F

    move-result-object v1

    aget v1, v1, v2

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setTranslationY(F)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->getEditTextHeight()I

    move-result v3

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$26;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
