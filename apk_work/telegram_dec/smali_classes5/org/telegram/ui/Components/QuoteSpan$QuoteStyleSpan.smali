.class public Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/QuoteSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuoteStyleSpan"
.end annotation


# instance fields
.field public span:Lorg/telegram/ui/Components/QuoteSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean p4, p1, Lorg/telegram/ui/Components/QuoteSpan;->adaptLineHeight:Z

    if-eqz p4, :cond_4

    iget-boolean p4, p1, Lorg/telegram/ui/Components/QuoteSpan;->singleLine:Z

    const/4 p5, 0x2

    if-eqz p4, :cond_0

    const/4 p4, 0x7

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    :goto_0
    iget v0, p1, Lorg/telegram/ui/Components/QuoteSpan;->start:I

    if-gt p2, v0, :cond_3

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-boolean p1, p1, Lorg/telegram/ui/Components/QuoteSpan;->last:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    add-int/2addr p1, p4

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object p2, p0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/QuoteSpan;->last:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    :goto_2
    add-int/2addr p5, p4

    int-to-float p2, p5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget p1, p1, Lorg/telegram/ui/Components/QuoteSpan;->end:I

    if-lt p3, p1, :cond_4

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p2, p4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_4
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;->span:Lorg/telegram/ui/Components/QuoteSpan;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/QuoteSpan;->edit:Z

    if-eqz v0, :cond_1

    const v0, 0x3f8ccccd    # 1.1f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    return-void
.end method
