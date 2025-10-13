.class public Lorg/telegram/ui/Components/Paint/Shader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;
    }
.end annotation


# instance fields
.field protected program:I

.field protected uniformsMap:Ljava/util/Map;

.field private vertexShader:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->uniformsMap:Ljava/util/Map;

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/Paint/Shader;->compileShader(ILjava/lang/String;)Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;

    move-result-object p1

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->status:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    const-string p2, "Vertex shader compilation failed"

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget p2, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, p1, v1, p2}, Lorg/telegram/ui/Components/Paint/Shader;->destroyShader(III)V

    return-void

    :cond_1
    const v0, 0x8b30

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Components/Paint/Shader;->compileShader(ILjava/lang/String;)Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;

    move-result-object p2

    iget v0, p2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->status:I

    if-nez v0, :cond_3

    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_2

    const-string p3, "Fragment shader compilation failed"

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_2
    iget p1, p1, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget p2, p2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget p3, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Shader;->destroyShader(III)V

    return-void

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    iget v2, p1, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    iget v2, p2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    aget-object v3, p3, v0

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget p3, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/Paint/Shader;->linkProgram(I)I

    move-result p3

    if-nez p3, :cond_5

    iget p1, p1, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget p2, p2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget p3, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Shader;->destroyShader(III)V

    return-void

    :cond_5
    array-length p3, p4

    :goto_1
    if-ge v1, p3, :cond_6

    aget-object v0, p4, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Shader;->uniformsMap:Ljava/util/Map;

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget p1, p1, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_7
    iget p1, p2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_8
    return-void
.end method

.method public static SetColorUniform(II)V
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p0, v0, v2, v3, p1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method private compileShader(ILjava/lang/String;)Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;
    .locals 2

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v0, p2, v1

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;

    aget p2, p2, v1

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;-><init>(II)V

    return-object v0
.end method

.method private destroyShader(III)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_2
    return-void
.end method

.method private linkProgram(I)I
    .locals 3

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8b82

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v0, v2

    if-nez v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    aget p1, v0, v2

    return p1
.end method


# virtual methods
.method public cleanResources()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->vertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    :cond_0
    return-void
.end method

.method public getUniform(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->uniformsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
