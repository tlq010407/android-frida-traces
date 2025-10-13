.class Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animation"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field public final buffer:[I

.field public currentBuffer:I

.field public customMatrix:Z

.field public final density:F

.field public doneCallback:Ljava/lang/Runnable;

.field public firstDraw:Z

.field public final glMatrixValues:[F

.field public gridHeight:I

.field public gridSize:F

.field public gridWidth:I

.field public invalidateMatrix:Z

.field private isPhotoEditor:Z

.field private lastDrawTime:J

.field public left:F

.field public longevity:F

.field public final matrix:Landroid/graphics/Matrix;

.field public final matrixValues:[F

.field public offsetLeft:F

.field public offsetTop:F

.field public particlesCount:I

.field public volatile ready:Z

.field public final seed:F

.field public startCallback:Ljava/lang/Runnable;

.field public final texture:[I

.field final synthetic this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

.field public time:F

.field public timeScale:F

.field public top:F

.field public viewHeight:I

.field public viewWidth:I

.field public views:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$a2xFc6U45Ihl41UGz2c6bHlDmxQ(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ffAyKhZF-HxyOgaQ4fNT2BZuSYc(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lambda$new$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lastDrawTime:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->density:F

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    const p1, 0x3f933333    # 1.15f

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->invalidateMatrix:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->customMatrix:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->glMatrixValues:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrixValues:[F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    double-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->seed:F

    new-array v2, v0, [I

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->isPhotoEditor:Z

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v3, p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    aget p1, v3, v0

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    aget p1, v3, v2

    const/4 v2, 0x3

    aget v2, v3, v2

    const/4 v4, 0x6

    aget v5, v3, v4

    const/4 v6, 0x7

    aget v7, v3, v6

    invoke-static {p1, v2, v5, v7}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    const/4 p1, 0x4

    aget p1, v3, p1

    const/4 v2, 0x5

    aget v2, v3, v2

    aget v4, v3, v4

    aget v3, v3, v6

    invoke-static {p1, v2, v4, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->customMatrix:Z

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->retrieveMatrixValues()V

    iput-object p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    iput-object p5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    const/high16 p1, 0x40800000    # 4.0f

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    const p1, -0x42333333    # -0.1f

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    iput-object p3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 7

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lastDrawTime:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    iput v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->density:F

    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    const v1, 0x3f933333    # 1.15f

    iput v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->invalidateMatrix:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->customMatrix:Z

    const/16 v2, 0x9

    new-array v3, v2, [F

    iput-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->glMatrixValues:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrixValues:[F

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    double-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->seed:F

    new-array v2, v0, [I

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    instance-of v2, p2, Lorg/telegram/ui/Cells/BaseCell;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/BaseCell;->getBoundsRight()I

    move-result v3

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/BaseCell;->getBoundsLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    iget v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/BaseCell;->getBoundsLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    :cond_0
    iput-object p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    new-instance p4, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda17;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    iget p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    mul-float p4, p4, p3

    iput p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    iget p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p3, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr p3, v3

    add-float/2addr p3, v2

    div-float/2addr p4, p3

    iput p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    iget p3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    iget p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    new-instance p3, Landroid/graphics/Canvas;

    iget-object p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p3, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result p4

    iget v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    neg-float v2, v2

    invoke-virtual {p3, v2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    instance-of v2, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_1

    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-boolean v0, v3, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    :cond_1
    instance-of v3, p2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_2

    move-object v4, p2

    check-cast v4, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    iget v5, v4, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, p3, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v0, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->drawReactions(Landroid/graphics/Canvas;ZLjava/lang/Integer;)V

    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    move-object v4, p2

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p3, p1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, p3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_5

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {p3, p1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, p3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_2
    :try_start_0
    invoke-virtual {p3, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    iget p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 36

    .line 0
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v0, p1

    iput-object v0, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    iput-wide v0, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lastDrawTime:J

    const/4 v0, 0x0

    iput v0, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    const/4 v1, 0x1

    iput-boolean v1, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    iput v0, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iput v0, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    iput v0, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    iput v0, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    iput v2, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->density:F

    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    const v2, 0x3f933333    # 1.15f

    iput v2, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    iput-boolean v1, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->invalidateMatrix:Z

    const/4 v12, 0x0

    iput-boolean v12, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->customMatrix:Z

    const/16 v2, 0x9

    new-array v3, v2, [F

    iput-object v3, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->glMatrixValues:[F

    new-array v2, v2, [F

    iput-object v2, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrixValues:[F

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    double-to-float v2, v2

    iput v2, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->seed:F

    new-array v2, v1, [I

    iput-object v2, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    iget-object v3, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v9, v13

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v9, v8

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    int-to-float v13, v4

    iput v13, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    int-to-float v14, v3

    iput v14, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    sub-int/2addr v6, v3

    iput v6, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    sub-int/2addr v5, v4

    iput v5, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    move-object/from16 v3, p3

    iput-object v3, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    new-instance v3, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda16;

    invoke-direct {v3, v11}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticLambda16;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_1

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-boolean v1, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v3, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    iget v4, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    new-instance v9, Landroid/graphics/Canvas;

    iget-object v3, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v3, :cond_4

    return-void

    :cond_4
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->getChatActivity()Lorg/telegram/ui/ChatActivity;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v12

    const/4 v1, 0x0

    :goto_2
    const/4 v0, 0x3

    if-ge v1, v0, :cond_34

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-ne v1, v2, :cond_6

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_6

    move/from16 v33, v1

    move-object/from16 v30, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move/from16 p3, v12

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v35, v15

    goto/16 :goto_12

    :cond_6
    const/4 v0, 0x0

    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 p3, v12

    if-ge v0, v2, :cond_2a

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v12, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v12, :cond_28

    move-object v12, v2

    check-cast v12, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v16

    move/from16 v26, v13

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v13, v16, v13

    if-gtz v13, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v13

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v13, v2

    const/4 v2, 0x0

    cmpg-float v13, v13, v2

    if-ltz v13, :cond_7

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/4 v2, 0x4

    if-eq v13, v2, :cond_7

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v2, 0x8

    if-ne v13, v2, :cond_8

    :cond_7
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    :goto_4
    move/from16 v27, v14

    :goto_5
    move-object/from16 v16, v15

    goto/16 :goto_b

    :cond_8
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-eqz v13, :cond_a

    iget-object v2, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v2

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v2, 0x0

    :goto_7
    move/from16 v27, v14

    if-nez v1, :cond_15

    if-nez v2, :cond_b

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v14

    iget-boolean v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v14, :cond_15

    :cond_b
    if-eqz v2, :cond_c

    iget-boolean v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v14, :cond_c

    iget-byte v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v14, :cond_10

    iget-byte v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v14, :cond_10

    :cond_c
    if-eqz v2, :cond_d

    iget-boolean v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-eqz v14, :cond_e

    :cond_d
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v2, :cond_f

    iget-byte v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v14, :cond_10

    iget-byte v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v14, :cond_10

    :cond_f
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasNameLayout()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    if-nez v2, :cond_11

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v14

    iget-boolean v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transformGroupToSingleMessage:Z

    if-nez v14, :cond_11

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v14

    iget-boolean v14, v14, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v14, :cond_15

    :cond_11
    if-eqz v2, :cond_12

    iget v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->captionFlag()I

    move-result v18

    and-int v14, v14, v18

    if-eqz v14, :cond_13

    :cond_12
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    if-eqz v2, :cond_14

    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v14, v2, 0x8

    if-eqz v14, :cond_15

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_15

    :cond_14
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v13, :cond_16

    if-nez v1, :cond_17

    iget-object v2, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v14, 0x1

    if-eq v2, v14, :cond_16

    goto :goto_9

    :cond_16
    :goto_8
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    goto/16 :goto_5

    :cond_17
    const/4 v14, 0x1

    :goto_9
    if-ne v1, v14, :cond_18

    iget-object v2, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    if-nez v2, :cond_18

    goto :goto_8

    :cond_18
    if-nez v1, :cond_19

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v2, :cond_16

    :cond_19
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v2, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v14

    if-eqz v14, :cond_16

    :cond_1b
    if-eq v1, v2, :cond_1c

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v14

    if-eqz v14, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    iget-object v14, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v2, 0x0

    iput v2, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    iput v2, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    iput v2, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    iput v2, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    iput-boolean v2, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    iput-boolean v2, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iput-object v12, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v2, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v14

    iput-boolean v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-object v2, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v14

    iput-boolean v14, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v14

    add-int/2addr v2, v14

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v18

    add-int v14, v14, v18

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v18

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v28, v5

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v16, 0x4

    and-int/lit8 v5, v5, 0x4

    const/high16 v16, 0x41200000    # 10.0f

    if-nez v5, :cond_1e

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v18, v18, v5

    :cond_1e
    move-object/from16 v29, v6

    move/from16 v5, v18

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v17, 0x8

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_1f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int v19, v19, v6

    :cond_1f
    move/from16 v6, v19

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v16

    if-eqz v16, :cond_20

    move-object/from16 v16, v15

    iget-object v15, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-object v12, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    goto :goto_a

    :cond_20
    move-object/from16 v16, v15

    :goto_a
    iget-object v12, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v13, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    if-eqz v13, :cond_21

    if-ge v5, v13, :cond_22

    :cond_21
    iput v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    :cond_22
    iget v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    if-eqz v5, :cond_23

    if-le v6, v5, :cond_24

    :cond_23
    iput v6, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    :cond_24
    iget v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    if-eqz v5, :cond_25

    if-ge v2, v5, :cond_26

    :cond_25
    iput v2, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    :cond_26
    iget v2, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    if-eqz v2, :cond_27

    if-le v14, v2, :cond_29

    :cond_27
    iput v14, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    goto :goto_b

    :cond_28
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v26, v13

    goto/16 :goto_4

    :cond_29
    :goto_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v12, p3

    move-object/from16 v15, v16

    move/from16 v13, v26

    move/from16 v14, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_3

    :cond_2a
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v16, v15

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_33

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v12, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v12, v12

    add-float/2addr v12, v5

    iget v13, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v12, v13

    iget v13, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v13, v13

    iget v15, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v13, v15

    iget v15, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v15, v15

    add-float/2addr v15, v5

    iget v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v15, v5

    iget v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v5, v5

    iget v14, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v5, v14

    iget-boolean v14, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v14, :cond_2b

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v13, v6

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v5, v6

    :cond_2b
    iget v6, v8, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    iget v14, v8, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v14, v14

    sub-float/2addr v6, v14

    const/high16 v14, 0x41a00000    # 20.0f

    move-object/from16 v30, v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v6, v4

    cmpg-float v4, v13, v6

    if-gez v4, :cond_2c

    iget v4, v8, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    iget v6, v8, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v13, v4, v6

    :cond_2c
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_2d

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v5, v4

    :cond_2d
    iget v4, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    sub-float/2addr v13, v4

    sub-float/2addr v5, v4

    iget v4, v10, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    sub-float/2addr v12, v4

    sub-float v4, v15, v4

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v6

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v14

    if-nez v6, :cond_2f

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    cmpl-float v6, v6, v14

    if-eqz v6, :cond_2e

    goto :goto_d

    :cond_2e
    const/4 v14, 0x0

    goto :goto_e

    :cond_2f
    :goto_d
    const/4 v14, 0x1

    :goto_e
    if-eqz v14, :cond_30

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    iget-object v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v15}, Landroid/view/View;->getScaleX()F

    move-result v15

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    sub-float v17, v4, v12

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v10, v12, v17

    sub-float v17, v5, v13

    div-float v17, v17, v18

    move-object/from16 v31, v7

    add-float v7, v13, v17

    invoke-virtual {v9, v15, v6, v10, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_f

    :cond_30
    move-object/from16 v31, v7

    :goto_f
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v15, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    float-to-int v7, v12

    float-to-int v10, v13

    move-object/from16 v32, v8

    float-to-int v8, v4

    move/from16 v33, v1

    float-to-int v1, v5

    move/from16 v34, v2

    iget-boolean v2, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-boolean v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->getKeyboardHeight()I

    move-result v24

    const/16 v23, 0x0

    move-object/from16 v35, v16

    move-object/from16 v16, v9

    move/from16 v17, v7

    move/from16 v18, v10

    move/from16 v19, v8

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v6

    invoke-virtual/range {v15 .. v24}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackground(Landroid/graphics/Canvas;IIIIZZZI)V

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iput-boolean v6, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eqz v14, :cond_32

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x0

    :goto_10
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_32

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_31

    move-object v7, v6

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v8

    if-ne v8, v0, :cond_31

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v8, v8

    sub-float v8, v12, v8

    sub-float v10, v4, v12

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v10, v14

    add-float/2addr v8, v10

    invoke-virtual {v6, v8}, Landroid/view/View;->setPivotX(F)V

    int-to-float v7, v7

    sub-float v7, v13, v7

    sub-float v8, v5, v13

    div-float/2addr v8, v14

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    goto :goto_11

    :cond_31
    const/high16 v14, 0x40000000    # 2.0f

    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_32
    add-int/lit8 v0, v34, 0x1

    move-object/from16 v10, p0

    move v2, v0

    move-object/from16 v4, v30

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move/from16 v1, v33

    move-object/from16 v16, v35

    goto/16 :goto_c

    :cond_33
    move/from16 v33, v1

    move-object/from16 v30, v4

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v35, v16

    :goto_12
    add-int/lit8 v1, v33, 0x1

    move-object/from16 v10, p0

    move/from16 v12, p3

    move/from16 v13, v26

    move/from16 v14, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v4, v30

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v15, v35

    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_34
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move/from16 p3, v12

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v35, v15

    const/4 v2, 0x0

    :goto_13
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_37

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float v1, v1, v27

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    sub-float v3, v3, v26

    invoke-virtual {v9, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_35

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    goto :goto_14

    :cond_35
    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_36

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    :cond_36
    :goto_14
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_37
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getY()F

    move-result v0

    move-object/from16 v8, v32

    iget v1, v8, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    add-float/2addr v0, v1

    iget v1, v8, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_39

    const/4 v12, 0x0

    :goto_15
    if-ge v12, v10, :cond_38

    move-object/from16 v7, v31

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v1

    sub-float v13, v1, v27

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v1

    sub-float v14, v1, v26

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v16, v28

    move v5, v0

    move-object/from16 v17, v29

    move-object/from16 v18, v7

    move v7, v15

    move-object v15, v8

    move v8, v13

    move-object v13, v9

    move v9, v14

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->drawChildElement(Landroid/view/View;Lorg/telegram/ui/ChatActivity;Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;IFF)V

    add-int/lit8 v12, v12, 0x1

    move-object v9, v13

    move-object v8, v15

    move-object/from16 v31, v18

    goto :goto_15

    :cond_38
    move-object v15, v8

    move-object v13, v9

    move-object/from16 v16, v28

    move-object/from16 v17, v29

    move-object/from16 v18, v31

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto :goto_16

    :cond_39
    move-object v15, v8

    move-object v13, v9

    move-object/from16 v16, v28

    move-object/from16 v17, v29

    :goto_16
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3b

    const/4 v12, 0x0

    :goto_17
    move-object/from16 v14, v17

    if-ge v12, v10, :cond_3a

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v1

    sub-float v8, v1, v27

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v1

    sub-float v9, v1, v26

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object v3, v15

    move-object v4, v13

    move v5, v0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->drawChildElement(Landroid/view/View;Lorg/telegram/ui/ChatActivity;Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;IFF)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    :cond_3a
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    :cond_3b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3e

    const/4 v12, 0x0

    :goto_18
    move-object/from16 v14, v16

    if-ge v12, v10, :cond_3d

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v1

    if-nez v1, :cond_3c

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-nez v1, :cond_3c

    goto :goto_19

    :cond_3c
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v1

    sub-float v8, v1, v27

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v1

    sub-float v9, v1, v26

    const/4 v7, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object v3, v15

    move-object v4, v13

    move v5, v0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->drawChildElement(Landroid/view/View;Lorg/telegram/ui/ChatActivity;Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;IFF)V

    :goto_19
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v14

    goto :goto_18

    :cond_3d
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    :cond_3e
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_41

    const/4 v12, 0x0

    :goto_1a
    move-object/from16 v14, v35

    if-ge v12, v10, :cond_40

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v1

    if-nez v1, :cond_3f

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-nez v1, :cond_3f

    goto :goto_1b

    :cond_3f
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v1

    sub-float v8, v1, v27

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v1

    sub-float v9, v1, v26

    const/4 v7, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object v3, v15

    move-object v4, v13

    move v5, v0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->drawChildElement(Landroid/view/View;Lorg/telegram/ui/ChatActivity;Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;IFF)V

    :goto_1b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v35, v14

    goto :goto_1a

    :cond_40
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    :cond_41
    move/from16 v0, p3

    :try_start_0
    invoke-virtual {v13, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1c

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_43

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_42

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->drawingToBitmap:Z

    goto :goto_1e

    :cond_42
    const/4 v1, 0x0

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_43
    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->isPhotoEditor:Z

    return p0
.end method

.method private drawChildElement(Landroid/view/View;Lorg/telegram/ui/ChatActivity;Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;IFF)V
    .locals 0

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p3, p7, p8}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p2, 0x1

    invoke-virtual {p5, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 p4, 0x0

    if-nez p6, :cond_1

    invoke-virtual {p5, p3, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    goto :goto_2

    :cond_1
    if-ne p6, p2, :cond_2

    invoke-virtual {p5, p3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    goto :goto_2

    :cond_2
    const/4 p7, 0x2

    if-ne p6, p7, :cond_4

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p6

    if-eqz p6, :cond_3

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p6

    iget p6, p6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr p6, p2

    if-nez p6, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p5, p3, p2, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    goto :goto_2

    :cond_4
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p6

    if-eqz p6, :cond_5

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p6

    iget p6, p6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr p2, p6

    if-eqz p2, :cond_6

    :cond_5
    const/4 p2, 0x0

    invoke-virtual {p5, p3, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawReactionsLayout(Landroid/graphics/Canvas;FLjava/lang/Integer;)V

    invoke-virtual {p5, p3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCommentLayout(Landroid/graphics/Canvas;F)V

    :cond_6
    :goto_2
    invoke-virtual {p5, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v0, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v0, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private retrieveMatrixValues()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->glMatrixValues:[F

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrixValues:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x3

    aget v4, v1, v3

    const/4 v5, 0x1

    aput v4, v0, v5

    const/4 v4, 0x6

    aget v6, v1, v4

    const/4 v7, 0x2

    aput v6, v0, v7

    aget v5, v1, v5

    aput v5, v0, v3

    const/4 v3, 0x4

    aget v5, v1, v3

    aput v5, v0, v3

    const/4 v3, 0x7

    aget v5, v1, v3

    const/4 v6, 0x5

    aput v5, v0, v6

    aget v5, v1, v7

    aput v5, v0, v4

    aget v4, v1, v6

    aput v4, v0, v3

    const/16 v3, 0x8

    aget v1, v1, v3

    aput v1, v0, v3

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->invalidateMatrix:Z

    return-void
.end method


# virtual methods
.method public calcParticlesGrid(F)V
    .locals 5

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x1d4c0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    const/16 v0, 0x7530

    goto :goto_0

    :cond_0
    const v0, 0x1d4c0

    goto :goto_0

    :cond_1
    const v0, 0xea60

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$100(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->isPhotoEditor:Z

    if-eqz v0, :cond_3

    div-int/lit8 v2, v2, 0x2

    :cond_3
    const v0, 0x3ecccccd    # 0.4f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    iget v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    mul-int v1, v1, v4

    int-to-float v1, v1

    mul-float v0, v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v1, v2

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/16 v1, 0xa

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridHeight:I

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridWidth:I

    :goto_3
    iget p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridHeight:I

    mul-int v2, p1, v1

    iget v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    if-ge v2, v4, :cond_5

    int-to-float v2, p1

    int-to-float v4, v1

    div-float/2addr v2, v4

    cmpg-float v2, v2, v0

    if-gez v2, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridHeight:I

    goto :goto_3

    :cond_5
    iput v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridSize:F

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    const/4 v0, 0x0

    invoke-static {v3, p1, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline14;->m(I[II)V

    :goto_4
    if-ge v0, v3, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    aget p1, p1, v0

    const v1, 0x8892

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline6;->m(II)V

    iget p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    mul-int/lit8 p1, p1, 0x1c

    const/4 v2, 0x0

    const v4, 0x88e8

    invoke-static {v1, p1, v2, v4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline15;->m(IILjava/nio/Buffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public done(Z)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    const/4 v2, 0x2

    invoke-static {v2, v1, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline0;->m(I[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$2300(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$2300(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline1;->m(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$2302(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;I)I

    :cond_0
    :try_start_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline2;->m(I[II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->ensureRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public draw()V
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lastDrawTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    sub-long v3, v1, v3

    long-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    :goto_0
    iput-wide v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->lastDrawTime:J

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->invalidateMatrix:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->customMatrix:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->left:F

    iget v5, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->top:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->retrieveMatrixValues()V

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    float-to-double v1, v1

    iget v5, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$800(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->glMatrixValues:[F

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v5, v6, v2, v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline3;->m(IIZ[FI)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$900(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1000(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1100(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    double-to-float v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->timeScale:F

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1200(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1300(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridWidth:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridHeight:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->gridSize:F

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline13;->m(IFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1400(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iget v3, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline3;->m(IFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1500(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->isPhotoEditor:Z

    if-eqz v2, :cond_3

    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_2

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1600(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->isPhotoEditor:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const v8, 0x3f19999a    # 0.6f

    :goto_3
    invoke-static {v1, v8}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1700(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewWidth:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline3;->m(IFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1800(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->seed:F

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$1900(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    invoke-static {v1, v7, v7}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticApiModelOutline3;->m(IFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$2000(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->density:F

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$2100(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline4;->m(IF)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    aget v1, v1, v6

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->this$0:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$2200(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I

    move-result v1

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline5;->m(II)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    iget v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->currentBuffer:I

    aget v1, v1, v2

    const v2, 0x8892

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline6;->m(II)V

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v17, 0x1c

    const/16 v18, 0x8

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/16 v15, 0x1406

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v5}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v12, 0x10

    const/4 v7, 0x2

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v12, 0x18

    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->buffer:[I

    iget v7, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->currentBuffer:I

    rsub-int/lit8 v7, v7, 0x1

    aget v4, v4, v7

    const v7, 0x8c8e

    invoke-static {v7, v6, v4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline9;->m(III)V

    const/16 v12, 0x1c

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v18, 0x1c

    const/16 v19, 0x8

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x1406

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v5}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v13, 0x10

    const/4 v8, 0x2

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    const/16 v19, 0x18

    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline7;->m(IIIZII)V

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline8;->m(I)V

    invoke-static {v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline10;->m(I)V

    iget v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->particlesCount:I

    invoke-static {v6, v6, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline11;->m(III)V

    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline12;->m()V

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline6;->m(II)V

    invoke-static {v7, v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation$$ExternalSyntheticApiModelOutline6;->m(II)V

    iput-boolean v6, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    iget v1, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->currentBuffer:I

    sub-int/2addr v5, v1

    iput v5, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->currentBuffer:I

    return-void
.end method

.method public isDead()Z
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->time:F

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->longevity:F

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->isPhotoEditor:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const v2, 0x3f666666    # 0.9f

    :goto_0
    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
