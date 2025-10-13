.class public Lorg/telegram/ui/Components/Paint/Painting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;,
        Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
    }
.end annotation


# instance fields
.field private activePath:Lorg/telegram/ui/Components/Paint/Path;

.field private activeShape:Lorg/telegram/ui/Components/Paint/Shape;

.field private activeStrokeBounds:Landroid/graphics/RectF;

.field private backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

.field private bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

.field private bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private bluredBitmap:Landroid/graphics/Bitmap;

.field private bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

.field private brush:Lorg/telegram/ui/Components/Paint/Brush;

.field private brushTextures:Ljava/util/HashMap;

.field private buffers:[I

.field private dataBuffer:Ljava/nio/ByteBuffer;

.field private delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

.field public hasBlur:Z

.field private helperAlpha:F

.field private helperAnimator:Landroid/animation/ValueAnimator;

.field private helperApplyAlpha:F

.field private helperApplyAnimator:Landroid/animation/ValueAnimator;

.field private helperShape:Lorg/telegram/ui/Components/Paint/Shape;

.field private helperShown:Z

.field private helperTexture:I

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imageBitmapPaint:Landroid/graphics/Paint;

.field private imageBitmapRotation:I

.field public masking:Z

.field private originalBitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

.field private paintTexture:I

.field private paused:Z

.field private projection:[F

.field private renderProjection:[F

.field private renderState:Lorg/telegram/ui/Components/Paint/RenderState;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private reusableFramebuffer:I

.field private shaders:Ljava/util/Map;

.field private size:Lorg/telegram/ui/Components/Size;

.field private suppressChangesCounter:I

.field private textureBuffer:Ljava/nio/ByteBuffer;

.field private vertexBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public static synthetic $r8$lambda$6zDD4jlqPTunAMqdAHpiFV8uMrg(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$paintShape$5(Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9XyceSV8btCEil5MQI-4naFiOdQ(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$setHelperShape$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HnpW7_pJL_0aYt1ui_aPbxF2g6w(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$setHelperShape$2(Lorg/telegram/ui/Components/Paint/Shape;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IGldvW9jX_bPArw7im2mBZZaeTc(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$applyHelperShape$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M6tsdrVWys5-ta8kQS1LunzbLHU(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$registerUndo$11(Lorg/telegram/ui/Components/Paint/Slice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OxcdEdnmEkZeKtxrqoK1SogAytY(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$applyHelperShape$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PSP75msXOeHsFeQNbu5ktyDEClQ(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$commitShape$7(Lorg/telegram/ui/Components/Paint/Shape;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XSYe6RkUijhtNkFFkC0cXX17CGQ(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$restoreSlice$13(Lorg/telegram/ui/Components/Paint/Slice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aPEe6Qt50ZlzdFIQGSCmLJ_dW4Q(Lorg/telegram/ui/Components/Paint/Painting;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$clearShape$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$hh3hQW4dPckP-JR7byoIR2JGsJ4(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;Lorg/telegram/ui/Components/Paint/Slice;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$registerDoubleUndo$12(Lorg/telegram/ui/Components/Paint/Slice;Lorg/telegram/ui/Components/Paint/Slice;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lAmJn3eH4Lar4LAspVh7gM2wKoQ(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$onPause$14(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$or8U5pfVR601M6r9_0wpQULHpqI(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$commitPath$8(Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qqz_uTXFz2ixlkbiAI6jIeqlTXk(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$setHelperShape$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w92sp96oNqgdnWgKuIR4acJZNdg(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$clearStroke$9(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yYL8uXL_KDMVVUwpVkzxx_aYrtE(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/Painting;->lambda$paintStroke$6(Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Size;Landroid/graphics/Bitmap;ILorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTextures:Ljava/util/HashMap;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->masking:Z

    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Paint/RenderState;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    iput-object p4, p0, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapRotation:I

    iget p2, p1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int p2, p2

    iget p1, p1, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int p1, p1

    mul-int p2, p2, p1

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v1, p1, Lorg/telegram/ui/Components/Size;->width:F

    iget v3, p1, Lorg/telegram/ui/Components/Size;->height:F

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadOrtho(FFFFFF)[F

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/16 p2, 0x20

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget p4, p4, Lorg/telegram/ui/Components/Size;->width:F

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget p4, p4, Lorg/telegram/ui/Components/Size;->height:F

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget p4, p4, Lorg/telegram/ui/Components/Size;->width:F

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget p4, p4, Lorg/telegram/ui/Components/Size;->height:F

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/RenderView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Shape;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/Painting;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;)Lorg/telegram/ui/Components/Paint/Shape;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Painting;->paintStrokeInternal(Lorg/telegram/ui/Components/Paint/Path;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Painting;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Painting;->commitPathInternal(Lorg/telegram/ui/Components/Paint/Path;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Painting;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->clearStrokeInternal()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Painting;->commitShapeInternal(Lorg/telegram/ui/Components/Paint/Shape;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSliceInternal(Lorg/telegram/ui/Components/Paint/Slice;Z)V

    return-void
.end method

.method private beginSuppressingChanges()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    return-void
.end method

.method private clearStrokeInternal()V
    .locals 5

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getReusableFramebuffer()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v0

    const v2, 0x8ce0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v2, 0x8cd5

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v2, v2

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v0, v0

    invoke-static {v4, v4, v2, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_0
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderState;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    return-void
.end method

.method private commitPathInternal(Lorg/telegram/ui/Components/Paint/Path;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v2

    :cond_0
    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-nez v3, :cond_1

    instance-of v5, v2, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v5, :cond_2

    :cond_1
    iget-boolean v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->hasBlur:Z

    invoke-direct {v1, v0, v5}, Lorg/telegram/ui/Components/Paint/Painting;->registerDoubleUndo(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object v0

    iput-boolean v3, v1, Lorg/telegram/ui/Components/Paint/Painting;->hasBlur:Z

    goto :goto_0

    :cond_2
    invoke-direct {v1, v0, v4}, Lorg/telegram/ui/Components/Paint/Painting;->registerUndo(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object v0

    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->beginSuppressingChanges()V

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-nez v3, :cond_3

    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :goto_1
    const/4 v7, 0x0

    :goto_2
    const v8, 0x8d40

    const/4 v9, 0x0

    if-ge v7, v3, :cond_e

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getReusableFramebuffer()I

    move-result v10

    invoke-static {v8, v10}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v10

    iget-object v11, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v11, :cond_8

    instance-of v11, v2, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz v11, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    instance-of v11, v2, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v11, :cond_8

    if-ne v7, v6, :cond_8

    :cond_6
    iget-object v10, v1, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v10

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :cond_8
    :goto_3
    if-ne v7, v6, :cond_9

    instance-of v11, v2, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz v11, :cond_9

    new-instance v2, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    invoke-direct {v2}, Lorg/telegram/ui/Components/Paint/Brush$Eraser;-><init>()V

    :cond_9
    const v11, 0x8ce0

    const/16 v12, 0xde1

    invoke-static {v8, v11, v12, v10, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    iget-object v8, v1, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v11, v8, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v11, v11

    iget v8, v8, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v8, v8

    invoke-static {v4, v4, v11, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v8, v1, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/Paint/Brush;->getShaderName(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Paint/Shader;

    if-nez v8, :cond_a

    return-object v9

    :cond_a
    iget v11, v8, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v11}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v11, "mvpMatrix"

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v11

    iget-object v13, v1, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    invoke-static {v13}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v13

    invoke-static {v11, v6, v4, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v11, "texture"

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v11, "mask"

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v11, "color"

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Brush;->getOverrideAlpha()F

    move-result v14

    mul-float v13, v13, v14

    float-to-int v13, v13

    move/from16 v14, p2

    invoke-static {v14, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    invoke-static {v11, v13}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    const v11, 0x84c0

    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v12, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v10, 0x2801

    const/16 v11, 0x2601

    invoke-static {v12, v10, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v13, 0x84c1

    invoke-static {v13}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v13

    invoke-static {v12, v13}, Landroid/opengl/GLES20;->glBindTexture(II)V

    instance-of v13, v2, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz v13, :cond_c

    const-string v13, "blured"

    invoke-virtual {v8, v13}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v8, 0x84c2

    invoke-static {v8}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v8, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getTextureLock()Ljava/lang/Object;

    move-result-object v9

    iget-object v8, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getTexture()I

    move-result v8

    :goto_4
    invoke-static {v12, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_5

    :cond_b
    iget-object v8, v1, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v8

    goto :goto_4

    :cond_c
    :goto_5
    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v8, v1, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x1406

    move-object/from16 v20, v8

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v8, v1, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    const/16 v23, 0x0

    const/16 v24, 0x8

    const/16 v20, 0x1

    const/16 v21, 0x2

    const/16 v22, 0x1406

    move-object/from16 v25, v8

    invoke-static/range {v20 .. v25}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v8, 0x4

    const/4 v13, 0x5

    if-eqz v9, :cond_d

    monitor-enter v9

    :try_start_0
    invoke-static {v13, v4, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    monitor-exit v9

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    invoke-static {v13, v4, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v8

    invoke-static {v12, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v12, v10, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_e
    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->isSuppressingChanges()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v2, :cond_f

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->endSuppressingChanges()V

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderState;->reset()V

    iput-object v9, v1, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    iput-object v9, v1, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    return-object v0
.end method

.method private commitShapeInternal(Lorg/telegram/ui/Components/Paint/Shape;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Shape;->brush:Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    instance-of v3, v2, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz v3, :cond_1

    move-object/from16 v3, p3

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p3

    const/4 v6, 0x0

    :goto_0
    invoke-direct {v0, v3, v6}, Lorg/telegram/ui/Components/Paint/Painting;->registerUndo(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Slice;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->beginSuppressingChanges()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getReusableFramebuffer()I

    move-result v6

    const v7, 0x8d40

    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v6

    const v8, 0x8ce0

    const/16 v9, 0xde1

    invoke-static {v7, v8, v9, v6, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v8, v6, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v8, v8

    iget v6, v6, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v6, v6

    invoke-static {v5, v5, v8, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Brush;->getShaderName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/Paint/Shader;

    const/4 v8, 0x0

    if-nez v6, :cond_2

    return-object v8

    :cond_2
    iget v10, v6, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v10, "mvpMatrix"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    invoke-static {v11}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-static {v10, v4, v5, v11}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v10, "texture"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v10, "mask"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v10, "color"

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v10

    move/from16 v11, p2

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    const v10, 0x84c0

    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v10

    invoke-static {v9, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v10, 0x2801

    const/16 v11, 0x2601

    invoke-static {v9, v10, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v12, 0x84c1

    invoke-static {v12}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v12

    invoke-static {v9, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    instance-of v12, v2, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz v12, :cond_3

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v12, :cond_3

    const-string v12, "blured"

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v12, 0x84c2

    invoke-static {v12}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v12

    invoke-static {v9, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_3
    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v2, :cond_4

    const-string v2, "type"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Shape;->getType()I

    move-result v12

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v2, "resolution"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v13, v12, Lorg/telegram/ui/Components/Size;->width:F

    iget v12, v12, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v2, v13, v12}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v2, "center"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v13, v1, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    invoke-static {v2, v12, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v2, "radius"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    iget v13, v1, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    invoke-static {v2, v12, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v2, "thickness"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v2, "rounding"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->rounding:F

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v2, "middle"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v13, v1, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    invoke-static {v2, v12, v13}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v2, "rotation"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->rotation:F

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v2, "fill"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget-boolean v12, v1, Lorg/telegram/ui/Components/Paint/Shape;->fill:Z

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v2, "arrowTriangleLength"

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget v1, v1, Lorg/telegram/ui/Components/Paint/Shape;->arrowTriangleLength:F

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "composite"

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "clear"

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_4
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v14, 0x1406

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x1406

    move-object/from16 v22, v1

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v1

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v9, v10, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->isSuppressingChanges()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->endSuppressingChanges()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderState;->reset()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    iput-boolean v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    iput v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    iput-object v8, v0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    return-object v3
.end method

.method private endSuppressingChanges()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    return-void
.end method

.method private getPaintTexture()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Texture;->generateTexture(Lorg/telegram/ui/Components/Size;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    return v0
.end method

.method private getReusableFramebuffer()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v0, v1, v2

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    return v0
.end method

.method private getTexture()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSuppressingChanges()Z
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->suppressChangesCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$applyHelperShape$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyHelperShape$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$clearShape$10()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$clearStroke$9(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->clearStrokeInternal()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$commitPath$8(Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/Paint/Painting;->commitPathInternal(Lorg/telegram/ui/Components/Paint/Path;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    if-eqz p3, :cond_1

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$commitShape$7(Lorg/telegram/ui/Components/Paint/Shape;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Paint/Painting;->commitShapeInternal(Lorg/telegram/ui/Components/Paint/Shape;ILandroid/graphics/RectF;)Lorg/telegram/ui/Components/Paint/Slice;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private synthetic lambda$onPause$14(Ljava/lang/Runnable;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paused:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;ZZZ)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Paint/Slice;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Components/Paint/Slice;-><init>(Ljava/nio/ByteBuffer;ILandroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Paint/Painting;->cleanResources(Z)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$paintShape$5(Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Shape;->getBounds(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$paintStroke$6(Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Painting;->paintStrokeInternal(Lorg/telegram/ui/Components/Paint/Path;ZZ)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$registerDoubleUndo$12(Lorg/telegram/ui/Components/Paint/Slice;Lorg/telegram/ui/Components/Paint/Slice;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Painting;->hasBlur:Z

    return-void
.end method

.method private synthetic lambda$registerUndo$11(Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V

    return-void
.end method

.method private synthetic lambda$restoreSlice$13(Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSliceInternal(Lorg/telegram/ui/Components/Paint/Slice;Z)V

    return-void
.end method

.method private synthetic lambda$setHelperShape$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setHelperShape$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setHelperShape$2(Lorg/telegram/ui/Components/Paint/Shape;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Texture;->generateTexture(Lorg/telegram/ui/Components/Size;)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eq v2, v3, :cond_6

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    :cond_3
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v2, v4, v1

    aput v3, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/Paint/Painting;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$1;-><init>(Lorg/telegram/ui/Components/Paint/Painting;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    if-eqz p1, :cond_7

    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->SELECTION_CHANGE:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eq p1, v0, :cond_7

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_7
    :goto_3
    return-void
.end method

.method private paintStrokeInternal(Lorg/telegram/ui/Components/Paint/Path;ZZ)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getReusableFramebuffer()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v0

    const v2, 0x8ce0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v2, 0x8cd5

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v2, v2

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v0, v0

    invoke-static {v4, v4, v2, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p2, p2, p2, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4000

    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/Paint/Brush;->getShaderName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Shader;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget v2, v0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTextures:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Brush;->getStampResId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/Texture;

    if-nez v2, :cond_4

    new-instance v2, Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Brush;->getStamp()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/telegram/ui/Components/Paint/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTextures:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Brush;->getStampResId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const p2, 0x84c0

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result p2

    invoke-static {v3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p2, "mvpMatrix"

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result p2

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p2, v3, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string p2, "texture"

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    if-nez p3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    :goto_0
    iput v0, p2, Lorg/telegram/ui/Components/Paint/RenderState;->viewportScale:F

    goto :goto_1

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderState:Lorg/telegram/ui/Components/Paint/RenderState;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/Paint/Render;->RenderPath(Lorg/telegram/ui/Components/Paint/Path;Lorg/telegram/ui/Components/Paint/RenderState;Z)Landroid/graphics/RectF;

    move-result-object p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_3

    :cond_8
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeStrokeBounds:Landroid/graphics/RectF;

    :goto_3
    return-void
.end method

.method private registerDoubleUndo(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, p1, v1}, Landroid/graphics/RectF;->setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Paint/Slice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v2}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;ZZZ)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    invoke-direct {v0, v3, v2, p1, v4}, Lorg/telegram/ui/Components/Paint/Slice;-><init>(Ljava/nio/ByteBuffer;ILandroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V

    new-instance v3, Lorg/telegram/ui/Components/Paint/Slice;

    invoke-virtual {p0, p1, v1, v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;ZZZ)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v4}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    invoke-direct {v3, v2, v1, p1, v4}, Lorg/telegram/ui/Components/Paint/Slice;-><init>(Ljava/nio/ByteBuffer;ILandroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestUndoStore()Lorg/telegram/ui/Components/Paint/UndoStore;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, v3, p2}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;Lorg/telegram/ui/Components/Paint/Slice;Z)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private registerUndo(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Slice;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, p1, v1}, Landroid/graphics/RectF;->setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Paint/Slice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, p2, v2}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;ZZZ)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->data:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestDispatchQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    invoke-direct {v0, v1, p2, p1, v2}, Lorg/telegram/ui/Components/Paint/Slice;-><init>(Ljava/nio/ByteBuffer;ILandroid/graphics/RectF;Lorg/telegram/messenger/DispatchQueue;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->requestUndoStore()Lorg/telegram/ui/Components/Paint/UndoStore;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/Paint/UndoStore;->registerUndo(Ljava/util/UUID;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private renderBlit(IF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->masking:Z

    if-eqz v3, :cond_0

    const-string v3, "maskingBlit"

    goto :goto_0

    :cond_0
    const-string v3, "blit"

    :goto_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/Shader;

    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "mvpMatrix"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    invoke-static {v4}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v3, "alpha"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    move/from16 v4, p2

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->masking:Z

    const v4, 0x84c0

    const-string v7, "texture"

    const/16 v8, 0xde1

    if-eqz v3, :cond_2

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v3, "mask"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v3, "preview"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->originalBitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v1

    :goto_1
    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    goto :goto_1

    :goto_2
    const/16 v1, 0x303

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x1406

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/16 v15, 0x1406

    move-object/from16 v18, v1

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v6, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    :cond_3
    :goto_3
    return-void
.end method

.method private renderBlitPath(ILorg/telegram/ui/Components/Paint/Path;F)V
    .locals 17

    move-object/from16 v1, p0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    :cond_1
    iget-boolean v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->masking:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    instance-of v2, v0, Lorg/telegram/ui/Components/Paint/Brush$Radial;

    if-nez v2, :cond_2

    instance-of v2, v0, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Paint/Brush;->getShaderName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    const-string v7, "_masking"

    goto :goto_1

    :cond_4
    const-string v7, ""

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Paint/Shader;

    if-nez v5, :cond_5

    return-void

    :cond_5
    iget v6, v5, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v6, "mvpMatrix"

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v6

    iget-object v7, v1, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    invoke-static {v7}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-static {v6, v3, v4, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v6, "texture"

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v6, "mask"

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/Path;->getColor()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Brush;->getOverrideAlpha()F

    move-result v8

    mul-float v7, v7, v8

    mul-float v7, v7, p3

    float-to-int v7, v7

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    const-string v7, "color"

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    const v6, 0x84c0

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v6

    const/16 v7, 0xde1

    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v6, 0x84c1

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    move/from16 v6, p1

    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v6, 0x84c2

    const/4 v8, 0x2

    if-eqz v2, :cond_6

    const-string v2, "otexture"

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v2, "preview"

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    const v9, 0x3ecccccd    # 0.4f

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->originalBitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v2

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_6
    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz v0, :cond_8

    const-string v0, "blured"

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getTextureLock()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getTexture()I

    move-result v2

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v0

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    const/16 v0, 0x303

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v10, v1, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x1406

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/16 v13, 0x1406

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x4

    const/4 v3, 0x5

    if-eqz v2, :cond_9

    monitor-enter v2

    :try_start_0
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :goto_4
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    return-void
.end method

.method private renderBlitShape(IILorg/telegram/ui/Components/Paint/Shape;F)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    iget-object v4, v2, Lorg/telegram/ui/Components/Paint/Shape;->brush:Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v4, :cond_1

    iget v5, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    if-ne v1, v5, :cond_1

    move-object v3, v4

    :cond_1
    if-eqz v3, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/Paint/Brush;->getShaderName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Paint/Shader;

    if-nez v4, :cond_3

    return-void

    :cond_3
    iget v6, v4, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v6, "mvpMatrix"

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    invoke-static {v7}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v8, v5, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v6, "texture"

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v6, "mask"

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p4

    float-to-int v7, v7

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    const-string v7, "color"

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    const v6, 0x84c0

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v6, 0xde1

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    move/from16 v1, p2

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    instance-of v1, v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    if-eqz v1, :cond_5

    const-string v1, "type"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    check-cast v3, Lorg/telegram/ui/Components/Paint/Brush$Shape;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Brush$Shape;->getShapeShaderType()I

    move-result v3

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "resolution"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v6, v3, Lorg/telegram/ui/Components/Size;->width:F

    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v1, v6, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v1, "center"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->centerX:F

    iget v6, v2, Lorg/telegram/ui/Components/Paint/Shape;->centerY:F

    invoke-static {v1, v3, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v1, "radius"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusX:F

    iget v6, v2, Lorg/telegram/ui/Components/Paint/Shape;->radiusY:F

    invoke-static {v1, v3, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v1, "thickness"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->thickness:F

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "rounding"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->rounding:F

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "middle"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->middleX:F

    iget v6, v2, Lorg/telegram/ui/Components/Paint/Shape;->middleY:F

    invoke-static {v1, v3, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string v1, "rotation"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->rotation:F

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "fill"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget-boolean v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->fill:Z

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "arrowTriangleLength"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget v3, v2, Lorg/telegram/ui/Components/Paint/Shape;->arrowTriangleLength:F

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v1, "composite"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "clear"

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_5
    const/16 v1, 0x303

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/16 v11, 0x1406

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/4 v15, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x1406

    move-object/from16 v20, v1

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v8}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    :cond_6
    :goto_1
    return-void
.end method

.method private renderBlur()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_3

    iget-boolean v0, v1, Lorg/telegram/ui/Components/Paint/Painting;->hasBlur:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x8d40

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const-string v3, "videoBlur"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Shader;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v3, v0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "mvpMatrix"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    invoke-static {v4}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v5, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v3, "flipy"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v3, "texture"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v3

    const/16 v6, 0xde1

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/16 v7, 0x2601

    invoke-static {v6, v3, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v3, "blured"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v3, 0x84c1

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getTexture()I

    move-result v3

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    instance-of v3, v3, Lorg/telegram/ui/Components/Paint/Brush$Eraser;

    if-eqz v3, :cond_2

    const-string v3, "eraser"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v3, "mask"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v0

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    :cond_2
    const-string v3, "eraser"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_0
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v11, v1, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x1406

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x1406

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getTextureLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    const/4 v0, 0x5

    const/4 v4, 0x4

    :try_start_0
    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Slice;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method private restoreSliceInternal(Lorg/telegram/ui/Components/Paint/Slice;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getData()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getTexture()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v0

    :cond_1
    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getX()I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getY()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->getHeight()I

    move-result v5

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->isSuppressingChanges()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;->contentChanged()V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Slice;->cleanResources()V

    :cond_3
    return-void
.end method


# virtual methods
.method public applyHelperShape()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShown:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Paint/Painting;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$2;-><init>(Lorg/telegram/ui/Components/Paint/Painting;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_RIGID:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public asMask()Lorg/telegram/ui/Components/Paint/Painting;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->masking:Z

    return-object p0
.end method

.method public cleanResources(Z)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aput v0, v3, v2

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->reusableFramebuffer:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aput p1, v0, v2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->paintTexture:I

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTextures:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brushTextures:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aput p1, v0, v2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->originalBitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Shader;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Shader;->cleanResources()V

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    :cond_a
    return-void
.end method

.method public clearShape()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Painting;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearStroke()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Painting;->clearStroke(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearStroke(Ljava/lang/Runnable;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public commitPath(Lorg/telegram/ui/Components/Paint/Path;I)V
    .locals 2

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->commitPath(Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public commitPath(Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v7, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;IZLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public commitShape(Lorg/telegram/ui/Components/Paint/Shape;I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v2, v1, Lorg/telegram/ui/Components/Size;->width:F

    iget v1, v1, Lorg/telegram/ui/Components/Size;->height:F

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getPaintingData(Landroid/graphics/RectF;ZZZ)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v14, v5, v15}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aget v13, v5, v15

    const v12, 0x8d40

    invoke-static {v12, v13}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    invoke-static {v14, v5, v15}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aget v11, v5, v15

    const/16 v10, 0xde1

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0x2802

    const v6, 0x812f

    invoke-static {v10, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2803

    invoke-static {v10, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v9, 0x2801

    const/16 v8, 0x2601

    invoke-static {v10, v9, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v5, 0x2800

    const/16 v6, 0x2600

    invoke-static {v10, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v16, 0x1401

    const/16 v17, 0x0

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v18, 0x0

    const/16 v19, 0x1908

    move v8, v4

    move v9, v0

    const/16 v14, 0xde1

    move/from16 v10, v18

    move/from16 v22, v11

    move/from16 v11, v19

    move/from16 v12, v16

    move/from16 v16, v13

    move-object/from16 v13, v17

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v5, 0x8ce0

    move/from16 v12, v22

    const v6, 0x8d40

    invoke-static {v6, v5, v14, v12, v15}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    iget v6, v5, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v6, v6

    iget v5, v5, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v5, v5

    invoke-static {v15, v15, v6, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const/4 v13, 0x0

    if-nez v5, :cond_0

    return-object v13

    :cond_0
    if-eqz p2, :cond_1

    const-string v6, "nonPremultipliedBlit"

    goto :goto_0

    :cond_1
    iget-boolean v6, v1, Lorg/telegram/ui/Components/Paint/Painting;->masking:Z

    if-eqz v6, :cond_2

    const-string v6, "maskingBlit"

    goto :goto_0

    :cond_2
    const-string v6, "blit"

    :goto_0
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Paint/Shader;

    if-nez v5, :cond_3

    return-object v13

    :cond_3
    iget v6, v5, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glUseProgram(I)V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    neg-int v2, v2

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/GLMatrix;->LoadGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/Paint/Painting;->projection:[F

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/Paint/GLMatrix;->MultiplyMat4f([F[F)[F

    move-result-object v2

    const-string v3, "mvpMatrix"

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v3, v7, v15, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const v3, 0x84c1

    const v6, 0x84c0

    const/4 v8, 0x0

    if-nez p2, :cond_5

    iget-boolean v9, v1, Lorg/telegram/ui/Components/Paint/Painting;->masking:Z

    if-eqz v9, :cond_5

    const-string v9, "texture"

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v7, "mask"

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v15}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v7, "preview"

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    if-eqz p3, :cond_4

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v5

    :goto_1
    invoke-static {v14, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->originalBitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    :goto_2
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v5

    :goto_3
    invoke-static {v14, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_4

    :cond_5
    const-string v7, "texture"

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v15}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    if-eqz p3, :cond_6

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v5

    goto :goto_3

    :goto_4
    invoke-static {v8, v8, v8, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v5, 0x4000

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v5, 0x1

    invoke-static {v5, v15}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/16 v25, 0x0

    const/16 v26, 0x8

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x1406

    move-object/from16 v27, v5

    invoke-static/range {v22 .. v27}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v15}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v5, v1, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    const/16 v30, 0x0

    const/16 v31, 0x8

    const/16 v27, 0x1

    const/16 v28, 0x2

    const/16 v29, 0x1406

    move-object/from16 v32, v5

    invoke-static/range {v27 .. v32}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v5, 0x5

    const/4 v7, 0x4

    invoke-static {v5, v15, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    if-eqz p4, :cond_7

    if-nez p3, :cond_7

    iget-object v9, v1, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    const-string v10, "videoBlur"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Paint/Shader;

    if-eqz v9, :cond_7

    iget-object v10, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v10, :cond_7

    iget v10, v9, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v10, "mvpMatrix"

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v10

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v11, 0x1

    invoke-static {v10, v11, v15, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    const-string v2, "flipy"

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v2, "texture"

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v15}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Texture;->texture()I

    move-result v2

    invoke-static {v14, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/16 v6, 0x2601

    invoke-static {v14, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v2, "blured"

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x1

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getTexture()I

    move-result v2

    invoke-static {v14, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v2, "eraser"

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v2, "mask"

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v2, 0x84c2

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v2

    invoke-static {v14, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x303

    const/4 v3, 0x1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x1406

    move-object/from16 v22, v2

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v15}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;

    const/16 v25, 0x0

    const/16 v26, 0x8

    const/16 v22, 0x1

    const/16 v23, 0x2

    const/16 v24, 0x1406

    move-object/from16 v27, v2

    invoke-static/range {v22 .. v27}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->getTextureLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {v5, v15, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_5
    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    mul-int v3, v4, v0

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v11, v1, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    move v8, v0

    invoke-static/range {v5 .. v11}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    if-eqz p2, :cond_8

    new-instance v0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v13, v2}, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;-><init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V

    goto :goto_6

    :cond_8
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v2, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    invoke-direct {v2, v0, v13}, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;-><init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;)V

    move-object v0, v2

    :goto_6
    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->dataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aput v16, v2, v15

    const/4 v3, 0x1

    invoke-static {v3, v2, v15}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iget-object v2, v1, Lorg/telegram/ui/Components/Paint/Painting;->buffers:[I

    aput v12, v2, v15

    invoke-static {v3, v2, v15}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-object v0
.end method

.method public getSize()Lorg/telegram/ui/Components/Size;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->size:Lorg/telegram/ui/Components/Size;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paused:Z

    return v0
.end method

.method public onPause(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Painting;->restoreSlice(Lorg/telegram/ui/Components/Paint/Slice;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->backupSlice:Lorg/telegram/ui/Components/Paint/Slice;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->paused:Z

    return-void
.end method

.method public paintShape(Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public paintStroke(Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v7, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda13;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Path;ZZLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public render()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->renderBlur()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->activePath:Lorg/telegram/ui/Components/Paint/Path;

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    mul-float v4, v4, v2

    sub-float/2addr v1, v4

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    mul-float v4, v4, v2

    sub-float/2addr v1, v4

    invoke-direct {p0, v0, v3, v1}, Lorg/telegram/ui/Components/Paint/Painting;->renderBlitPath(ILorg/telegram/ui/Components/Paint/Path;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->activeShape:Lorg/telegram/ui/Components/Paint/Shape;

    invoke-direct {p0, v0, v3, v4, v1}, Lorg/telegram/ui/Components/Paint/Painting;->renderBlitShape(IILorg/telegram/ui/Components/Paint/Shape;F)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->renderBlit(IF)V

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperTexture:I

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperShape:Lorg/telegram/ui/Components/Paint/Shape;

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperAlpha:F

    mul-float v4, v4, v2

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAlpha:F

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/telegram/ui/Components/Paint/Painting;->renderBlitShape(IILorg/telegram/ui/Components/Paint/Shape;F)V

    :cond_4
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Paint/Texture;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Paint/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-nez p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/Paint/Texture;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/Paint/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bitmapBlurTexture:Lorg/telegram/ui/Components/Paint/Texture;

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->masking:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->originalBitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Components/Paint/Texture;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/Paint/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->originalBitmapTexture:Lorg/telegram/ui/Components/Paint/Texture;

    :cond_2
    return-void
.end method

.method public setBrush(Lorg/telegram/ui/Components/Paint/Brush;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Brush$Blurer;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapRotation:I

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    const/16 v4, -0x5a

    if-ne v1, v4, :cond_1

    :cond_0
    move v7, v0

    move v0, p1

    move p1, v7

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredBitmap:Landroid/graphics/Bitmap;

    const/high16 v4, 0x41000000    # 8.0f

    if-nez v1, :cond_2

    int-to-float v1, p1

    div-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v5, v0

    div-float/2addr v5, v4

    float-to-int v5, v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredBitmap:Landroid/graphics/Bitmap;

    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v5, 0x3e000000    # 0.125f

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_3

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapPaint:Landroid/graphics/Paint;

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapRotation:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget v5, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapRotation:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_4

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_4
    const/16 v3, 0xb4

    if-ne v5, v3, :cond_5

    neg-int v2, p1

    int-to-float v2, v2

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_5
    if-ne v5, v2, :cond_6

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_6
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3, v3}, Lorg/telegram/ui/Components/Paint/RenderView;->getResultBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    int-to-float p1, p1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p1, v5

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->imageBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v6, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredBitmap:Landroid/graphics/Bitmap;

    float-to-int v0, v4

    invoke-static {p1, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Paint/Texture;->cleanResources(Z)V

    :cond_8
    new-instance p1, Lorg/telegram/ui/Components/Paint/Texture;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/Paint/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->bluredTexture:Lorg/telegram/ui/Components/Paint/Texture;

    :cond_9
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->delegate:Lorg/telegram/ui/Components/Paint/Painting$PaintingDelegate;

    return-void
.end method

.method public setHelperShape(Lorg/telegram/ui/Components/Paint/Shape;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->helperApplyAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Painting$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Painting;Lorg/telegram/ui/Components/Paint/Shape;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->performInContext(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRenderProjection([F)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderProjection:[F

    return-void
.end method

.method public setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-void
.end method

.method public setupShaders()V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/Components/Paint/ShaderSet;->setup()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;

    return-void
.end method
