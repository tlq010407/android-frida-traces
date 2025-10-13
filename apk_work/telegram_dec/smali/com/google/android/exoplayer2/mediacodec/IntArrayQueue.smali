.class final Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[I

.field private headIndex:I

.field private size:I

.field private tailIndex:I

.field private wrapAroundMask:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    return-void
.end method

.method private doubleArraySize()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_0

    new-array v2, v1, [I

    array-length v3, v0

    iget v4, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v0, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->doubleArraySize()V

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    aput p1, v1, v0

    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->tailIndex:I

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()I
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->data:[I

    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->wrapAroundMask:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->headIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->size:I

    return v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
