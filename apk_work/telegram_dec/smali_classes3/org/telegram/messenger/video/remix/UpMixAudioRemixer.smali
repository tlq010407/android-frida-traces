.class public Lorg/telegram/messenger/video/remix/UpMixAudioRemixer;
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


# virtual methods
.method public getRemixedSize(III)I
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public remix(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    invoke-virtual {p3, v0}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
