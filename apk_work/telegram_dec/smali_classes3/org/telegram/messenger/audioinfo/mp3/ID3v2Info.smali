.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;,
        Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private coverPictureType:B

.field private final debugLevel:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->isID3v2StartPosition(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    invoke-direct {v3, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;-><init>(Ljava/io/InputStream;)V

    const-string v4, "ID3"

    iput-object v4, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->brand:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getRevision()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    const-string v4, "2.%d.%d"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->version:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->tagBody(Ljava/io/InputStream;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;

    move-result-object v4

    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getRemainingLength()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v9, v5, v7

    if-lez v9, :cond_4

    new-instance v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    invoke-direct {v5, v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;-><init>(Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;)V

    invoke-virtual {v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isPadding()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getBodySize()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getRemainingLength()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ID3 frame claims to extend frames area"

    invoke-virtual {v0, p2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_1
    invoke-virtual {v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isEncryption()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->frameBody(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;

    move-result-object v6
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)V
    :try_end_1
    .catch Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v5

    :goto_1
    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v6
    :try_end_2
    .catch Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v7

    :try_start_3
    sget-object v8, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v8, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    const-string v9, "ID3 exception occured in frame %s: %s"

    invoke-virtual {v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getFrameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v5, v10, v1

    aput-object v7, v10, v0

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, p2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v5

    goto :goto_1

    :goto_2
    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v1

    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V

    throw v0

    :cond_3
    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v6

    invoke-virtual {v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getBodySize()I

    move-result v5

    int-to-long v7, v5

    move-object v5, v6

    move-wide v6, v7

    :goto_3
    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V
    :try_end_4
    .catch Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :goto_4
    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID3 exception occured: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4
    :goto_5
    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object p2

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getRemainingLength()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getFooterSize()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getFooterSize()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    :cond_5
    return-void
.end method

.method public static isID3v2StartPosition(Ljava/io/InputStream;)Z
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return v0

    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw v0
.end method


# virtual methods
.method parseAttachedPictureFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;
    .locals 6

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readEncoding()Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "JPG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PNG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/unknown"

    goto :goto_0

    :cond_0
    const-string v1, "image/png"

    goto :goto_0

    :cond_1
    const-string v1, "image/jpeg"

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const/16 v2, 0x14

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readZeroTerminatedString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v2

    const/16 v3, 0xc8

    invoke-virtual {p1, v3, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readZeroTerminatedString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object p1

    new-instance v3, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;

    invoke-direct {v3, v2, v0, v1, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;-><init>(BLjava/lang/String;Ljava/lang/String;[B)V

    return-object v3
.end method

.method parseCommentOrUnsynchronizedLyricsFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;
    .locals 5

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readEncoding()Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readZeroTerminatedString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {p1, v4, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;

    invoke-direct {v0, v1, v2, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method parseFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)V
    .locals 8

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getFrameHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getFrameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getFrameHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "USLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x20

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "TYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0x1f

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "TRCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0x1e

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "TPOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0x1d

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "TPE2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0x1c

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "TPE1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x1b

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "TLEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0x1a

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "TIT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0x19

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "TIT1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0x18

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "TDRC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0x17

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "TCOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0x16

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "TCON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0x15

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "TCOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v7, 0x14

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "TCMP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v7, 0x13

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "TALB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v7, 0x12

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v7, 0x11

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "APIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v7, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "ULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "TYE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "TT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "TT1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "TRK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "TPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "TP2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "TP1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "TLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_1a
    const-string v1, "TCR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_1b
    const-string v1, "TCP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_1c
    const-string v1, "TCO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_1d
    const-string v1, "TCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_1e
    const-string v1, "TAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_1f
    const-string v1, "PIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_20
    const-string v1, "COM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v7, 0x0

    :goto_0
    const/16 v0, 0x2f

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_30

    :try_start_0
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->year:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    nop

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse year from: "

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->lyrics:Ljava/lang/String;

    if-nez v0, :cond_30

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseCommentOrUnsynchronizedLyricsFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;->text:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->lyrics:Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_30

    :try_start_1
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->year:S
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_a

    :catch_1
    nop

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse year: "

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->title:Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->grouping:Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v3, "Could not parse track number: "

    if-gez v0, :cond_22

    :try_start_2
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->track:S
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_a

    :catch_2
    nop

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :cond_22
    :try_start_3
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput-short v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->track:S
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    nop

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_23
    :goto_1
    add-int/2addr v0, v6

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->tracks:S
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_a

    :catch_4
    nop

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse number of tracks: "

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v3, "Could not parse disc number: "

    if-gez v0, :cond_24

    :try_start_5
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->disc:S
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_a

    :catch_5
    nop

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :cond_24
    :try_start_6
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput-short v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->disc:S
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    :catch_6
    nop

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_25
    :goto_2
    add-int/2addr v0, v6

    :try_start_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->discs:S
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_a

    :catch_7
    nop

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse number of discs: "

    goto :goto_3

    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->albumArtist:Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_8
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->artist:Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    :try_start_8
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_a

    :catch_8
    nop

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->debugLevel:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse track duration: "

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_a
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->copyright:Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_b
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->compilation:Z

    goto/16 :goto_a

    :pswitch_c
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_30

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;

    :try_start_9
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_27

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v6, :cond_26

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getGenre(I)Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;

    move-result-object v1

    if-nez v1, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v6

    if-le v2, v0, :cond_28

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;

    goto :goto_4

    :cond_26
    const/4 v1, 0x0

    goto :goto_4

    :cond_27
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getGenre(I)Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;

    move-result-object v1

    :cond_28
    :goto_4
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_a

    :pswitch_d
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->composer:Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_e
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->album:Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_f
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    iget-byte v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->coverPictureType:B

    if-eq v0, v3, :cond_30

    :cond_29
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseAttachedPictureFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    iget-byte v0, p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->type:B

    if-eq v0, v3, :cond_2a

    if-nez v0, :cond_30

    :cond_2a
    :try_start_a
    iget-object v0, p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->imageData:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v2, v0

    invoke-static {v0, v5, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_2b

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v7, v3, :cond_2c

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_2b
    :goto_5
    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_6
    if-le v2, v3, :cond_2c

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/lit8 v2, v2, 0x2

    goto :goto_6

    :cond_2c
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, v0

    invoke-static {v0, v5, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42f00000    # 120.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2d

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v0, v3

    invoke-static {v1, v2, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    :cond_2d
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    :goto_7
    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->smallCover:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->smallCover:Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2e
    :goto_9
    iget-byte p1, p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$AttachedPicture;->type:B

    iput-byte p1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->coverPictureType:B

    goto :goto_a

    :pswitch_10
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->parseCommentOrUnsynchronizedLyricsFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->comment:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;->description:Ljava/lang/String;

    if-eqz v0, :cond_2f

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2f
    iget-object p1, p1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info$CommentOrUnsynchronizedLyrics;->text:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->comment:Ljava/lang/String;

    :catch_9
    :cond_30
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10561 -> :sswitch_20
        0x1356a -> :sswitch_1f
        0x1437f -> :sswitch_1e
        0x143be -> :sswitch_1d
        0x143c0 -> :sswitch_1c
        0x143c1 -> :sswitch_1b
        0x143c3 -> :sswitch_1a
        0x144cd -> :sswitch_19
        0x14535 -> :sswitch_18
        0x14536 -> :sswitch_17
        0x14545 -> :sswitch_16
        0x1458d -> :sswitch_15
        0x145b1 -> :sswitch_14
        0x145b2 -> :sswitch_13
        0x14660 -> :sswitch_12
        0x1489d -> :sswitch_11
        0x1ec189 -> :sswitch_10
        0x1fa70c -> :sswitch_f
        0x272ca3 -> :sswitch_e
        0x273452 -> :sswitch_d
        0x27348d -> :sswitch_c
        0x27348e -> :sswitch_b
        0x273490 -> :sswitch_a
        0x2738a1 -> :sswitch_9
        0x274b92 -> :sswitch_8
        0x274b93 -> :sswitch_7
        0x275521 -> :sswitch_6
        0x276408 -> :sswitch_5
        0x276409 -> :sswitch_4
        0x276560 -> :sswitch_3
        0x276b66 -> :sswitch_2
        0x2785f2 -> :sswitch_1
        0x27e4a6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method parseTextFrame(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readEncoding()Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
