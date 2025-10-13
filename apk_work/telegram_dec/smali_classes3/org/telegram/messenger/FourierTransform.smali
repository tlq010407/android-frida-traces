.class public abstract Lorg/telegram/messenger/FourierTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FourierTransform$FFT;
    }
.end annotation


# static fields
.field protected static final LINAVG:I = 0x1

.field protected static final LOGAVG:I = 0x2

.field protected static final NOAVG:I = 0x3

.field protected static final TWO_PI:F = 6.2831855f


# instance fields
.field protected averages:[F

.field protected avgPerOctave:I

.field protected bandWidth:F

.field protected imag:[F

.field protected octaves:I

.field protected real:[F

.field protected sampleRate:I

.field protected spectrum:[F

.field protected timeSize:I

.field protected whichAverage:I


# direct methods
.method constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    float-to-int p2, p2

    iput p2, p0, Lorg/telegram/messenger/FourierTransform;->sampleRate:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float p1, v0, p1

    int-to-float p2, p2

    div-float/2addr p2, v0

    mul-float p1, p1, p2

    iput p1, p0, Lorg/telegram/messenger/FourierTransform;->bandWidth:F

    invoke-virtual {p0}, Lorg/telegram/messenger/FourierTransform;->noAverages()V

    invoke-virtual {p0}, Lorg/telegram/messenger/FourierTransform;->allocateArrays()V

    return-void
.end method


# virtual methods
.method protected abstract allocateArrays()V
.end method

.method public calcAvg(FF)F
    .locals 3

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/FourierTransform;->freqToIndex(F)I

    move-result p1

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/FourierTransform;->freqToIndex(F)I

    move-result p2

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-gt v1, p2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    aget v2, v2, v1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    int-to-float p1, p2

    div-float/2addr v0, p1

    return v0
.end method

.method protected fillSpectrum()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    aget v3, v3, v1

    mul-float v3, v3, v3

    iget-object v4, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    aget v4, v4, v1

    mul-float v4, v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/FourierTransform;->whichAverage:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    array-length v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/FourierTransform;->averages:[F

    array-length v2, v2

    div-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/FourierTransform;->averages:[F

    array-length v4, v4

    if-ge v2, v4, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v1, :cond_1

    mul-int v6, v2, v1

    add-int/2addr v6, v4

    iget-object v7, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    array-length v8, v7

    if-ge v6, v8, :cond_1

    aget v6, v7, v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float/2addr v5, v4

    iget-object v4, p0, Lorg/telegram/messenger/FourierTransform;->averages:[F

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    :goto_3
    iget v5, p0, Lorg/telegram/messenger/FourierTransform;->octaves:I

    if-ge v1, v5, :cond_5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    if-nez v1, :cond_3

    const/4 v8, 0x0

    goto :goto_4

    :cond_3
    iget v8, p0, Lorg/telegram/messenger/FourierTransform;->sampleRate:I

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-int/2addr v5, v1

    int-to-double v9, v5

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v5, v9

    div-float/2addr v8, v5

    :goto_4
    iget v5, p0, Lorg/telegram/messenger/FourierTransform;->sampleRate:I

    div-int/2addr v5, v2

    int-to-float v5, v5

    iget v9, p0, Lorg/telegram/messenger/FourierTransform;->octaves:I

    sub-int/2addr v9, v1

    sub-int/2addr v9, v4

    int-to-double v9, v9

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v5, v8

    iget v6, p0, Lorg/telegram/messenger/FourierTransform;->avgPerOctave:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/4 v6, 0x0

    :goto_5
    iget v7, p0, Lorg/telegram/messenger/FourierTransform;->avgPerOctave:I

    if-ge v6, v7, :cond_4

    mul-int v7, v7, v1

    add-int/2addr v7, v6

    iget-object v9, p0, Lorg/telegram/messenger/FourierTransform;->averages:[F

    add-float v10, v8, v5

    invoke-virtual {p0, v8, v10}, Lorg/telegram/messenger/FourierTransform;->calcAvg(FF)F

    move-result v8

    aput v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    move v8, v10

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public abstract forward([F)V
.end method

.method public forward([FI)V
    .locals 3

    .line 0
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-array v0, v1, [F

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/FourierTransform;->forward([F)V

    return-void
.end method

.method public freqToIndex(F)I
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/FourierTransform;->getBandWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/FourierTransform;->sampleRate:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/messenger/FourierTransform;->getBandWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/FourierTransform;->sampleRate:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getBand(I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :cond_1
    aget p1, v0, p1

    return p1
.end method

.method public getBandWidth()F
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FourierTransform;->bandWidth:F

    return v0
.end method

.method public getSpectrumImaginary()[F
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    return-object v0
.end method

.method public getSpectrumReal()[F
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    return-object v0
.end method

.method public indexToFreq(I)F
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/FourierTransform;->getBandWidth()F

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    if-nez p1, :cond_0

    mul-float v0, v0, v1

    return v0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    iget p1, p0, Lorg/telegram/messenger/FourierTransform;->sampleRate:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    sub-float/2addr p1, v2

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    return p1

    :cond_1
    int-to-float p1, p1

    mul-float p1, p1, v0

    return p1
.end method

.method public abstract inverse([F)V
.end method

.method public inverse([F[F[F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/FourierTransform;->setComplex([F[F)V

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/FourierTransform;->inverse([F)V

    return-void
.end method

.method public linAverages(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    return-void

    :cond_0
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/messenger/FourierTransform;->averages:[F

    const/4 p1, 0x1

    iput p1, p0, Lorg/telegram/messenger/FourierTransform;->whichAverage:I

    return-void
.end method

.method public logAverages(II)V
    .locals 4

    iget v0, p0, Lorg/telegram/messenger/FourierTransform;->sampleRate:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/FourierTransform;->octaves:I

    :goto_0
    div-float/2addr v0, v1

    int-to-float v3, p1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    iget v3, p0, Lorg/telegram/messenger/FourierTransform;->octaves:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/messenger/FourierTransform;->octaves:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lorg/telegram/messenger/FourierTransform;->avgPerOctave:I

    iget p1, p0, Lorg/telegram/messenger/FourierTransform;->octaves:I

    mul-int p1, p1, p2

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/messenger/FourierTransform;->averages:[F

    const/4 p1, 0x2

    iput p1, p0, Lorg/telegram/messenger/FourierTransform;->whichAverage:I

    return-void
.end method

.method public noAverages()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/messenger/FourierTransform;->averages:[F

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/FourierTransform;->whichAverage:I

    return-void
.end method

.method public abstract scaleBand(IF)V
.end method

.method public abstract setBand(IF)V
.end method

.method protected setComplex([F[F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    array-length v1, v0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    array-length v1, v1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    array-length v0, p2

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public specSize()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    array-length v0, v0

    return v0
.end method

.method public timeSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    return v0
.end method
