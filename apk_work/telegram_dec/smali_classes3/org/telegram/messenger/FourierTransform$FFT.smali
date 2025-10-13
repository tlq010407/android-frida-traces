.class public Lorg/telegram/messenger/FourierTransform$FFT;
.super Lorg/telegram/messenger/FourierTransform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/FourierTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FFT"
.end annotation


# instance fields
.field private coslookup:[F

.field private reverse:[I

.field private sinlookup:[F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FourierTransform;-><init>(IF)V

    add-int/lit8 p2, p1, -0x1

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/FourierTransform$FFT;->buildReverseTable()V

    invoke-direct {p0}, Lorg/telegram/messenger/FourierTransform$FFT;->buildTrigTables()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FFT: timeSize must be a power of two."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bitReverseComplex()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    array-length v0, v0

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    array-length v1, v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    array-length v4, v3

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/FourierTransform$FFT;->reverse:[I

    aget v4, v4, v2

    aget v3, v3, v4

    aput v3, v0, v2

    iget-object v3, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    iput-object v1, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    return-void
.end method

.method private bitReverseSamples([FI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    iget-object v2, p0, Lorg/telegram/messenger/FourierTransform$FFT;->reverse:[I

    aget v2, v2, v0

    add-int/2addr v2, p2

    aget v2, p1, v2

    aput v2, v1, v0

    iget-object v1, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private buildReverseTable()V
    .locals 8

    iget v0, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/messenger/FourierTransform$FFT;->reverse:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    div-int/lit8 v1, v0, 0x2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/FourierTransform$FFT;->reverse:[I

    add-int v6, v4, v3

    aget v7, v5, v4

    add-int/2addr v7, v1

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    shl-int/lit8 v3, v3, 0x1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildTrigTables()V
    .locals 7

    iget v0, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/messenger/FourierTransform$FFT;->sinlookup:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/messenger/FourierTransform$FFT;->coslookup:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/FourierTransform$FFT;->sinlookup:[F

    int-to-float v3, v1

    const v4, -0x3fb6f025

    div-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v1

    iget-object v2, p0, Lorg/telegram/messenger/FourierTransform$FFT;->coslookup:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cos(I)F
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform$FFT;->coslookup:[F

    aget p1, v0, p1

    return p1
.end method

.method private fft()V
    .locals 14

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FourierTransform$FFT;->cos(I)F

    move-result v1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FourierTransform$FFT;->sin(I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    move v6, v5

    :goto_2
    iget-object v7, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    array-length v8, v7

    if-ge v6, v8, :cond_0

    add-int v8, v6, v0

    aget v9, v7, v8

    mul-float v10, v3, v9

    iget-object v11, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    aget v12, v11, v8

    mul-float v13, v4, v12

    sub-float/2addr v10, v13

    mul-float v12, v12, v3

    mul-float v9, v9, v4

    add-float/2addr v12, v9

    aget v9, v7, v6

    sub-float/2addr v9, v10

    aput v9, v7, v8

    aget v9, v11, v6

    sub-float/2addr v9, v12

    aput v9, v11, v8

    aget v8, v7, v6

    add-float/2addr v8, v10

    aput v8, v7, v6

    aget v7, v11, v6

    add-float/2addr v7, v12

    aput v7, v11, v6

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    goto :goto_2

    :cond_0
    mul-float v6, v3, v1

    mul-float v7, v4, v2

    sub-float/2addr v6, v7

    mul-float v3, v3, v2

    mul-float v4, v4, v1

    add-float/2addr v4, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sin(I)F
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform$FFT;->sinlookup:[F

    aget p1, v0, p1

    return p1
.end method


# virtual methods
.method protected allocateArrays()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    return-void
.end method

.method public forward([F)V
    .locals 2

    .line 0
    array-length v0, p1

    iget v1, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/FourierTransform$FFT;->bitReverseSamples([FI)V

    invoke-direct {p0}, Lorg/telegram/messenger/FourierTransform$FFT;->fft()V

    invoke-virtual {p0}, Lorg/telegram/messenger/FourierTransform;->fillSpectrum()V

    return-void
.end method

.method public forward([FI)V
    .locals 2

    .line 0
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FourierTransform$FFT;->bitReverseSamples([FI)V

    invoke-direct {p0}, Lorg/telegram/messenger/FourierTransform$FFT;->fft()V

    invoke-virtual {p0}, Lorg/telegram/messenger/FourierTransform;->fillSpectrum()V

    return-void
.end method

.method public forward([F[F)V
    .locals 2

    .line 0
    array-length v0, p1

    iget v1, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    if-ne v0, v1, :cond_1

    array-length v0, p2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/FourierTransform;->setComplex([F[F)V

    invoke-direct {p0}, Lorg/telegram/messenger/FourierTransform$FFT;->bitReverseComplex()V

    invoke-direct {p0}, Lorg/telegram/messenger/FourierTransform$FFT;->fft()V

    invoke-virtual {p0}, Lorg/telegram/messenger/FourierTransform;->fillSpectrum()V

    :cond_1
    :goto_0
    return-void
.end method

.method public inverse([F)V
    .locals 5

    array-length v0, p1

    iget-object v1, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    array-length v1, v1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    aget v3, v2, v1

    const/high16 v4, -0x40800000    # -1.0f

    mul-float v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/FourierTransform$FFT;->bitReverseComplex()V

    invoke-direct {p0}, Lorg/telegram/messenger/FourierTransform$FFT;->fft()V

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    aget v2, v1, v0

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public scaleBand(IF)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    aget v1, v0, p1

    mul-float v1, v1, p2

    aput v1, v0, p1

    iget-object v1, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    aget v2, v1, p1

    mul-float v2, v2, p2

    aput v2, v1, p1

    iget-object v2, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    aget v3, v2, p1

    mul-float v3, v3, p2

    aput v3, v2, p1

    if-eqz p1, :cond_1

    iget p2, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    div-int/lit8 v2, p2, 0x2

    if-eq p1, v2, :cond_1

    sub-int/2addr p2, p1

    aget v2, v0, p1

    aput v2, v0, p2

    aget p1, v1, p1

    neg-float p1, p1

    aput p1, v1, p2

    :cond_1
    return-void
.end method

.method public setBand(IF)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/FourierTransform;->real:[F

    aget v2, v1, p1

    cmpl-float v3, v2, v0

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    aget v3, v3, p1

    cmpl-float v0, v3, v0

    if-nez v0, :cond_1

    aput p2, v1, p1

    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    aput p2, v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->spectrum:[F

    aget v3, v0, p1

    div-float/2addr v2, v3

    aput v2, v1, p1

    iget-object v2, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    aget v3, v2, p1

    aget v4, v0, p1

    div-float/2addr v3, v4

    aput v3, v2, p1

    aput p2, v0, p1

    aget v3, v1, p1

    mul-float v3, v3, p2

    aput v3, v1, p1

    aget p2, v2, p1

    aget v0, v0, p1

    mul-float p2, p2, v0

    aput p2, v2, p1

    :goto_0
    if-eqz p1, :cond_2

    iget p2, p0, Lorg/telegram/messenger/FourierTransform;->timeSize:I

    div-int/lit8 v0, p2, 0x2

    if-eq p1, v0, :cond_2

    sub-int/2addr p2, p1

    aget v0, v1, p1

    aput v0, v1, p2

    iget-object v0, p0, Lorg/telegram/messenger/FourierTransform;->imag:[F

    aget p1, v0, p1

    neg-float p1, p1

    aput p1, v0, p2

    :cond_2
    return-void
.end method
