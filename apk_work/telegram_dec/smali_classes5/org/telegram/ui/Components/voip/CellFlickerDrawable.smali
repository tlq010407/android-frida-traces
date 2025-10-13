.class public Lorg/telegram/ui/Components/voip/CellFlickerDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;
    }
.end annotation


# instance fields
.field public animationSpeedScale:F

.field public drawFrame:Z

.field public frameInside:Z

.field private gradientShader:Landroid/graphics/Shader;

.field private gradientShader2:Landroid/graphics/Shader;

.field lastUpdateTime:J

.field matrix:Landroid/graphics/Matrix;

.field onRestartCallback:Ljava/lang/Runnable;

.field private paint:Landroid/graphics/Paint;

.field private paintOutline:Landroid/graphics/Paint;

.field parentView:Landroid/view/View;

.field parentWidth:I

.field public progress:F

.field public repeatEnabled:Z

.field public repeatProgress:F

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 0
    const/16 v0, 0xcc

    const/16 v1, 0xa0

    const/16 v2, 0x40

    invoke-direct {p0, v2, v0, v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 0
    const/16 v0, 0xa0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 20

    .line 0
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->matrix:Landroid/graphics/Matrix;

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatEnabled:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->frameInside:Z

    const v2, 0x3f99999a    # 1.2f

    iput v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    move/from16 v2, p3

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->size:I

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->size:I

    int-to-float v6, v3

    const/4 v11, -0x1

    move/from16 v3, p1

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    filled-new-array {v1, v3, v1}, [I

    move-result-object v8

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v2

    move-object/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->size:I

    int-to-float v15, v3

    move/from16 v3, p2

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    filled-new-array {v1, v3, v1}, [I

    move-result-object v17

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader2:Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader2:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/CellFlickerDrawable;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/CellFlickerDrawable;)Landroid/graphics/Shader;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader:Landroid/graphics/Shader;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/CellFlickerDrawable;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    return-object p0
.end method

.method private update(Landroid/view/View;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->lastUpdateTime:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_2

    sub-long v4, v2, v4

    const-wide/16 v6, 0xa

    cmp-long p1, v4, v6

    if-lez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    long-to-float v0, v4

    const/high16 v4, 0x44960000    # 1200.0f

    div-float/2addr v0, v4

    iget v4, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    mul-float v0, v0, v4

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    iget v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    iput v1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->onRestartCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    iput-wide v2, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->lastUpdateTime:J

    :cond_3
    iget p1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->parentWidth:I

    iget v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->size:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr p1, v2

    int-to-float p1, p1

    iget v2, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    mul-float p1, p1, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader:Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader2:Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->update(Landroid/view/View;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean p3, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V
    .locals 2

    .line 0
    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->update(Landroid/view/View;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean p4, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->frameInside:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p2, p4, v1}, Landroid/graphics/RectF;->inset(FF)V

    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 8

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->lastUpdateTime:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0xa

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    long-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float/2addr v2, v3

    add-float/2addr v4, v2

    iput v4, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_0

    iput v6, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->onRestartCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->lastUpdateTime:J

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->parentWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->size:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float v1, v1, v0

    int-to-float v0, v2

    sub-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader2:Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v2, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    iget v3, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v5, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    sub-float/2addr v1, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->frameInside:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    :cond_3
    iget-object p2, p2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget p2, p2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->roundRadius:F

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public getDrawableInterface(Landroid/view/View;Lorg/telegram/messenger/SvgHelper$SvgDrawable;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->parentView:Landroid/view/View;

    new-instance p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;-><init>(Lorg/telegram/ui/Components/voip/CellFlickerDrawable;Lorg/telegram/messenger/SvgHelper$SvgDrawable;)V

    return-object p1
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColors(I)V
    .locals 2

    .line 0
    const/16 v0, 0x40

    const/16 v1, 0xcc

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setColors(III)V

    return-void
.end method

.method public setColors(III)V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    new-instance v9, Landroid/graphics/LinearGradient;

    iget v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->size:I

    int-to-float v4, v1

    invoke-static/range {p1 .. p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v10, 0x0

    filled-new-array {v10, v1, v10}, [I

    move-result-object v6

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v9

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader:Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->size:I

    int-to-float v14, v2

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    filled-new-array {v10, v2, v10}, [I

    move-result-object v16

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader2:Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->paintOutline:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->gradientShader2:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setOnRestartCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->onRestartCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setParentWidth(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->parentWidth:I

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    return-void
.end method
