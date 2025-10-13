.class Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Program"
.end annotation


# instance fields
.field final attributePositionHandle:I

.field final attributeTextureHandle:I

.field final fragmentShader:I

.field final program:I

.field final uniformTextureHandle:I

.field final vertexShader:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/telegram/messenger/R$raw;->round_blur_vert:I

    const v1, 0x8b31

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->access$000(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->vertexShader:I

    const v1, 0x8b30

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->access$000(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->fragmentShader:I

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper;->access$100(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->program:I

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributePositionHandle:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->attributeTextureHandle:I

    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->uniformTextureHandle:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->vertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraVideoEncoderOverlayHelper$Program;->fragmentShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return-void
.end method
