.class public Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "SourceFile"


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final debugLevel:Ljava/util/logging/Level;

.field private rating:B

.field private speed:Ljava/math/BigDecimal;

.field private tempo:S

.field private volume:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 0
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;-><init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v0, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;-><init>(Ljava/io/InputStream;)V

    sget-object p1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const-string p1, "ftyp"

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->nextChild(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->ftyp(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    const-string p1, "moov"

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->moov(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    return-void
.end method


# virtual methods
.method data(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 7

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getParent()Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "\u00a9wrt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v2, "\u00a9nam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v2, "\u00a9lyr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v2, "\u00a9grp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v2, "\u00a9gen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v2, "\u00a9day"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v2, "\u00a9cpy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v2, "\u00a9com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v2, "\u00a9cmt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v2, "\u00a9alb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v2, "\u00a9ART"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "trkn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "tmpo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_d
    const-string v2, "rtng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_e
    const-string v2, "gnre"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_f
    const-string v2, "disk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_10
    const-string v2, "cprt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_11
    const-string v2, "cpil"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_12
    const-string v2, "covr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_13
    const-string v2, "aART"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v6, 0x0

    :goto_0
    const-string v1, "UTF-8"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->title:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_1
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->lyrics:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->grouping:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_3
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_1c

    :try_start_0
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput-short p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->year:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_7

    :pswitch_5
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->composer:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_15
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->composer:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_6
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->comment:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_7
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->album:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_8
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->artist:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_9
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->track:S

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->tracks:S

    goto/16 :goto_7

    :pswitch_a
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->tempo:S

    goto/16 :goto_7

    :pswitch_b
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result p1

    iput-byte p1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->rating:B

    goto/16 :goto_7

    :pswitch_c
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_16
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v2

    const-wide/16 v5, 0x2

    cmp-long v0, v2, v5

    if-nez v0, :cond_17

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result p1

    sub-int/2addr p1, v4

    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getGenre(I)Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getDescription()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;

    goto/16 :goto_7

    :cond_17
    :goto_2
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_d
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->disc:S

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->discs:S

    goto/16 :goto_7

    :pswitch_e
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->copyright:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_18
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->copyright:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_f
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->compilation:Z

    goto/16 :goto_7

    :pswitch_10
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readBytes()[B

    move-result-object p1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v1, p1

    invoke-static {p1, v5, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v2, 0x320

    if-gt v1, v2, :cond_19

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v6, v2, :cond_1a

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_19
    :goto_3
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_4
    if-le v1, v2, :cond_1a

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_1a
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p1

    invoke-static {p1, v5, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1c

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

    if-lez v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int p1, v2

    invoke-static {v0, v1, p1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_5

    :cond_1b
    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    :goto_5
    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->smallCover:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1c

    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->smallCover:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :pswitch_11
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->albumArtist:Ljava/lang/String;

    :catch_1
    :cond_1c
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d1642 -> :sswitch_13
        0x2eb028 -> :sswitch_12
        0x2eb250 -> :sswitch_11
        0x2eb36f -> :sswitch_10
        0x2f0d9d -> :sswitch_f
        0x307d5a -> :sswitch_e
        0x35937b -> :sswitch_d
        0x366238 -> :sswitch_c
        0x367461 -> :sswitch_b
        0x4dd0fa -> :sswitch_a
        0x4e4c4e -> :sswitch_9
        0x4e5401 -> :sswitch_8
        0x4e5438 -> :sswitch_7
        0x4e5463 -> :sswitch_6
        0x4e5653 -> :sswitch_5
        0x4e6207 -> :sswitch_4
        0x4e639c -> :sswitch_3
        0x4e773c -> :sswitch_2
        0x4e7bd1 -> :sswitch_1
        0x4e9fb0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
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
        :pswitch_e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method ftyp(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x4

    const-string v2, "ISO8859_1"

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->brand:Ljava/lang/String;

    const-string v2, "M4V|MP4|mp42|isom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ": brand="

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (experimental)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->brand:Ljava/lang/String;

    const-string v3, "M4A|M4P"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (expected M4A or M4P)"

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->version:Ljava/lang/String;

    return-void
.end method

.method ilst(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 7

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": contains no value"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->data(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method mdhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 10

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v3, 0x10

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v3

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readLong()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result p1

    int-to-long v1, p1

    :goto_1
    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    cmp-long p1, v4, v6

    if-nez p1, :cond_3

    mul-long v1, v1, v8

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    mul-long v1, v1, v8

    int-to-long v6, v3

    div-long/2addr v1, v6

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mdhd: duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method mdia(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const-string v0, "mdhd"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->nextChild(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mdhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    return-void
.end method

.method meta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ilst"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->ilst(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    :cond_2
    return-void
.end method

.method moov(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "udta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "trak"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "mvhd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->udta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->trak(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mvhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x335465 -> :sswitch_2
        0x367328 -> :sswitch_1
        0x36b53c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method mvhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 11

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v3, 0x10

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v3

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readLong()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v1

    int-to-long v1, v1

    :goto_1
    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    cmp-long v10, v4, v6

    if-nez v10, :cond_3

    mul-long v1, v1, v8

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    mul-long v1, v1, v8

    int-to-long v6, v3

    div-long/2addr v1, v6

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mvhd: duration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readIntegerFixedPoint()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->speed:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShortFixedPoint()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->volume:Ljava/math/BigDecimal;

    return-void
.end method

.method trak(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const-string v0, "mdia"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mdia(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    return-void
.end method

.method udta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "meta"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->meta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    :cond_1
    return-void
.end method
