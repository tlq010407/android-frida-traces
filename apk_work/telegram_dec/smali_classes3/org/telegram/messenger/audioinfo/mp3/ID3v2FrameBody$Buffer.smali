.class final Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Buffer"
.end annotation


# instance fields
.field bytes:[B


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes:[B

    return-void
.end method


# virtual methods
.method bytes(I)[B
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes:[B

    array-length v1, v0

    if-le p1, v1, :cond_1

    array-length v0, v0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes:[B

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes:[B

    return-object p1
.end method
