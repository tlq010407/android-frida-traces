.class public Lorg/telegram/messenger/video/remix/DownMixAudioRemixer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/video/remix/AudioRemixer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mix(SS)S
    .locals 3

    const v0, 0x8000

    add-int/2addr p0, v0

    add-int/2addr p1, v0

    const v1, 0xffff

    if-lt p0, v0, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int v2, p0, p1

    mul-int/lit8 v2, v2, 0x2

    mul-int p0, p0, p1

    div-int/2addr p0, v0

    sub-int/2addr v2, p0

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    mul-int p0, p0, p1

    div-int v2, p0, v0

    :goto_1
    const/high16 p0, 0x10000

    if-ne v2, p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sub-int/2addr v1, v0

    int-to-short p0, v1

    return p0
.end method


# virtual methods
.method public getRemixedSize(III)I
    .locals 0

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public remix(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/video/remix/DownMixAudioRemixer;->mix(SS)S

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
