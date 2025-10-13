.class public Lorg/webrtc/GlGenericDrawer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/RendererCommon$GlDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;,
        Lorg/webrtc/GlGenericDrawer$TextureCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_VERTEX_SHADER_STRING:Ljava/lang/String; = "varying vec2 tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\nuniform mat4 tex_mat;\nvoid main() {\n  gl_Position = in_pos;\n  tc = (tex_mat * in_tc).xy;\n}\n"

.field private static final FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

.field private static final INPUT_TEXTURE_COORDINATE_NAME:Ljava/lang/String; = "in_tc"

.field private static final INPUT_VERTEX_COORDINATE_NAME:Ljava/lang/String; = "in_pos"

.field private static final OES:I = 0x0

.field private static final RGB:I = 0x1

.field private static final TEXTURE_MATRIX_NAME:Ljava/lang/String; = "tex_mat"

.field private static final YUV:I = 0x2


# instance fields
.field private currentShader:[[Lorg/webrtc/GlShader;

.field private final genericFragmentSource:Ljava/lang/String;

.field private inPosLocation:[[I

.field private inTcLocation:[[I

.field private renderFrameBuffer:[I

.field private renderMatrix:[F

.field private renderTexture:[I

.field private renderTextureDownscale:F

.field private renderTextureHeight:[I

.field private renderTextureWidth:[I

.field private final shaderCallbacks:Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;

.field private texMatrixLocation:[[I

.field private texelLocation:[[I

.field private textureMatrix:[F

.field private final vertexShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lorg/webrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lorg/webrtc/GlGenericDrawer;->FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/webrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/webrtc/GlGenericDrawer;->FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;)V
    .locals 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    const-class v5, Lorg/webrtc/GlShader;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/webrtc/GlShader;

    iput-object v1, p0, Lorg/webrtc/GlGenericDrawer;->currentShader:[[Lorg/webrtc/GlShader;

    new-array v1, v0, [I

    aput v3, v1, v2

    aput v3, v1, v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/webrtc/GlGenericDrawer;->inPosLocation:[[I

    new-array v1, v0, [I

    aput v3, v1, v2

    aput v3, v1, v4

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/webrtc/GlGenericDrawer;->inTcLocation:[[I

    new-array v1, v0, [I

    aput v3, v1, v2

    aput v3, v1, v4

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/webrtc/GlGenericDrawer;->texMatrixLocation:[[I

    new-array v1, v0, [I

    aput v3, v1, v2

    aput v3, v1, v4

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/webrtc/GlGenericDrawer;->texelLocation:[[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/webrtc/GlGenericDrawer;->renderTextureWidth:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/webrtc/GlGenericDrawer;->renderTextureHeight:[I

    iput-object p1, p0, Lorg/webrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    iput-object p2, p0, Lorg/webrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    iput-object p3, p0, Lorg/webrtc/GlGenericDrawer;->shaderCallbacks:Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;)V
    .locals 1

    .line 0
    const-string v0, "varying vec2 tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\nuniform mat4 tex_mat;\nvoid main() {\n  gl_Position = in_pos;\n  tc = (tex_mat * in_tc).xy;\n}\n"

    invoke-direct {p0, v0, p1, p2}, Lorg/webrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;)V

    return-void
.end method

.method static createFragmentShaderString(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "precision highp float;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "varying vec2 tc;\n"

    if-nez p2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x2

    const-string v3, "}\n"

    if-ne p1, v2, :cond_2

    const-string p1, "uniform sampler2D y_tex;\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "uniform sampler2D u_tex;\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "uniform sampler2D v_tex;\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "vec4 sample(vec2 p) {\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  float y = texture2D(y_tex, p).r * 1.16438;\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  float u = texture2D(u_tex, p).r;\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  float v = texture2D(v_tex, p).r;\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  return vec4(y + 1.59603 * v - 0.874202,\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    y - 0.391762 * u - 0.812968 * v + 0.531668,\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    y + 2.01723 * u - 1.08563, 1);\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "samplerExternalOES"

    goto :goto_1

    :cond_3
    const-string p1, "sampler2D"

    :goto_1
    const-string v2, "uniform "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tex;\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const-string p0, "precision mediump float;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "const mediump vec3 satLuminanceWeighting = vec3(0.2126, 0.7152, 0.0722);\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "uniform float texelWidthOffset;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "uniform float texelHeightOffset;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "void main(){\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "int rad = 3;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "int diameter = 2 * rad + 1;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "vec4 sampleTex = vec4(0, 0, 0, 0);\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "vec3 col = vec3(0, 0, 0);\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "float weightSum = 0.0;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "for(int i = 0; i < diameter; i++) {\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "vec2 offset = vec2(float(i - rad) * texelWidthOffset, float(i - rad) * texelHeightOffset);\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "sampleTex = vec4(texture2D(tex, tc.st+offset));\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "float index = float(i);\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "float boxWeight = float(rad) + 1.0 - abs(index - float(rad));\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "col += sampleTex.rgb * boxWeight;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "weightSum += boxWeight;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "vec3 result = col / weightSum;\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "lowp float satLuminance = dot(result.rgb, satLuminanceWeighting);\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "lowp vec3 greyScaleColor = vec3(satLuminance);\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "gl_FragColor = vec4(clamp(mix(greyScaleColor, result.rgb, 1.1), 0.0, 1.0), 1.0);\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string p1, "sample("

    const-string p2, "texture2D(tex, "

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensureRenderTargetCreated(III)V
    .locals 11

    iget-object v0, p0, Lorg/webrtc/GlGenericDrawer;->renderFrameBuffer:[I

    const/16 v1, 0xde1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v2, v0, [I

    iput-object v2, p0, Lorg/webrtc/GlGenericDrawer;->renderFrameBuffer:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v2, p0, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/16 v4, 0x2601

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v4, 0x812f

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/webrtc/GlGenericDrawer;->renderMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :cond_1
    iget-object v0, p0, Lorg/webrtc/GlGenericDrawer;->renderTextureWidth:[I

    aget v0, v0, p3

    if-eq v0, p1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/webrtc/GlGenericDrawer;->renderTextureDownscale:F

    iget-object v0, p0, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    aget v0, v0, p3

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    int-to-float v0, p1

    iget v1, p0, Lorg/webrtc/GlGenericDrawer;->renderTextureDownscale:F

    div-float/2addr v0, v1

    float-to-int v5, v0

    int-to-float v0, p2

    div-float/2addr v0, v1

    float-to-int v6, v0

    const/16 v9, 0x1401

    const/4 v10, 0x0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget-object v0, p0, Lorg/webrtc/GlGenericDrawer;->renderTextureWidth:[I

    aput p1, v0, p3

    iget-object p1, p0, Lorg/webrtc/GlGenericDrawer;->renderTextureHeight:[I

    aput p2, p1, p3

    :cond_2
    return-void
.end method

.method private prepareShader(I[FIIIIIII)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v6, v1, Lorg/webrtc/GlGenericDrawer;->currentShader:[[Lorg/webrtc/GlShader;

    aget-object v6, v6, v0

    aget-object v6, v6, v2

    const/4 v7, 0x2

    if-eqz v6, :cond_1

    :goto_1
    move-object v11, v6

    goto/16 :goto_3

    :cond_1
    :try_start_0
    invoke-virtual {v1, v0, v5}, Lorg/webrtc/GlGenericDrawer;->createShader(IZ)Lorg/webrtc/GlShader;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, v1, Lorg/webrtc/GlGenericDrawer;->currentShader:[[Lorg/webrtc/GlShader;

    aget-object v8, v8, v0

    aput-object v6, v8, v2

    invoke-virtual {v6}, Lorg/webrtc/GlShader;->useProgram()V

    if-ne v0, v7, :cond_2

    const-string v8, "y_tex"

    invoke-virtual {v6, v8}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v8, "u_tex"

    invoke-virtual {v6, v8}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v8, "v_tex"

    invoke-virtual {v6, v8}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_2

    :cond_2
    const-string v8, "tex"

    invoke-virtual {v6, v8}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_2
    const-string v8, "Create shader"

    invoke-static {v8}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    iget-object v8, v1, Lorg/webrtc/GlGenericDrawer;->shaderCallbacks:Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;

    invoke-interface {v8, v6}, Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;->onNewShader(Lorg/webrtc/GlShader;)V

    if-eqz v5, :cond_3

    iget-object v8, v1, Lorg/webrtc/GlGenericDrawer;->texelLocation:[[I

    aget-object v8, v8, v0

    const-string v9, "texelWidthOffset"

    invoke-virtual {v6, v9}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v4

    iget-object v8, v1, Lorg/webrtc/GlGenericDrawer;->texelLocation:[[I

    aget-object v8, v8, v0

    const-string v9, "texelHeightOffset"

    invoke-virtual {v6, v9}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v3

    :cond_3
    iget-object v8, v1, Lorg/webrtc/GlGenericDrawer;->texMatrixLocation:[[I

    aget-object v8, v8, v0

    const-string v9, "tex_mat"

    invoke-virtual {v6, v9}, Lorg/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v2

    iget-object v8, v1, Lorg/webrtc/GlGenericDrawer;->inPosLocation:[[I

    aget-object v8, v8, v0

    const-string v9, "in_pos"

    invoke-virtual {v6, v9}, Lorg/webrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v2

    iget-object v8, v1, Lorg/webrtc/GlGenericDrawer;->inTcLocation:[[I

    aget-object v8, v8, v0

    const-string v9, "in_tc"

    invoke-virtual {v6, v9}, Lorg/webrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v2

    goto :goto_1

    :goto_3
    invoke-virtual {v11}, Lorg/webrtc/GlShader;->useProgram()V

    if-eqz v5, :cond_6

    iget-object v5, v1, Lorg/webrtc/GlGenericDrawer;->texelLocation:[[I

    aget-object v5, v5, v0

    aget v5, v5, v4

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v2, v3, :cond_4

    move/from16 v9, p3

    int-to-float v9, v9

    div-float v9, v8, v9

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v5, v1, Lorg/webrtc/GlGenericDrawer;->texelLocation:[[I

    aget-object v5, v5, v0

    aget v5, v5, v3

    if-ne v2, v7, :cond_5

    move/from16 v7, p4

    int-to-float v6, v7

    div-float v6, v8, v6

    :cond_5
    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_6
    iget-object v5, v1, Lorg/webrtc/GlGenericDrawer;->inPosLocation:[[I

    aget-object v5, v5, v0

    aget v5, v5, v2

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v5, v1, Lorg/webrtc/GlGenericDrawer;->inPosLocation:[[I

    aget-object v5, v5, v0

    aget v12, v5, v2

    sget-object v17, Lorg/webrtc/GlGenericDrawer;->FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x2

    const/16 v14, 0x1406

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v5, v1, Lorg/webrtc/GlGenericDrawer;->inTcLocation:[[I

    aget-object v5, v5, v0

    aget v5, v5, v2

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v5, v1, Lorg/webrtc/GlGenericDrawer;->inTcLocation:[[I

    aget-object v5, v5, v0

    aget v12, v5, v2

    sget-object v17, Lorg/webrtc/GlGenericDrawer;->FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v5, v1, Lorg/webrtc/GlGenericDrawer;->texMatrixLocation:[[I

    aget-object v0, v5, v0

    aget v0, v0, v2

    move-object/from16 v2, p2

    invoke-static {v0, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v10, v1, Lorg/webrtc/GlGenericDrawer;->shaderCallbacks:Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;

    move-object/from16 v12, p2

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    invoke-interface/range {v10 .. v16}, Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;->onPrepareShader(Lorg/webrtc/GlShader;[FIIII)V

    const-string v0, "Prepare shader"

    invoke-static {v0}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method createShader(IZ)Lorg/webrtc/GlShader;
    .locals 3

    new-instance v0, Lorg/webrtc/GlShader;

    iget-object v1, p0, Lorg/webrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    iget-object v2, p0, Lorg/webrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lorg/webrtc/GlGenericDrawer;->createFragmentShaderString(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/webrtc/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public drawOes(IIIII[FIIIIIIZ)V
    .locals 22

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    const/4 v9, 0x5

    const v8, 0x8d65

    const v16, 0x84c0

    const/4 v7, 0x0

    if-eqz p13, :cond_5

    const/4 v6, 0x1

    invoke-direct {v10, v12, v13, v6}, Lorg/webrtc/GlGenericDrawer;->ensureRenderTargetCreated(III)V

    move-object/from16 v5, p6

    iput-object v5, v10, Lorg/webrtc/GlGenericDrawer;->textureMatrix:[F

    int-to-float v0, v12

    iget v1, v10, Lorg/webrtc/GlGenericDrawer;->renderTextureDownscale:F

    div-float/2addr v0, v1

    float-to-int v4, v0

    int-to-float v0, v13

    div-float/2addr v0, v1

    float-to-int v3, v0

    invoke-static {v7, v7, v4, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v2, v10, Lorg/webrtc/GlGenericDrawer;->renderMatrix:[F

    const/4 v1, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v18, v3

    move/from16 v3, p4

    move/from16 v19, v4

    move/from16 v4, p5

    move/from16 v5, p7

    const/16 v20, 0x1

    move/from16 v6, p8

    const/4 v15, 0x0

    move/from16 v7, p11

    const v15, 0x8d65

    move/from16 v8, p12

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/GlGenericDrawer;->prepareShader(I[FIIIIIII)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v15, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderFrameBuffer:[I

    aget v0, v0, v20

    const v11, 0x8d40

    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    aget v0, v0, v20

    const v9, 0x8ce0

    const/16 v8, 0xde1

    const/4 v1, 0x0

    invoke-static {v11, v9, v8, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v0, 0x4

    const/4 v7, 0x5

    invoke-static {v7, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    if-eq v14, v12, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v21, v19

    move/from16 v19, v18

    move/from16 v18, v21

    :goto_0
    invoke-direct {v10, v12, v13, v1}, Lorg/webrtc/GlGenericDrawer;->ensureRenderTargetCreated(III)V

    iget-object v2, v10, Lorg/webrtc/GlGenericDrawer;->renderMatrix:[F

    if-eq v14, v12, :cond_1

    move/from16 v3, v19

    goto :goto_1

    :cond_1
    move/from16 v3, v18

    :goto_1
    if-eq v14, v12, :cond_2

    move/from16 v4, v18

    goto :goto_2

    :cond_2
    move/from16 v4, v19

    :goto_2
    const/4 v13, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p7

    move/from16 v6, p8

    const/4 v15, 0x5

    move/from16 v7, p11

    const/16 v15, 0xde1

    move/from16 v8, p12

    move v9, v13

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/GlGenericDrawer;->prepareShader(I[FIIIIIII)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    aget v0, v0, v20

    invoke-static {v15, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderFrameBuffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    aget v0, v0, v1

    const v2, 0x8ce0

    invoke-static {v11, v2, v15, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v0, 0x4

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static/range {p9 .. p12}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eq v14, v12, :cond_3

    move/from16 v3, v19

    goto :goto_3

    :cond_3
    move/from16 v3, v18

    :goto_3
    if-eq v14, v12, :cond_4

    move/from16 v4, v18

    goto :goto_4

    :cond_4
    move/from16 v4, v19

    :goto_4
    const/4 v9, 0x2

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/GlGenericDrawer;->prepareShader(I[FIIIIIII)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v15, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v0, 0x4

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_5

    :cond_5
    const/4 v12, 0x5

    const v15, 0x8d65

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/GlGenericDrawer;->prepareShader(I[FIIIIIII)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v15, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static/range {p9 .. p12}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v12, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_5
    return-void
.end method

.method public drawRgb(IIIII[FIIIIIIZ)V
    .locals 10

    const/4 v1, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v2, p6

    move v3, p4

    move v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/GlGenericDrawer;->prepareShader(I[FIIIIIII)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    move v1, p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static/range {p9 .. p12}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawYuv([IIIII[FIIIIIIZ)V
    .locals 22

    move-object/from16 v10, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    const/4 v9, 0x3

    const v16, 0x84c0

    const/16 v8, 0xde1

    const/4 v7, 0x0

    if-eqz p13, :cond_7

    if-lez v11, :cond_7

    if-lez v12, :cond_7

    move-object/from16 v6, p6

    iput-object v6, v10, Lorg/webrtc/GlGenericDrawer;->textureMatrix:[F

    const/4 v5, 0x1

    invoke-direct {v10, v11, v12, v5}, Lorg/webrtc/GlGenericDrawer;->ensureRenderTargetCreated(III)V

    int-to-float v0, v11

    iget v1, v10, Lorg/webrtc/GlGenericDrawer;->renderTextureDownscale:F

    div-float/2addr v0, v1

    float-to-int v4, v0

    int-to-float v0, v12

    div-float/2addr v0, v1

    float-to-int v3, v0

    invoke-static {v7, v7, v4, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v2, v10, Lorg/webrtc/GlGenericDrawer;->renderMatrix:[F

    const/4 v1, 0x2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v18, v3

    move/from16 v3, p4

    move/from16 v19, v4

    move/from16 v4, p5

    const/16 v20, 0x1

    move/from16 v5, p7

    move/from16 v6, p8

    const/4 v14, 0x0

    move/from16 v7, p11

    const/16 v15, 0xde1

    move/from16 v8, p12

    const/4 v14, 0x3

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/GlGenericDrawer;->prepareShader(I[FIIIIIII)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v14, :cond_0

    add-int v0, v7, v16

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v0, p1, v7

    invoke-static {v15, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderFrameBuffer:[I

    aget v0, v0, v20

    const v9, 0x8d40

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    aget v0, v0, v20

    const v8, 0x8ce0

    const/4 v1, 0x0

    invoke-static {v9, v8, v15, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v0, 0x4

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v14, :cond_1

    add-int v0, v7, v16

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    if-eq v13, v11, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v21, v19

    move/from16 v19, v18

    move/from16 v18, v21

    :goto_2
    invoke-direct {v10, v11, v12, v1}, Lorg/webrtc/GlGenericDrawer;->ensureRenderTargetCreated(III)V

    iget-object v2, v10, Lorg/webrtc/GlGenericDrawer;->renderMatrix:[F

    if-eq v13, v11, :cond_3

    move/from16 v3, v19

    goto :goto_3

    :cond_3
    move/from16 v3, v18

    :goto_3
    if-eq v13, v11, :cond_4

    move/from16 v4, v18

    goto :goto_4

    :cond_4
    move/from16 v4, v19

    :goto_4
    const/4 v12, 0x1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    const v14, 0x8ce0

    move/from16 v8, p12

    const v14, 0x8d40

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/GlGenericDrawer;->prepareShader(I[FIIIIIII)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    aget v0, v0, v20

    invoke-static {v15, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderFrameBuffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v14, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    aget v0, v0, v1

    const v2, 0x8ce0

    invoke-static {v14, v2, v15, v0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v0, 0x4

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static/range {p9 .. p12}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eq v13, v11, :cond_5

    move/from16 v3, v19

    goto :goto_5

    :cond_5
    move/from16 v3, v18

    :goto_5
    if-eq v13, v11, :cond_6

    move/from16 v4, v18

    goto :goto_6

    :cond_6
    move/from16 v4, v19

    :goto_6
    const/4 v9, 0x2

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/GlGenericDrawer;->prepareShader(I[FIIIIIII)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, v10, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v15, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v0, 0x4

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_9

    :cond_7
    const/4 v14, 0x3

    const/16 v15, 0xde1

    const/4 v1, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-direct/range {v0 .. v9}, Lorg/webrtc/GlGenericDrawer;->prepareShader(I[FIIIIIII)V

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v14, :cond_8

    add-int v0, v7, v16

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v0, p1, v7

    invoke-static {v15, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_8
    invoke-static/range {p9 .. p12}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v14, :cond_9

    add-int v0, v7, v16

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v15, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    return-void
.end method

.method public getRenderBufferBitmap(ILorg/webrtc/GlGenericDrawer$TextureCallback;)V
    .locals 12

    iget-object v0, p0, Lorg/webrtc/GlGenericDrawer;->renderFrameBuffer:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/webrtc/GlGenericDrawer;->textureMatrix:[F

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x2

    aget v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    iget-object p1, p0, Lorg/webrtc/GlGenericDrawer;->textureMatrix:[F

    const/4 v0, 0x1

    aget v0, p1, v0

    neg-float v0, v0

    aget p1, p1, v1

    div-float/2addr v0, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    neg-double v2, v2

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr v2, v4

    double-to-int p1, v2

    :cond_1
    iget-object v0, p0, Lorg/webrtc/GlGenericDrawer;->renderTextureWidth:[I

    aget v0, v0, v1

    int-to-float v0, v0

    iget v2, p0, Lorg/webrtc/GlGenericDrawer;->renderTextureDownscale:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v3, p0, Lorg/webrtc/GlGenericDrawer;->renderTextureHeight:[I

    aget v3, v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v2, v3

    iget-object v3, p0, Lorg/webrtc/GlGenericDrawer;->renderFrameBuffer:[I

    aget v3, v3, v1

    const v10, 0x8d40

    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v3, p0, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    aget v3, v3, v1

    const v4, 0x8ce0

    const/16 v5, 0xde1

    invoke-static {v10, v4, v5, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    mul-int v3, v0, v2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v0

    move v6, v2

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-interface {p2, v0, p1}, Lorg/webrtc/GlGenericDrawer$TextureCallback;->run(Landroid/graphics/Bitmap;I)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-interface {p2, p1, v1}, Lorg/webrtc/GlGenericDrawer$TextureCallback;->run(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/webrtc/GlGenericDrawer;->currentShader:[[Lorg/webrtc/GlShader;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/webrtc/GlGenericDrawer;->currentShader:[[Lorg/webrtc/GlShader;

    aget-object v3, v3, v1

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/webrtc/GlShader;->release()V

    iget-object v3, p0, Lorg/webrtc/GlGenericDrawer;->currentShader:[[Lorg/webrtc/GlShader;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    aput-object v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/webrtc/GlGenericDrawer;->renderFrameBuffer:[I

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iget-object v1, p0, Lorg/webrtc/GlGenericDrawer;->renderTexture:[I

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_3
    return-void
.end method
