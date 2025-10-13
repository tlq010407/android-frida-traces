.class public Lorg/telegram/ui/Components/URLSpanMono;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# instance fields
.field private currentEnd:I

.field private currentMessage:Ljava/lang/CharSequence;

.field private currentStart:I

.field private currentType:B

.field private style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIBLorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentMessage:Ljava/lang/CharSequence;

    iput p2, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentStart:I

    iput p3, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentEnd:I

    iput-byte p4, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentType:B

    iput-object p5, p0, Lorg/telegram/ui/Components/URLSpanMono;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    return-void
.end method


# virtual methods
.method public copyToClipboard()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentStart:I

    iget v2, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentEnd:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-byte v0, p0, Lorg/telegram/ui/Components/URLSpanMono;->currentType:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_0
    if-ne v0, v1, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/URLSpanMono;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    goto :goto_3

    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :goto_3
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/URLSpanMono;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    return-void
.end method
