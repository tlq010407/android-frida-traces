.class public Lorg/telegram/ui/Components/TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# instance fields
.field private color:I

.field private colorKey:I

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textSize:I

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->colorKey:I

    iput-object p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;II)V
    .locals 1

    .line 0
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->colorKey:I

    iput-object p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    if-lez p2, :cond_0

    iput p2, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    :cond_0
    iput p3, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->colorKey:I

    iput-object p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    if-lez p2, :cond_0

    iput p2, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    :cond_0
    iput-object p4, p0, Lorg/telegram/ui/Components/TypefaceSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput p3, p0, Lorg/telegram/ui/Components/TypefaceSpan;->colorKey:I

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    return-void
.end method


# virtual methods
.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->colorKey:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/TypefaceSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    if-eqz v0, :cond_2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->color:I

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/TypefaceSpan;->textSize:I

    if-eqz v0, :cond_1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method
