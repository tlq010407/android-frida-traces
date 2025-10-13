.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bodySize:I

.field private compression:Z

.field private dataLengthIndicator:I

.field private encryption:Z

.field private frameId:Ljava/lang/String;

.field private headerSize:I

.field private unsynchronization:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getPosition()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v3

    const-string v4, "ISO-8859-1"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v8

    invoke-direct {v3, v8, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v8

    invoke-direct {v3, v8, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v7, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v4

    or-int/2addr v3, v8

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    :goto_2
    iput v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v3

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v3

    if-le v3, v7, :cond_c

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v8

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v8, v6, :cond_3

    const/16 v4, 0x80

    const/16 v7, 0x20

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v12, 0x0

    goto :goto_4

    :cond_3
    const/16 v8, 0x40

    const/4 v9, 0x4

    const/4 v12, 0x1

    :goto_4
    and-int/2addr v4, v3

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->compression:Z

    and-int v4, v3, v7

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->unsynchronization:Z

    and-int v4, v3, v9

    if-eqz v4, :cond_6

    const/4 v10, 0x1

    :cond_6
    iput-boolean v10, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v4

    if-ne v4, v6, :cond_9

    iget-boolean v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->compression:Z

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v4

    iput v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->dataLengthIndicator:I

    iget v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    :cond_7
    iget-boolean v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    iget v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    sub-int/2addr v4, v11

    iput v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    :cond_8
    and-int/2addr v3, v8

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    sub-int/2addr v2, v11

    :goto_7
    iput v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    goto :goto_8

    :cond_9
    and-int v4, v3, v8

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    iget v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    sub-int/2addr v4, v11

    iput v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    :cond_a
    iget-boolean v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    iget v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    sub-int/2addr v4, v11

    iput v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    :cond_b
    and-int/2addr v3, v12

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->dataLengthIndicator:I

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    sub-int/2addr v2, v5

    goto :goto_7

    :cond_c
    :goto_8
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int p1, v2

    iput p1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->headerSize:I

    return-void
.end method


# virtual methods
.method public getBodySize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    return v0
.end method

.method public getDataLengthIndicator()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->dataLengthIndicator:I

    return v0
.end method

.method public getFrameId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->headerSize:I

    return v0
.end method

.method public isCompression()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->compression:Z

    return v0
.end method

.method public isEncryption()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    return v0
.end method

.method public isPadding()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isUnsynchronization()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->unsynchronization:Z

    return v0
.end method

.method public isValid()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    if-lez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

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

    const-string v0, "%s[id=%s, bodysize=%d]"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
