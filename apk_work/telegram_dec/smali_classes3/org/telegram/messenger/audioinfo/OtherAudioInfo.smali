.class public Lorg/telegram/messenger/audioinfo/OtherAudioInfo;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "SourceFile"


# instance fields
.field public failed:Z

.field private final r:Landroid/media/MediaMetadataRetriever;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->r:Landroid/media/MediaMetadataRetriever;

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-string p1, "OTHER"

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->brand:Ljava/lang/String;

    const-string p1, "0"

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->version:Ljava/lang/String;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->title:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->artist:Ljava/lang/String;

    const/16 p1, 0xd

    invoke-direct {p0, p1}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->albumArtist:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->album:Ljava/lang/String;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getShort(I)S

    move-result p1

    iput-short p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->year:S

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getShort(I)S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->track:S

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getShort(I)S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->tracks:S

    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getShort(I)S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->disc:S

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->composer:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-static {v0, p1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42f00000    # 120.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p1

    float-to-int p1, v3

    invoke-static {v0, v2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    :goto_1
    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->smallCover:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->failed:Z

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    :try_start_1
    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->r:Landroid/media/MediaMetadataRetriever;

    if-eqz p1, :cond_3

    .line 0
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    return-void
.end method

.method private getLong(I)J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->r:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getShort(I)S
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->r:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/OtherAudioInfo;->r:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
