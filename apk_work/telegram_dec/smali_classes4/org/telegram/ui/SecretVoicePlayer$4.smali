.class Lorg/telegram/ui/SecretVoicePlayer$4;
.super Lorg/telegram/ui/Cells/ChatMessageCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecretVoicePlayer;->setCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private clipPaint:Landroid/graphics/Paint;

.field private clipPath:Landroid/graphics/Path;

.field final fromRect:Landroid/graphics/RectF;

.field private progressPaint:Landroid/graphics/Paint;

.field private radialGradient:Landroid/graphics/RadialGradient;

.field private radialMatrix:Landroid/graphics/Matrix;

.field private radialPaint:Landroid/graphics/Paint;

.field private renderedFirstFrameT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private setRect:Z

.field final synthetic this$0:Lorg/telegram/ui/SecretVoicePlayer;

.field private timerParticles:Lorg/telegram/ui/Components/TimerParticles;

.field final toRect:Landroid/graphics/RectF;

.field final synthetic val$finalHeight:I

.field final synthetic val$finalWidth:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecretVoicePlayer;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 8

    move-object v6, p0

    move-object v0, p1

    iput-object v0, v6, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    move v0, p7

    iput v0, v6, Lorg/telegram/ui/SecretVoicePlayer$4;->val$finalWidth:I

    move/from16 v0, p8

    iput v0, v6, Lorg/telegram/ui/SecretVoicePlayer$4;->val$finalHeight:I

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x0

    iput-boolean v0, v6, Lorg/telegram/ui/SecretVoicePlayer$4;->setRect:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/SecretVoicePlayer$4;->fromRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/SecretVoicePlayer$4;->toRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/SecretVoicePlayer$4;->clipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lorg/telegram/ui/SecretVoicePlayer$4;->progressPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x78

    const/4 v7, 0x0

    move-object p1, v0

    move p2, v7

    move-object p3, p0

    move-wide p4, v2

    move-wide p6, v4

    move-object/from16 p8, v1

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v6, Lorg/telegram/ui/SecretVoicePlayer$4;->renderedFirstFrameT:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method private getClipPaint()Landroid/graphics/Paint;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->clipPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->clipPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->clipPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public drawBlurredPhoto(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1800(Lorg/telegram/ui/SecretVoicePlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1200(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->clipPath:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v6}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v7}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v8}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v4}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v5}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v4}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v5}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v5}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    invoke-direct {p0}, Lorg/telegram/ui/SecretVoicePlayer$4;->getClipPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->renderedFirstFrameT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v4}, Lorg/telegram/ui/SecretVoicePlayer;->access$1800(Lorg/telegram/ui/SecretVoicePlayer;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    sub-float v3, v2, v3

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v4}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v4

    sub-float v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x4299999a    # 76.8f

    div-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$2000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v3

    mul-float v0, v0, v3

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v4}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialGradient:Landroid/graphics/RadialGradient;

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v0

    const/16 v3, 0xff

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBlurredPhoto(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBlurredPhoto(Landroid/graphics/Canvas;)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$2000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v3

    const/high16 v4, 0x43320000    # 178.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->progressPaint:Landroid/graphics/Paint;

    const v1, 0x40551eb8    # 3.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->progressPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$2100(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v1

    sub-float v1, v2, v1

    const/high16 v9, -0x3c4c0000    # -360.0f

    mul-float v6, v1, v9

    iget-object v8, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->progressPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    if-nez v1, :cond_5

    new-instance v1, Lorg/telegram/ui/Components/TimerParticles;

    const/16 v3, 0x78

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/TimerParticles;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lorg/telegram/ui/Components/TimerParticles;->big:Z

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->progressPaint:Landroid/graphics/Paint;

    const v3, 0x40333333    # 2.8f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->progressPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$2100(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v1

    sub-float/2addr v2, v1

    mul-float v7, v2, v9

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, p1

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/TimerParticles;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawBlurredPhotoParticles(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$2000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBlurredPhotoParticles(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawRadialProgress(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawRadialProgress(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawReactionsLayout(Landroid/graphics/Canvas;FLjava/lang/Integer;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    neg-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$600(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->totalHeight:I

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float v1, v1, p2

    invoke-super {p0, p1, v1, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawReactionsLayout(Landroid/graphics/Canvas;FLjava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawTime(Landroid/graphics/Canvas;FZ)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1700(Lorg/telegram/ui/SecretVoicePlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->timeWidth:I

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1900(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1900(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1900(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v1}, Lorg/telegram/ui/SecretVoicePlayer;->access$1900(Lorg/telegram/ui/SecretVoicePlayer;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x13

    if-ne v1, v3, :cond_0

    const/4 v2, 0x4

    :cond_0
    const/16 v1, 0x14

    add-int/2addr v2, v1

    :cond_1
    const/16 v1, 0x8

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->toRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->timeX:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v0

    mul-float v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBoundsLeft()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsRight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1700(Lorg/telegram/ui/SecretVoicePlayer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->setRect:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->fromRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3f6b851f    # 0.92f

    mul-float v0, v0, v3

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->toRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    div-float/2addr v6, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v0

    div-float/2addr v7, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v0

    div-float/2addr v8, v5

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->setRect:Z

    new-instance v10, Landroid/graphics/RadialGradient;

    const/4 v3, 0x0

    const/4 v4, -0x1

    filled-new-array {v4, v4, v3}, [I

    move-result-object v7

    const/4 v3, 0x3

    new-array v8, v3, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v4, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialGradient:Landroid/graphics/RadialGradient;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->radialMatrix:Landroid/graphics/Matrix;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->fromRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->toRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v4}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v5}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v4}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v5}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p0, v0, v3, v4, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setImageCoords(FFFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v3}, Lorg/telegram/ui/SecretVoicePlayer;->access$1300(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1800(Lorg/telegram/ui/SecretVoicePlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    const/16 v8, 0xff

    const/16 v9, 0x1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v0

    sub-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->radialProgressAlpha:F

    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1700(Lorg/telegram/ui/SecretVoicePlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$000(Lorg/telegram/ui/SecretVoicePlayer;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1800(Lorg/telegram/ui/SecretVoicePlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->val$finalWidth:I

    iget p2, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->val$finalHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1200(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretVoicePlayer$4;->this$0:Lorg/telegram/ui/SecretVoicePlayer;

    invoke-static {v0}, Lorg/telegram/ui/SecretVoicePlayer;->access$1200(Lorg/telegram/ui/SecretVoicePlayer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
