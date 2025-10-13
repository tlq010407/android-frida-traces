.class public abstract Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;
    }
.end annotation


# static fields
.field public static queuePool:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;


# instance fields
.field attachedToWindow:Z

.field backgroundBitmap:Landroid/graphics/Bitmap;

.field backgroundCanvas:Landroid/graphics/Canvas;

.field private final backgroundQueue:Lorg/telegram/messenger/DispatchQueue;

.field bitmap:Landroid/graphics/Bitmap;

.field bitmapCanvas:Landroid/graphics/Canvas;

.field private final bitmapCreateTask:Ljava/lang/Runnable;

.field private bitmapUpdating:Z

.field private currentLayerNum:I

.field private currentOpenedLayerFlags:I

.field error:Z

.field frameGuid:I

.field height:I

.field private lastFrameId:I

.field needSwapBitmaps:Z

.field padding:I

.field private paint:Landroid/graphics/Paint;

.field protected paused:Z

.field private reset:Z

.field public final threadIndex:I

.field uiFrameRunnable:Ljava/lang/Runnable;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentLayerNum:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$1;-><init>(Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapCreateTask:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$2;-><init>(Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->uiFrameRunnable:Ljava/lang/Runnable;

    sget-object v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->queuePool:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;-><init>(ILorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$1;)V

    sput-object v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->queuePool:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->queuePool:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->getNextQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->backgroundQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->queuePool:Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;

    iget v0, v0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->pointer:I

    iput v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapUpdating:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->recycleBitmaps()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->lastFrameId:I

    return p0
.end method

.method private recycleBitmaps()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->backgroundCanvas:Landroid/graphics/Canvas;

    iput-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    iget p2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentLayerNum:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x200

    if-ne p2, p3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    const/4 p3, 0x2

    if-lt p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentOpenedLayerFlags:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentOpenedLayerFlags:I

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->paused:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->paused:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onPaused()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    if-ne p1, p2, :cond_4

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    iget p2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentLayerNum:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p2, p3, :cond_4

    iget p2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentOpenedLayerFlags:I

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentOpenedLayerFlags:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->paused:Z

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->paused:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onResume()V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;JIIF)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->error:Z

    if-eqz v0, :cond_1

    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p2, :cond_0

    int-to-float v3, p4

    int-to-float v4, p5

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->DEBUG_RED:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iput p5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->height:I

    iput p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->width:I

    iget-boolean p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->needSwapBitmaps:Z

    const/4 p5, 0x0

    if-eqz p4, :cond_2

    iput-boolean p5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->needSwapBitmaps:Z

    iget-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->backgroundCanvas:Landroid/graphics/Canvas;

    iput-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapCanvas:Landroid/graphics/Canvas;

    iput-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->backgroundCanvas:Landroid/graphics/Canvas;

    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset:Z

    if-eqz v1, :cond_7

    :cond_3
    iput-boolean p5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset:Z

    if-eqz p4, :cond_4

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    const/4 p4, 0x0

    iput-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    :cond_4
    iget p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->height:I

    iget v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->padding:I

    add-int/2addr p4, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, p4, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->width:I

    if-eq v1, v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4, p5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :cond_6
    :goto_0
    iget p5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->width:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p5, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance p4, Landroid/graphics/Canvas;

    iget-object p5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p4, p5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapCanvas:Landroid/graphics/Canvas;

    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    iget-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapCanvas:Landroid/graphics/Canvas;

    iget p5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->padding:I

    int-to-float p5, p5

    invoke-virtual {p4, v0, p5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p4, p6}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->drawInUiThread(Landroid/graphics/Canvas;F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    iget-boolean p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapUpdating:Z

    if-nez p4, :cond_8

    iget-boolean p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->paused:Z

    if-nez p4, :cond_8

    const/4 p4, 0x1

    iput-boolean p4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapUpdating:Z

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->prepareDraw(J)V

    iget p2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->frameGuid:I

    iput p2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->lastFrameId:I

    iget-object p2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->backgroundQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p3, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapCreateTask:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_9

    iget-object p3, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->paint:Landroid/graphics/Paint;

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float p6, p6, p4

    float-to-int p4, p6

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p3, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->padding:I

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p3, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method

.method protected drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public abstract drawInBackground(Landroid/graphics/Canvas;)V
.end method

.method protected abstract drawInUiThread(Landroid/graphics/Canvas;F)V
.end method

.method public onAttachToWindow()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->attachedToWindow:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->attachedToWindow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->error:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/NotificationCenter;->getCurrentHeavyOperationFlags()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentLayerNum:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentOpenedLayerFlags:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->paused:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->paused:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onResume()V

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->attachedToWindow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmapUpdating:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->recycleBitmaps()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->attachedToWindow:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onFrameReady()V
    .locals 0

    return-void
.end method

.method public onPaused()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public abstract prepareDraw(J)V
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset:Z

    iget v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->frameGuid:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->frameGuid:I

    iget-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setLayerNum(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentLayerNum:I

    iget-boolean p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->attachedToWindow:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/NotificationCenter;->getCurrentHeavyOperationFlags()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentLayerNum:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->currentOpenedLayerFlags:I

    :cond_0
    return-void
.end method
