.class Lorg/telegram/ui/Components/BlurringShader$Program;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BlurringShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Program"
.end annotation


# instance fields
.field flipyHandle:I

.field gl:I

.field gradientBottomHandle:I

.field gradientTopHandle:I

.field hasVideoMatrixHandle:I

.field matrixHandle:I

.field posHandle:I

.field stepHandle:I

.field szHandle:I

.field texHandle:I

.field texSzHandle:I

.field uvHandle:I

.field videoMatrixHandle:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->gl:I

    const-string v0, "p"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->posHandle:I

    const-string v0, "inputuv"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->uvHandle:I

    const-string v0, "matrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->matrixHandle:I

    const-string v0, "tex"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->texHandle:I

    const-string v0, "sz"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->szHandle:I

    const-string v0, "texSz"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->texSzHandle:I

    const-string v0, "gtop"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->gradientTopHandle:I

    const-string v0, "gbottom"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->gradientBottomHandle:I

    const-string v0, "step"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->stepHandle:I

    const-string v0, "videoMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->videoMatrixHandle:I

    const-string v0, "hasVideoMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->hasVideoMatrixHandle:I

    const-string v0, "flipy"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/BlurringShader$Program;->flipyHandle:I

    return-void
.end method
