.class public Lorg/telegram/ui/Components/MarqueeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private gradient:Landroid/graphics/LinearGradient;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private lastFrameTime:J

.field private marqueeIsPending:Z

.field private marqueeIsStarted:Z

.field private needMarquee:Z

.field private originalWidth:I

.field private rightPadding:I

.field private scrollX:F

.field private final startMarquee:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$jfzhsZHe6FEZ8BOtt1nt3ZlYuXI(Lorg/telegram/ui/Components/MarqueeTextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MarqueeTextView;->startMarqueeInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradientMatrix:Landroid/graphics/Matrix;

    new-instance p1, Lorg/telegram/ui/Components/MarqueeTextView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/MarqueeTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MarqueeTextView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->startMarquee:Ljava/lang/Runnable;

    return-void
.end method

.method private invalidateGradient()V
    .locals 11

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->originalWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3efae148    # 0.49f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    new-instance v10, Landroid/graphics/LinearGradient;

    iget v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->originalWidth:I

    int-to-float v5, v2

    const v2, 0xfffff

    and-int/2addr v2, v1

    filled-new-array {v2, v1, v1, v2}, [I

    move-result-object v7

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    const/4 v3, 0x4

    new-array v8, v3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v8, v4

    const/4 v3, 0x1

    aput v0, v8, v3

    const/4 v0, 0x2

    aput v2, v8, v0

    const/4 v0, 0x3

    aput v1, v8, v0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradient:Landroid/graphics/LinearGradient;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->needMarquee:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradient:Landroid/graphics/LinearGradient;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradient:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private pendingMarqueeInternal()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->marqueeIsPending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->marqueeIsPending:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->startMarquee:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private startMarqueeInternal()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->needMarquee:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->marqueeIsStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->marqueeIsPending:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->lastFrameTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private stopMarqueeInternal()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->startMarquee:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->marqueeIsPending:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->marqueeIsStarted:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    return-void
.end method


# virtual methods
.method public isNeedMarquee()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->needMarquee:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    int-to-float v3, v0

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpg-float v7, v2, v3

    if-gez v7, :cond_0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    invoke-static {v2, v6, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget-object v7, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v8, p0, Lorg/telegram/ui/Components/MarqueeTextView;->originalWidth:I

    int-to-float v8, v8

    div-float/2addr v4, v8

    sub-float v2, v5, v2

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    invoke-virtual {v7, v4, v5, v8, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradientMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lorg/telegram/ui/Components/MarqueeTextView;->rightPadding:I

    int-to-float v4, v4

    iget v7, p0, Lorg/telegram/ui/Components/MarqueeTextView;->originalWidth:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    sub-float v4, v5, v4

    invoke-virtual {v2, v4, v5, v6, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradientMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradient:Landroid/graphics/LinearGradient;

    iget-object v4, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    neg-float v2, v2

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-lez v0, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    cmpl-float v4, v2, v6

    if-lez v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->needMarquee:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->marqueeIsStarted:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradientMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    neg-float v4, v4

    add-float v5, v4, v3

    int-to-float v7, v1

    add-float/2addr v5, v7

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradient:Landroid/graphics/LinearGradient;

    iget-object v4, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    neg-float v2, v2

    add-float/2addr v2, v3

    add-float/2addr v2, v7

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    float-to-double v2, p1

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v2, v4

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/MarqueeTextView;->lastFrameTime:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    if-nez p1, :cond_3

    sub-long v4, v2, v4

    const-wide/16 v6, 0x78

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x10

    :goto_2
    iput-wide v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->lastFrameTime:J

    iget-boolean v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->needMarquee:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->marqueeIsStarted:Z

    if-nez v2, :cond_5

    :cond_4
    if-nez p1, :cond_7

    :cond_5
    iget p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    mul-float v2, v2, v3

    add-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->scrollX:F

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Components/MarqueeTextView;->stopMarqueeInternal()V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->needMarquee:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->marqueeIsStarted:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->marqueeIsPending:Z

    if-nez p1, :cond_8

    invoke-direct {p0}, Lorg/telegram/ui/Components/MarqueeTextView;->pendingMarqueeInternal()V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->originalWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/MarqueeTextView;->originalWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->rightPadding:I

    sub-int/2addr p2, v1

    if-le p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->needMarquee:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/MarqueeTextView;->invalidateGradient()V

    return-void
.end method

.method public setCustomPaddingRight(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->rightPadding:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->originalWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->rightPadding:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MarqueeTextView;->needMarquee:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MarqueeTextView;->gradient:Landroid/graphics/LinearGradient;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/MarqueeTextView;->stopMarqueeInternal()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/MarqueeTextView;->invalidateGradient()V

    return-void
.end method
