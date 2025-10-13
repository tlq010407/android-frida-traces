.class public Lorg/telegram/messenger/audioinfo/mp3/MP3Info;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 1

    .line 0
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;-><init>(Ljava/io/InputStream;JLjava/util/logging/Level;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/util/logging/Level;)V
    .locals 6

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    const-string v0, "MP3"

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->brand:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->version:Ljava/lang/String;

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->isID3v2StartPosition(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;

    invoke-direct {v1, v0, p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;-><init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->album:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbumArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->albumArtist:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->artist:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getComment()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getSmallCover()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->smallCover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->isCompilation()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->compilation:Z

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getComposer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->composer:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCopyright()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->copyright:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDisc()S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->disc:S

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDiscs()S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->discs:S

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getGenre()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getGrouping()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->grouping:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getLyrics()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->lyrics:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->title:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getTrack()S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->track:S

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getTracks()S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->tracks:S

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getYear()S

    move-result v1

    iput-short v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->year:S

    :cond_0
    iget-wide v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-wide/32 v3, 0x36ee80

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    :cond_1
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;

    invoke-direct {v1, p0, p2, p3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;-><init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Info;J)V

    invoke-virtual {p0, v0, p2, p3, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->calculateDuration(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;JLorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v2, p4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Could not determine MP3 duration"

    invoke-virtual {v2, p4, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget-object p4, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->title:Ljava/lang/String;

    if-eqz p4, :cond_3

    iget-object p4, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->album:Ljava/lang/String;

    if-eqz p4, :cond_3

    iget-object p4, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->artist:Ljava/lang/String;

    if-nez p4, :cond_a

    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x80

    sub-long/2addr p2, v3

    cmp-long p4, v1, p2

    if-gtz p4, :cond_a

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->skipFully(J)V

    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->isID3v1StartPosition(Ljava/io/InputStream;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->album:Ljava/lang/String;

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->album:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->artist:Ljava/lang/String;

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getArtist()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->artist:Ljava/lang/String;

    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->comment:Ljava/lang/String;

    if-nez p1, :cond_6

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getComment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->comment:Ljava/lang/String;

    :cond_6
    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;

    if-nez p1, :cond_7

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getGenre()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;

    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->title:Ljava/lang/String;

    if-nez p1, :cond_8

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->title:Ljava/lang/String;

    :cond_8
    iget-short p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->track:S

    if-nez p1, :cond_9

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getTrack()S

    move-result p1

    iput-short p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->track:S

    :cond_9
    iget-short p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->year:S

    if-nez p1, :cond_a

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getYear()S

    move-result p1

    iput-short p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->year:S

    :cond_a
    return-void
.end method


# virtual methods
.method calculateDuration(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;JLorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->readFirstFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getNumberOfFrames()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v1

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v2

    mul-int v4, v4, v2

    int-to-long v2, v4

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getTotalDuration(J)J

    move-result-wide v1

    return-wide v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getBitrate()I

    move-result v8

    int-to-long v9, v8

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getDuration()I

    move-result v11

    const/16 v12, 0x2710

    div-int/2addr v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_1
    if-ne v14, v12, :cond_1

    if-nez v13, :cond_1

    const-wide/16 v15, 0x0

    cmp-long v17, p2, v15

    if-lez v17, :cond_1

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v1

    sub-long v2, p2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->readNextFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    move-result-object v3

    if-nez v3, :cond_2

    const-wide/16 v1, 0x3e8

    mul-long v6, v6, v1

    int-to-long v1, v14

    mul-long v6, v6, v1

    const-wide/16 v1, 0x8

    mul-long v6, v6, v1

    div-long/2addr v6, v9

    return-wide v6

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getBitrate()I

    move-result v15

    move/from16 v16, v12

    if-eq v15, v8, :cond_3

    const/4 v13, 0x1

    :cond_3
    int-to-long v11, v15

    add-long/2addr v9, v11

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v6, v11

    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v16

    goto :goto_1

    :cond_4
    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string v2, "No audio frame"

    invoke-direct {v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method readFirstFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
    .locals 12

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v3

    move v11, v3

    move v3, v0

    move v0, v11

    :goto_0
    const/4 v4, 0x0

    if-eq v0, v1, :cond_f

    const/16 v5, 0xff

    if-ne v3, v5, :cond_e

    and-int/lit16 v3, v0, 0xe0

    const/16 v6, 0xe0

    if-ne v3, v6, :cond_e

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->mark(I)V

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v6

    :goto_1
    if-ne v6, v1, :cond_3

    goto/16 :goto_a

    :cond_3
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v7

    :goto_2
    if-ne v7, v1, :cond_5

    goto/16 :goto_a

    :cond_5
    :try_start_0
    new-instance v8, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-direct {v8, v0, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;-><init>(III)V
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    move-object v8, v4

    :goto_3
    if-eqz v8, :cond_d

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->reset()V

    invoke-virtual {v8}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p1, v6}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->mark(I)V

    invoke-virtual {v8}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v6

    new-array v7, v6, [B

    aput-byte v1, v7, v2

    int-to-byte v9, v0

    const/4 v10, 0x1

    aput-byte v9, v7, v10

    sub-int/2addr v6, v3

    :try_start_1
    invoke-virtual {p1, v7, v3, v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    new-instance v3, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    invoke-direct {v3, v8, v7}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;-><init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;[B)V

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->isChecksumError()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v4

    :goto_4
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, -0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v7

    :goto_5
    if-eq v4, v1, :cond_c

    if-ne v7, v1, :cond_8

    goto :goto_8

    :cond_8
    if-ne v4, v5, :cond_d

    and-int/lit16 v4, v7, 0xfe

    and-int/lit16 v5, v0, 0xfe

    if-ne v4, v5, :cond_d

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, -0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v4

    :goto_6
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, -0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v5

    :goto_7
    if-eq v4, v1, :cond_c

    if-ne v5, v1, :cond_b

    goto :goto_8

    :cond_b
    :try_start_2
    new-instance v9, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-direct {v9, v7, v4, v5}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;-><init>(III)V

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->isCompatible(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->reset()V

    int-to-long v4, v6

    invoke-virtual {p1, v4, v5}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->skipFully(J)V
    :try_end_2
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_c
    :goto_8
    return-object v3

    :catch_1
    :cond_d
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->reset()V

    :cond_e
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    :goto_9
    const/4 v0, -0x1

    goto/16 :goto_0

    :catch_2
    :cond_f
    :goto_a
    return-object v4
.end method

.method readNextFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
    .locals 8

    invoke-virtual {p3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->mark(I)V

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v1

    :goto_0
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v3

    :goto_1
    const/4 v4, 0x0

    if-eq v1, v2, :cond_8

    if-ne v3, v2, :cond_2

    goto :goto_6

    :cond_2
    const/16 v5, 0xff

    if-ne v1, v5, :cond_7

    and-int/lit16 v5, v3, 0xe0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_7

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result v5

    :goto_2
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->read()I

    move-result p2

    :goto_3
    if-eq v5, v2, :cond_6

    if-ne p2, v2, :cond_5

    goto :goto_5

    :cond_5
    :try_start_0
    new-instance v2, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-direct {v2, v3, v5, p2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;-><init>(III)V
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v2, p3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->isCompatible(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result p3

    new-array v6, p3, [B

    int-to-byte v1, v1

    const/4 v7, 0x0

    aput-byte v1, v6, v7

    int-to-byte v1, v3

    const/4 v3, 0x1

    aput-byte v1, v6, v3

    int-to-byte v1, v5

    const/4 v3, 0x2

    aput-byte v1, v6, v3

    int-to-byte p2, p2

    const/4 v1, 0x3

    aput-byte p2, v6, v1

    sub-int/2addr p3, v0

    :try_start_1
    invoke-virtual {p1, v6, v0, p3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    invoke-direct {p1, v2, v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;-><init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;[B)V

    return-object p1

    :catch_1
    :cond_6
    :goto_5
    return-object v4

    :cond_7
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->reset()V

    :cond_8
    :goto_6
    return-object v4
.end method
