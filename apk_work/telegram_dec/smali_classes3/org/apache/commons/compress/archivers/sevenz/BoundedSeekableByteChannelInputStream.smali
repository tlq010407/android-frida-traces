.class Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private bytesRemaining:J

.field private final channel:Ljava/nio/channels/SeekableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;J)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    const-wide/16 v0, 0x2000

    cmp-long p1, p2, v0

    if-gez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    long-to-int p1, p2

    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    const/16 p1, 0x2000

    goto :goto_0

    :goto_1
    return-void
.end method

.method private read(I)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 5

    .line 0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->read(I)I

    move-result v0

    if-gez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 5

    .line 0
    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    int-to-long v2, p3

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    long-to-int p3, v0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-gt p3, v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->read(I)I

    move-result p3

    goto :goto_0

    :cond_3
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    if-ltz p3, :cond_4

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    :cond_4
    return p3
.end method
