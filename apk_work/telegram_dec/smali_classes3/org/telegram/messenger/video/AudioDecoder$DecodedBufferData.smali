.class public Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/AudioDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodedBufferData"
.end annotation


# instance fields
.field public byteBuffer:Ljava/nio/ByteBuffer;

.field public flags:I

.field public index:I

.field public offset:I

.field public presentationTimeUs:J

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;->index:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;->size:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;->presentationTimeUs:J

    iput v0, p0, Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;->flags:I

    iput v0, p0, Lorg/telegram/messenger/video/AudioDecoder$DecodedBufferData;->offset:I

    return-void
.end method
