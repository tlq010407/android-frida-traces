.class public Lorg/telegram/ui/Components/Paint/Slice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bounds:Landroid/graphics/RectF;

.field private file:Ljava/io/File;

.field private final texture:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;ILandroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Slice;->texture:I

    :try_start_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    const-string p3, "paint"

    const-string p4, ".bin"

    invoke-static {p3, p4, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Slice;->storeData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private storeData(Ljava/nio/ByteBuffer;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/util/zip/Deflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-virtual {v2, v0, v3, p1}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public cleanResources()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 9

    const/16 v0, 0x400

    :try_start_0
    new-array v1, v0, [B

    new-array v2, v0, [B

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Slice;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/util/zip/Inflater;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/zip/Inflater;-><init>(Z)V

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_0

    invoke-virtual {v5, v1, v8, v6}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {v5, v2, v8, v0}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v2, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->finished()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->end()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v0, v8, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :cond_2
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsInput()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTexture()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->texture:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getX()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    return v0
.end method

.method public getY()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Slice;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    return v0
.end method
