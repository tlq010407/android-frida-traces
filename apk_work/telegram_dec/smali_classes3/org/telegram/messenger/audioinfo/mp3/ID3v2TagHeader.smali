.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private compression:Z

.field private footerSize:I

.field private headerSize:I

.field private paddingSize:I

.field private revision:I

.field private totalTagSize:I

.field private unsynchronization:Z

.field private version:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;-><init>(Lorg/telegram/messenger/audioinfo/util/PositionInputStream;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/audioinfo/util/PositionInputStream;)V
    .locals 11

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->revision:I

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->paddingSize:I

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-direct {v3, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v6, "ID3"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v4

    iput v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_1

    if-ne v4, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported ID3v2 version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v4

    iput v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->revision:I

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v8

    const/16 v9, 0xa

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    iget v8, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    const/4 v10, 0x1

    if-ne v8, v6, :cond_4

    and-int/lit16 v3, v4, 0x80

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    and-int/lit8 v3, v4, 0x40

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->compression:Z

    goto :goto_4

    :cond_4
    and-int/lit16 v6, v4, 0x80

    if-eqz v6, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_7

    if-ne v8, v5, :cond_6

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v0

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->paddingSize:I

    add-int/lit8 v0, v0, -0x6

    :goto_2
    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v0

    sub-int/2addr v0, v7

    goto :goto_2

    :cond_7
    :goto_3
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-lt v0, v7, :cond_8

    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_8

    iput v9, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    add-int/2addr v0, v9

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    :cond_8
    :goto_4
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-int p1, v3

    iput p1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    return-void

    :cond_9
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid ID3 identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public getFooterSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    return v0
.end method

.method public getRevision()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->revision:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    return v0
.end method

.method public tagBody(Ljava/io/InputStream;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;
    .locals 14

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->compression:Z

    if-nez v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    if-eqz v0, :cond_4

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    iget p1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-byte v4, p1, v2

    if-eqz v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v3, v7, 0x1

    aput-byte v4, p1, v7

    move v7, v3

    :cond_1
    const/4 v3, -0x1

    if-ne v4, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1, v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    iget p1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    int-to-long v5, p1

    move-object v3, v0

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;-><init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;)V

    return-object v0

    :cond_4
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    int-to-long v10, v1

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    sub-int/2addr v2, v1

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    sub-int v12, v2, v1

    move-object v8, v0

    move-object v9, p1

    move-object v13, p0

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;-><init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;)V

    return-object v0

    :cond_5
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    const-string v0, "Tag compression is not supported"

    invoke-direct {p1, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s[version=%s, totalTagSize=%d]"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
