.class public abstract Lcom/google/android/exoplayer2/audio/AacUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    }
.end annotation


# static fields
.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    sget-object v4, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget v4, v4, v2

    if-ne p0, v4, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    sget-object v4, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v5, v4

    if-ge v1, v5, :cond_3

    aget v4, v4, v1

    if-ne p1, v4, :cond_2

    move v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq p0, v0, :cond_4

    if-eq v2, v0, :cond_4

    const/4 p0, 0x2

    invoke-static {p0, v3, v2}, Lcom/google/android/exoplayer2/audio/AacUtil;->buildAudioSpecificConfig(III)[B

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate or number of channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static buildAudioSpecificConfig(III)[B
    .locals 2

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    const/4 v0, 0x1

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    shl-int/lit8 p1, p1, 0x7

    and-int/lit16 p1, p1, 0x80

    shl-int/lit8 p2, p2, 0x3

    and-int/lit8 p2, p2, 0x78

    or-int/2addr p1, p2

    int-to-byte p1, p1

    const/4 p2, 0x2

    new-array p2, p2, [B

    const/4 v1, 0x0

    aput-byte p0, p2, v1

    aput-byte p1, p2, v0

    return-object p2
.end method

.method private static getAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 v0, p0, 0x20

    :cond_0
    return v0
.end method

.method private static getSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "AAC header insufficient data"

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    const/16 p0, 0xd

    if-ge v0, p0, :cond_2

    sget-object p0, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget p0, p0, v0

    :goto_0
    return p0

    :cond_2
    const-string p0, "AAC header wrong Sampling Frequency Index"

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    .locals 7

    .line 0
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mp4a.40."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->getAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    const/16 v5, 0x16

    if-ne v0, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    :cond_1
    if-eqz p1, :cond_4

    const/4 p1, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x7

    if-eq v0, p1, :cond_2

    const/16 p1, 0x11

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported audio object type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_2
    :pswitch_0
    invoke-static {p0, v0, v3}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseGaSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-eq p0, v6, :cond_3

    if-eq p0, v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported epConfig: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/exoplayer2/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget p0, p0, v3

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_5

    new-instance p1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    invoke-direct {p1, v1, p0, v4, v0}, Lcom/google/android/exoplayer2/audio/AacUtil$Config;-><init>(IILjava/lang/String;Lcom/google/android/exoplayer2/audio/AacUtil$1;)V

    return-object p1

    :cond_5
    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object p0

    return-object p0
.end method

.method private static parseGaSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AacUtil"

    const-string v1, "Unexpected frameLengthFlag = 1"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz p2, :cond_8

    const/4 p2, 0x6

    const/4 v1, 0x3

    const/16 v2, 0x14

    if-eq p1, p2, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_3
    if-eqz v0, :cond_7

    const/16 p2, 0x16

    if-ne p1, p2, :cond_4

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_4
    const/16 p2, 0x11

    if-eq p1, p2, :cond_5

    const/16 p2, 0x13

    if-eq p1, p2, :cond_5

    if-eq p1, v2, :cond_5

    const/16 p2, 0x17

    if-ne p1, p2, :cond_6

    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_6
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
