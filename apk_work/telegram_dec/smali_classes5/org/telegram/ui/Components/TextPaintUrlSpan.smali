.class public Lorg/telegram/ui/Components/TextPaintUrlSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# instance fields
.field private currentUrl:Ljava/lang/String;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->currentUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    iget v1, v0, Landroid/text/TextPaint;->baselineShift:I

    iput v1, p1, Landroid/text/TextPaint;->baselineShift:I

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    :cond_0
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TextPaintUrlSpan;->textPaint:Landroid/text/TextPaint;

    iget v1, v0, Landroid/text/TextPaint;->baselineShift:I

    iput v1, p1, Landroid/text/TextPaint;->baselineShift:I

    iget v0, v0, Landroid/text/TextPaint;->bgColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    :cond_0
    return-void
.end method
