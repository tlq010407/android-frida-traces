.class public Lorg/telegram/messenger/video/Mp4Movie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cacheFile:Ljava/io/File;

.field private height:I

.field private matrix:Lcom/googlecode/mp4parser/util/Matrix;

.field private tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/Track;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSample(IJLandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/video/Track;

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/video/Track;->addSample(JLandroid/media/MediaCodec$BufferInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addTrack(Landroid/media/MediaFormat;Z)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/video/Track;

    iget-object v2, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Lorg/telegram/messenger/video/Track;-><init>(ILandroid/media/MediaFormat;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getCacheFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->cacheFile:Ljava/io/File;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->height:I

    return v0
.end method

.method public getLastFrameTimestamp(I)J
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/video/Track;

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getLastFrameTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMatrix()Lcom/googlecode/mp4parser/util/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    return-object v0
.end method

.method public getTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/Track;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->width:I

    return v0
.end method

.method public setCacheFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/video/Mp4Movie;->cacheFile:Ljava/io/File;

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/video/Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_1

    :cond_0
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_0

    :cond_2
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/video/Mp4Movie;->width:I

    iput p2, p0, Lorg/telegram/messenger/video/Mp4Movie;->height:I

    return-void
.end method
