.class public Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;,
        Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;,
        Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;
    }
.end annotation


# instance fields
.field private final attributeTextureBuffer:Ljava/nio/FloatBuffer;

.field private final attributeVertexBuffer:Ljava/nio/FloatBuffer;

.field private final glFrameBuffers:[I

.field private final glTextures:[I

.field private logoFrame:I

.field private final programRenderBlur:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;

.field private final programRenderMixed:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;

.field private final programRenderTexture:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

.field private final programRenderWatermark:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

.field private final videoHeight:I

.field private final videoWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    sget v3, Lorg/telegram/messenger/R$raw;->round_blur_stage_0_frag:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderTexture:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    sget v3, Lorg/telegram/messenger/R$raw;->round_blur_stage_3_frag:I

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderWatermark:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;

    invoke-direct {v2}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderBlur:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;

    invoke-direct {v2}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderMixed:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;

    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->logoFrame:I

    const/4 v3, 0x1

    new-array v4, v3, [I

    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glFrameBuffers:[I

    const/4 v4, 0x5

    new-array v5, v4, [I

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    iput v1, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    move/from16 v6, p2

    iput v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoHeight:I

    const/16 v6, 0xe8

    new-array v6, v6, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v7, v6

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setTextureCords([FIFFFF)V

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v8, 0x8

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setTextureCords([FIFFFF)V

    const/16 v7, 0x24

    new-array v14, v7, [F

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    move-object v8, v14

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setVertexCords([FIFFFF)V

    invoke-static {v4, v5, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v5, 0x0

    :goto_0
    const/16 v15, 0xde1

    if-ge v5, v4, :cond_a

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v7, v7, v5

    invoke-static {v15, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v7, 0x2600

    const/16 v8, 0x2601

    const/4 v9, 0x2

    if-ge v5, v9, :cond_0

    const/16 v10, 0x2601

    goto :goto_1

    :cond_0
    const/16 v10, 0x2600

    :goto_1
    const/16 v11, 0x2801

    invoke-static {v15, v11, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    if-ge v5, v9, :cond_1

    const/16 v7, 0x2601

    :cond_1
    const/16 v8, 0x2800

    invoke-static {v15, v8, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2802

    const v8, 0x812f

    invoke-static {v15, v7, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2803

    invoke-static {v15, v7, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/high16 v16, 0x40000000    # 2.0f

    const/4 v7, 0x3

    const/high16 v8, 0x44c00000    # 1536.0f

    const/4 v12, 0x4

    if-ne v5, v12, :cond_5

    int-to-float v9, v1

    const v10, 0x3e4ccccd    # 0.2f

    mul-float v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v9, v1, 0x1c

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v25

    sub-int v8, v11, v25

    sub-int v10, v8, v25

    new-array v7, v7, [I

    sget v8, Lorg/telegram/messenger/R$raw;->plane_logo_plain:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "logo_plane"

    const/4 v4, 0x0

    invoke-static {v8, v9, v7, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide v26

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v11, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    mul-int/lit8 v7, v10, 0x8

    mul-int/lit8 v8, v10, 0x4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    :goto_2
    const/16 v2, 0x8

    if-ge v7, v2, :cond_4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v12, :cond_3

    mul-int/lit8 v17, v2, 0x8

    add-int v15, v17, v7

    const/16 v12, 0x1b

    if-lt v15, v12, :cond_2

    move-object/from16 v29, v6

    move/from16 v28, v7

    move-object v6, v8

    move-object v15, v9

    move v13, v11

    move-object v9, v4

    move v4, v10

    goto :goto_4

    :cond_2
    int-to-float v12, v7

    const/high16 v18, 0x41000000    # 8.0f

    div-float v12, v12, v18

    int-to-float v13, v2

    const/high16 v19, 0x40800000    # 4.0f

    div-float v13, v13, v19

    add-int/lit8 v4, v7, 0x1

    int-to-float v4, v4

    div-float v4, v4, v18

    move/from16 v18, v7

    add-int/lit8 v7, v2, 0x1

    int-to-float v7, v7

    div-float v19, v7, v19

    mul-int/lit8 v7, v15, 0x8

    add-int/lit8 v20, v7, 0x10

    move/from16 v28, v18

    move-object v7, v6

    move-object/from16 v29, v6

    move-object v6, v8

    move/from16 v8, v20

    move-object/from16 v30, v9

    move v9, v12

    move v12, v10

    move v10, v13

    move v13, v11

    move v11, v4

    move v4, v12

    move/from16 v12, v19

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setTextureCords([FIFFFF)V

    mul-int/lit8 v19, v15, 0x2

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v23

    const/16 v24, 0x1

    move-wide/from16 v17, v26

    move-object/from16 v20, v30

    move/from16 v21, v13

    move/from16 v22, v13

    invoke-static/range {v17 .. v24}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    mul-int v10, v4, v28

    sub-int v10, v10, v25

    int-to-float v7, v10

    mul-int v10, v4, v2

    sub-int v10, v10, v25

    int-to-float v8, v10

    move-object/from16 v15, v30

    const/4 v9, 0x0

    invoke-virtual {v6, v15, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v10, v4

    move-object v8, v6

    move-object v4, v9

    move v11, v13

    move-object v9, v15

    move/from16 v7, v28

    move-object/from16 v6, v29

    const/4 v12, 0x4

    const/16 v15, 0xde1

    goto :goto_3

    :cond_3
    move-object/from16 v29, v6

    move/from16 v28, v7

    move-object v6, v8

    move-object v15, v9

    move v13, v11

    move-object v9, v4

    move v4, v10

    add-int/lit8 v7, v28, 0x1

    move-object v4, v9

    move-object v9, v15

    move-object/from16 v6, v29

    const/4 v12, 0x4

    const/16 v15, 0xde1

    goto/16 :goto_2

    :cond_4
    move-object/from16 v29, v6

    move-object v15, v9

    move v4, v10

    int-to-float v2, v4

    iget v4, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float v2, v2, v16

    const/high16 v4, -0x40800000    # -1.0f

    add-float v12, v2, v4

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v9, 0x18

    move-object v8, v14

    move v11, v12

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setVertexCords([FIFFFF)V

    const/4 v2, 0x0

    const/16 v4, 0xde1

    invoke-static {v4, v2, v3, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static/range {v26 .. v27}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    goto :goto_7

    :cond_5
    move-object/from16 v29, v6

    if-ne v5, v7, :cond_6

    int-to-float v2, v1

    const/high16 v3, 0x43ba0000    # 372.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v2

    iget v4, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v3, v3, v16

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v10, v4, v3

    const/high16 v4, -0x40800000    # -1.0f

    add-float v11, v3, v4

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v9, 0xc

    move-object v8, v14

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->setVertexCords([FIFFFF)V

    sget v3, Lorg/telegram/messenger/R$raw;->round_blur_overlay_text:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromRaw(I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    invoke-static {v3, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0xde1

    invoke-static {v7, v6, v4, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7

    :cond_6
    const/16 v2, 0x30

    if-nez v5, :cond_7

    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    move/from16 v18, v3

    goto :goto_5

    :cond_7
    const/16 v18, 0x30

    :goto_5
    if-nez v5, :cond_8

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoHeight:I

    move/from16 v19, v2

    goto :goto_6

    :cond_8
    const/16 v19, 0x30

    :goto_6
    const/16 v22, 0x1401

    const/16 v23, 0x0

    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x1908

    const/16 v20, 0x0

    const/16 v21, 0x1908

    invoke-static/range {v15 .. v23}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_9
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v29

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_a
    move-object/from16 v29, v6

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glFrameBuffers:[I

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v1, 0x3a0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v3, v29

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->createShader(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(II)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->createProgram(II)I

    move-result p0

    return p0
.end method

.method private static createProgram(II)I
    .locals 2

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array p0, p0, [I

    const p1, 0x8b82

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p0, p0, v1

    if-nez p0, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v1

    :cond_0
    return v0
.end method

.method private static createShader(II)I
    .locals 3

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    invoke-static {p0, v1, p1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v0

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlUtils: compile shader error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v0

    :cond_1
    return p0
.end method

.method private static setTextureCords([FIFFFF)V
    .locals 1

    aput p2, p0, p1

    add-int/lit8 v0, p1, 0x1

    aput p5, p0, v0

    add-int/lit8 v0, p1, 0x2

    aput p4, p0, v0

    add-int/lit8 v0, p1, 0x3

    aput p5, p0, v0

    add-int/lit8 p5, p1, 0x4

    aput p2, p0, p5

    add-int/lit8 p2, p1, 0x5

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x6

    aput p4, p0, p2

    add-int/lit8 p1, p1, 0x7

    aput p3, p0, p1

    return-void
.end method

.method private static setVertexCords([FIFFFF)V
    .locals 2

    aput p2, p0, p1

    add-int/lit8 v0, p1, 0x1

    aput p5, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    aput p4, p0, v0

    add-int/lit8 v0, p1, 0x4

    aput p5, p0, v0

    add-int/lit8 p5, p1, 0x5

    aput v1, p0, p5

    add-int/lit8 p5, p1, 0x6

    aput p2, p0, p5

    add-int/lit8 p2, p1, 0x7

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x8

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput p4, p0, p2

    add-int/lit8 p2, p1, 0xa

    aput p3, p0, p2

    add-int/lit8 p1, p1, 0xb

    aput v1, p0, p1

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glFrameBuffers:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v0, v0, v1

    const v3, 0x8ce0

    const/16 v4, 0xde1

    invoke-static {v2, v3, v4, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderTexture:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->destroy()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderBlur:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->destroy()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderMixed:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->destroy()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderWatermark:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->destroy()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glFrameBuffers:[I

    const/4 v1, 0x1

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method public render()V
    .locals 21

    move-object/from16 v0, p0

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderTexture:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const v5, 0x8d40

    const v6, 0x8ce0

    const/16 v7, 0xde1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v3, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/16 v3, 0x30

    invoke-static {v8, v8, v3, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v9, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->program:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v10, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v11, 0x3

    const/16 v12, 0x1406

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v9, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v10, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    iget-object v9, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    const/16 v14, 0x8

    const/4 v11, 0x2

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v9, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v9}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v9, 0x84c0

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v10, v10, v8

    invoke-static {v7, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v10, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->uniformTextureHandle:I

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v10, 0x5

    const/4 v11, 0x4

    invoke-static {v10, v8, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v12, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v12}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v2, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v2, 0x0

    :goto_0
    const/4 v12, 0x2

    if-ge v2, v12, :cond_4

    iget-object v13, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderBlur:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    if-nez v2, :cond_0

    const/4 v15, 0x2

    goto :goto_1

    :cond_0
    const/4 v15, 0x1

    :goto_1
    aget v14, v14, v15

    invoke-static {v5, v6, v7, v14, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v8, v8, v3, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v14, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->program:I

    invoke-static {v14}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v15, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/16 v16, 0x3

    const/16 v17, 0x1406

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v14, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v14}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v15, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    const/16 v19, 0x8

    const/16 v16, 0x2

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v14, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v14}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    if-nez v2, :cond_1

    const/4 v12, 0x1

    :cond_1
    aget v12, v14, v12

    invoke-static {v7, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v12, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->uniformTextureHandle:I

    invoke-static {v12, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v12, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$BlurProgram;->uniformOffsetHandle:I

    const/4 v14, 0x0

    const v15, 0x3caaaaab

    if-nez v2, :cond_2

    const v3, 0x3caaaaab

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ne v2, v4, :cond_3

    const v14, 0x3caaaaab

    :cond_3
    invoke-static {v12, v3, v14}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    invoke-static {v10, v8, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v3, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v3, v13, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x30

    goto/16 :goto_0

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderMixed:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;

    invoke-static {v5, v8}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v3, v3, v4

    invoke-static {v5, v6, v7, v3, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    iget v5, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoHeight:I

    invoke-static {v8, v8, v3, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->program:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v13, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/4 v14, 0x3

    const/16 v15, 0x1406

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v13, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v18

    const/16 v17, 0x8

    const/4 v14, 0x2

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v3, 0x84c1

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v5, v5, v4

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v5, v5, v8

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->uniformTextureHandle:I

    invoke-static {v5, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;->uniformBlurredTextureHandle:I

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$MixProgram;->uniformHalfResolutionHandle:I

    iget v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoWidth:I

    int-to-float v6, v6

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v6, v13

    iget v14, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->videoHeight:I

    int-to-float v14, v14

    div-float/2addr v14, v13

    invoke-static {v5, v6, v14}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    invoke-static {v10, v8, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v2, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->programRenderWatermark:Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    iget v3, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->program:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v12, :cond_6

    const/16 v5, 0x8

    if-nez v3, :cond_5

    iget v13, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/4 v14, 0x3

    const/16 v15, 0x1406

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v6, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v13, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v18

    const/16 v17, 0x8

    const/4 v14, 0x2

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    :goto_4
    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_5

    :cond_5
    iget v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->logoFrame:I

    rem-int/lit8 v9, v6, 0x1b

    add-int/2addr v6, v4

    iput v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->logoFrame:I

    iget v13, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v14, 0x18

    invoke-virtual {v6, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/4 v14, 0x3

    const/16 v15, 0x1406

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v6, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v13, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->attributeTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v9, 0x8

    add-int/lit8 v9, v9, 0x10

    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v18

    const/16 v17, 0x8

    const/4 v14, 0x2

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->glTextures:[I

    aget v5, v5, v11

    goto :goto_4

    :goto_5
    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->uniformTextureHandle:I

    invoke-static {v5, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {v10, v8, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v5, v2, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_6
    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method
