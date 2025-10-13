.class public Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# static fields
.field private static final BITRATES:[[I

.field private static final BITRATES_COLUMN:[[I

.field private static final FREQUENCIES:[[I

.field private static final SIDE_INFO_SIZES:[[I

.field private static final SIZE_COEFFICIENTS:[[I

.field private static final SLOT_SIZES:[I


# instance fields
.field private final bitrate:I

.field private final channelMode:I

.field private final frequency:I

.field private final layer:I

.field private final padding:I

.field private final protection:I

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, -0x1

    const/4 v1, 0x4

    new-array v2, v1, [[I

    const/16 v3, 0x2b11

    const/16 v4, 0x5622

    const v5, 0xac44

    filled-new-array {v3, v0, v4, v5}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x2ee0

    const/16 v5, 0x5dc0

    const v6, 0xbb80

    filled-new-array {v3, v0, v5, v6}, [I

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/16 v3, 0x1f40

    const/16 v7, 0x3e80

    const/16 v8, 0x7d00

    filled-new-array {v3, v0, v7, v8}, [I

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v2, v7

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    const/4 v9, 0x3

    aput-object v3, v2, v9

    sput-object v2, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->FREQUENCIES:[[I

    const/16 v2, 0x10

    new-array v2, v2, [[I

    filled-new-array {v4, v4, v4, v4, v4}, [I

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x1f40

    filled-new-array {v8, v8, v8, v8, v3}, [I

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0xfa00

    const v10, 0x9c40

    const/16 v11, 0x3e80

    filled-new-array {v3, v6, v10, v6, v11}, [I

    move-result-object v10

    aput-object v10, v2, v7

    const v10, 0x17700

    const v11, 0xdac0

    const/16 v12, 0x5dc0

    filled-new-array {v10, v11, v6, v11, v12}, [I

    move-result-object v12

    aput-object v12, v2, v9

    const v12, 0x1f400

    filled-new-array {v12, v3, v11, v3, v8}, [I

    move-result-object v8

    aput-object v8, v2, v1

    const v8, 0x27100

    const v13, 0x13880

    const v14, 0x9c40

    filled-new-array {v8, v13, v3, v13, v14}, [I

    move-result-object v14

    const/4 v15, 0x5

    aput-object v14, v2, v15

    const v14, 0x2ee00

    filled-new-array {v14, v10, v13, v10, v6}, [I

    move-result-object v6

    const/4 v15, 0x6

    aput-object v6, v2, v15

    const v6, 0x36b00

    const v15, 0x1b580

    filled-new-array {v6, v15, v10, v15, v11}, [I

    move-result-object v11

    const/16 v16, 0x7

    aput-object v11, v2, v16

    const v11, 0x3e800

    filled-new-array {v11, v12, v15, v12, v3}, [I

    move-result-object v3

    const/16 v16, 0x8

    aput-object v3, v2, v16

    const v3, 0x46500

    const v7, 0x23280

    filled-new-array {v3, v8, v12, v7, v13}, [I

    move-result-object v3

    const/16 v7, 0x9

    aput-object v3, v2, v7

    const v3, 0x4e200

    filled-new-array {v3, v14, v8, v8, v10}, [I

    move-result-object v3

    const/16 v10, 0xa

    aput-object v3, v2, v10

    const v3, 0x55f00

    const v10, 0x2af80

    filled-new-array {v3, v6, v14, v10, v15}, [I

    move-result-object v3

    const/16 v10, 0xb

    aput-object v3, v2, v10

    const v3, 0x5dc00

    filled-new-array {v3, v11, v6, v14, v12}, [I

    move-result-object v3

    const/16 v10, 0xc

    aput-object v3, v2, v10

    const v3, 0x65900

    const v12, 0x4e200

    const v13, 0x23280

    filled-new-array {v3, v12, v11, v6, v13}, [I

    move-result-object v3

    const/16 v6, 0xd

    aput-object v3, v2, v6

    const v3, 0x6d600

    const v6, 0x5dc00

    filled-new-array {v3, v6, v12, v11, v8}, [I

    move-result-object v3

    const/16 v6, 0xe

    aput-object v3, v2, v6

    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v3

    const/16 v6, 0xf

    aput-object v3, v2, v6

    sput-object v2, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->BITRATES:[[I

    new-array v2, v1, [[I

    filled-new-array {v0, v1, v1, v9}, [I

    move-result-object v3

    aput-object v3, v2, v4

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v5

    filled-new-array {v0, v1, v1, v9}, [I

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    filled-new-array {v0, v6, v5, v4}, [I

    move-result-object v3

    aput-object v3, v2, v9

    sput-object v2, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->BITRATES_COLUMN:[[I

    new-array v2, v1, [[I

    const/16 v3, 0x48

    const/16 v6, 0x90

    filled-new-array {v0, v3, v6, v10}, [I

    move-result-object v3

    aput-object v3, v2, v4

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x48

    filled-new-array {v0, v3, v6, v10}, [I

    move-result-object v3

    const/4 v8, 0x2

    aput-object v3, v2, v8

    filled-new-array {v0, v6, v6, v10}, [I

    move-result-object v3

    aput-object v3, v2, v9

    sput-object v2, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SIZE_COEFFICIENTS:[[I

    filled-new-array {v0, v5, v5, v1}, [I

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SLOT_SIZES:[I

    new-array v1, v1, [[I

    const/16 v2, 0x11

    const/16 v3, 0x20

    filled-new-array {v2, v0, v2, v3}, [I

    move-result-object v3

    aput-object v3, v1, v4

    const/16 v3, 0x20

    filled-new-array {v2, v0, v2, v3}, [I

    move-result-object v3

    aput-object v3, v1, v5

    const/16 v3, 0x20

    filled-new-array {v2, v0, v2, v3}, [I

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    filled-new-array {v7, v0, v7, v2}, [I

    move-result-object v0

    aput-object v0, v1, v9

    sput-object v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SIDE_INFO_SIZES:[[I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    and-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    shr-int/lit8 v0, p1, 0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    if-eqz v0, :cond_6

    shr-int/lit8 v3, p2, 0x4

    const/16 v4, 0xf

    and-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->bitrate:I

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_4

    shr-int/lit8 v3, p2, 0x2

    and-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->frequency:I

    if-eq v3, v1, :cond_3

    const/4 v3, 0x6

    shr-int/2addr p3, v3

    and-int/2addr p3, v1

    iput p3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->channelMode:I

    shr-int/2addr p2, v2

    and-int/2addr p2, v2

    iput p2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->padding:I

    and-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->protection:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getSideInfoSize()I

    move-result p1

    add-int/2addr v3, p1

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result p1

    if-lt p1, v3, :cond_2

    return-void

    :cond_2
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Frame size must be at least "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string p2, "Reserved frequency"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string p2, "Free bitrate"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string p2, "Reserved bitrate"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string p2, "Reserved layer"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string p2, "Reserved version"

    invoke-direct {p1, p2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBitrate()I
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->BITRATES:[[I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->bitrate:I

    aget-object v0, v0, v1

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->BITRATES_COLUMN:[[I

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    aget-object v1, v1, v2

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    aget v1, v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public getChannelMode()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->channelMode:I

    return v0
.end method

.method public getDuration()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getTotalDuration(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getFrameSize()I
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SIZE_COEFFICIENTS:[[I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    aget v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getBitrate()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrequency()I

    move-result v1

    div-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->padding:I

    add-int/2addr v0, v1

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SLOT_SIZES:[I

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    aget v1, v1, v2

    mul-int v0, v0, v1

    return v0
.end method

.method public getFrequency()I
    .locals 2

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->FREQUENCIES:[[I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->frequency:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    aget v0, v0, v1

    return v0
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    return v0
.end method

.method public getProtection()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->protection:I

    return v0
.end method

.method public getSampleCount()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x180

    return v0

    :cond_0
    const/16 v0, 0x480

    return v0
.end method

.method public getSideInfoSize()I
    .locals 2

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->SIDE_INFO_SIZES:[[I

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->channelMode:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    aget v0, v0, v1

    return v0
.end method

.method public getTotalDuration(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getSampleCount()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/16 p1, 0x3e8

    mul-long v0, v0, p1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrequency()I

    move-result p2

    mul-int p1, p1, p2

    int-to-long p1, p1

    div-long/2addr v0, p1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getVersion()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getChannelMode()I

    move-result p1

    if-ne p1, p2, :cond_0

    const-wide/16 p1, 0x2

    div-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public getVBRIOffset()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    return v0
.end method

.method public getXingOffset()I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getSideInfoSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public isCompatible(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;)Z
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    iget v1, p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->layer:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    iget v1, p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->version:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->frequency:I

    iget v1, p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->frequency:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->channelMode:I

    iget p1, p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->channelMode:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
