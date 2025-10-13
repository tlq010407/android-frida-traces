.class public Lorg/telegram/ui/Components/Paint/Texture;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private texture:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static generateTexture(II)I
    .locals 13

    .line 0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2801

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v11, 0x1401

    const/4 v12, 0x0

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    move v7, p0

    move v8, p1

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return v0
.end method

.method public static generateTexture(Lorg/telegram/ui/Components/Size;)I
    .locals 1

    .line 0
    iget v0, p0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v0, v0

    iget p0, p0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int p0, p0

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/Paint/Texture;->generateTexture(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public cleanResources(Z)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v2, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public texture()I
    .locals 14

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v2, v1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v3, 0x2601

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v0, -0xff0100

    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    const/16 v6, 0x1401

    const/4 v7, 0x0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v12, v2, v11

    new-array v13, v12, [I

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v4, v13

    move v6, v2

    move v9, v2

    move v10, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v12, :cond_2

    aget v4, v13, v3

    and-int v5, v4, v0

    and-int/lit16 v6, v4, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    aput v4, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v13}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v12

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    move v6, v2

    move v7, v11

    move-object v11, v12

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Texture;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    and-int/2addr v0, v2

    and-int/lit16 v3, v2, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_3
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Texture;->texture:I

    return v0

    :cond_4
    :goto_2
    return v1
.end method
