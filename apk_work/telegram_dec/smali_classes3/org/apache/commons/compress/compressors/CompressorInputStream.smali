.class public abstract Lorg/apache/commons/compress/compressors/CompressorInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private bytesRead:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected count(I)V
    .locals 2

    .line 0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(J)V

    return-void
.end method

.method protected count(J)V
    .locals 3

    .line 0
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/CompressorInputStream;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/compressors/CompressorInputStream;->bytesRead:J

    :cond_0
    return-void
.end method
