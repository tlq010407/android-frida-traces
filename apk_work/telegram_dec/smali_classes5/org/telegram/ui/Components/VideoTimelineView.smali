.class public Lorg/telegram/ui/Components/VideoTimelineView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;,
        Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;
    }
.end annotation


# static fields
.field private static final sync:Ljava/lang/Object;


# instance fields
.field private final backgroundGrayPaint:Landroid/graphics/Paint;

.field private currentTask:Landroid/os/AsyncTask;

.field private delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

.field private frameHeight:I

.field private frameTimeOffset:J

.field private frameWidth:I

.field private frames:Ljava/util/ArrayList;

.field private framesLoaded:Z

.field private framesToLoad:I

.field private isRoundFrames:Z

.field private keyframes:Ljava/util/ArrayList;

.field private maxProgressDiff:F

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private minProgressDiff:F

.field private final paint2:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private pressDx:F

.field private pressedLeft:Z

.field private pressedRight:Z

.field private progressLeft:F

.field private progressRight:F

.field private rect1:Landroid/graphics/Rect;

.field private rect2:Landroid/graphics/Rect;

.field private roundCornerBitmap:Landroid/graphics/Bitmap;

.field private roundCornersSize:I

.field thumbPaint:Landroid/graphics/Paint;

.field private timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

.field useClip:Z

.field private videoLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->backgroundGrayPaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x7f000000

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView;->updateColors()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoTimelineView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoTimelineView;)Landroid/media/MediaMetadataRetriever;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/VideoTimelineView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/VideoTimelineView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/VideoTimelineView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    return-void
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/VideoTimelineView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesLoaded:Z

    return p1
.end method

.method private drawCorners(Landroid/graphics/Canvas;IIII)V
    .locals 7

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    shr-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, p4

    int-to-float v3, p5

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int v1, p4, v0

    int-to-float v1, v1

    add-int/2addr p2, p5

    sub-int v5, p2, v0

    int-to-float v5, v5

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v6, v1, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    sub-int v6, p2, v6

    int-to-float v6, v6

    invoke-virtual {p1, v1, v2, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-int/2addr p4, p3

    sub-int p3, p4, v0

    int-to-float p3, p3

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p1, v1, p3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    sub-int v5, p4, v2

    int-to-float v5, v5

    sub-int/2addr p2, v2

    int-to-float p2, p2

    invoke-virtual {p1, v1, v5, p2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-int/2addr p5, v0

    int-to-float p2, p5

    const/high16 p5, 0x42b40000    # 90.0f

    invoke-virtual {p1, p5, p3, p2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornerBitmap:Landroid/graphics/Bitmap;

    iget p3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    sub-int/2addr p4, p3

    int-to-float p3, p4

    invoke-virtual {p1, p2, p3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private reloadFrames(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    const/high16 v4, 0x41800000    # 16.0f

    if-eqz v3, :cond_1

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    goto :goto_0

    :cond_1
    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameHeight:I

    div-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    :goto_0
    iget-wide v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    iget v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameTimeOffset:J

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesToLoad:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    float-to-int v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v0, p1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesLoaded:Z

    new-instance v3, Lorg/telegram/ui/Components/VideoTimelineView$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/VideoTimelineView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelineView;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object p1, v5, v1

    aput-object v0, v5, v2

    const/4 p1, 0x2

    aput-object v0, v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public clearFrames()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy(Z)V

    return-void
.end method

.method public destroy(Z)V
    .locals 3

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/VideoTimelineView;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    :cond_5
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public getLeftProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->useClip:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v6, v1, v3

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v7, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v9, v0, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->currentTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->framesLoaded:Z

    if-nez v0, :cond_2

    int-to-float v2, v9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->backgroundGrayPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->frameWidth:I

    if-eqz v2, :cond_3

    div-int/lit8 v3, v3, 0x2

    :cond_3
    mul-int v3, v3, v0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect2:Landroid/graphics/Rect;

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v2, v3, v9, v5, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect1:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    int-to-float v2, v3

    int-to-float v3, v9

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    int-to-float v8, v9

    int-to-float v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v6, v0

    int-to-float v1, v0

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v2, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v6, v0

    int-to-float v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v1, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v9

    int-to-float v2, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v7, v0

    int-to-float v3, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView;->thumbPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->useClip:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    mul-int/lit8 v1, v9, 0x2

    sub-int v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/VideoTimelineView;->drawCorners(Landroid/graphics/Canvas;IIII)V

    :goto_2
    return-void

    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->useClip:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->useClip:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->path:Landroid/graphics/Path;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->path:Landroid/graphics/Path;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float p1, v2

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->path:Landroid/graphics/Path;

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v5, v3

    iget v6, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float v6, v6, v5

    float-to-int v6, v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float v8, v8, v5

    float-to-int v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v9, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int v3, v6, p1

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_3

    add-int v3, v6, p1

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_3

    cmpl-float v3, v2, v12

    if-ltz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStartDragging()V

    :cond_2
    iput-boolean v13, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    int-to-float p1, v6

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    long-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setTime(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v6, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v6, v0

    int-to-float v0, v6

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setCx(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v13}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v13

    :cond_3
    sub-int v3, v8, p1

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_5

    add-int/2addr p1, v8

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_5

    cmpl-float p1, v2, v12

    if-ltz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStartDragging()V

    :cond_4
    iput-boolean v13, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    int-to-float p1, v8

    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    long-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setTime(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v8, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v8, v0

    int-to-float v0, v8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setCx(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v13}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v13

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v13, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_17

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    const/high16 v2, 0x41800000    # 16.0f

    if-eqz p1, :cond_d

    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-ge p1, v0, :cond_8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_0

    :cond_8
    if-le p1, v8, :cond_9

    goto :goto_0

    :cond_9
    move v8, p1

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v8, p1

    int-to-float p1, v8

    div-float/2addr p1, v5

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    sub-float v1, v0, p1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_a

    add-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    goto :goto_1

    :cond_a
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    cmpl-float v2, p1, v12

    if-eqz v2, :cond_b

    cmpg-float v1, v1, p1

    if-gez v1, :cond_b

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    cmpg-float p1, v0, v12

    if-gez p1, :cond_b

    iput v12, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    :cond_b
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float v5, v5, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    add-float/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v5, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v5, v0

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setCx(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    long-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setTime(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v13}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_c

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v13

    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz p1, :cond_17

    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    if-ge p1, v6, :cond_e

    goto :goto_2

    :cond_e
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v3

    if-le p1, v0, :cond_f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int v6, v3, p1

    goto :goto_2

    :cond_f
    move v6, p1

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v6, p1

    int-to-float p1, v6

    div-float/2addr p1, v5

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float v1, p1, v0

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_10

    sub-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    goto :goto_3

    :cond_10
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    cmpl-float v2, p1, v12

    if-eqz v2, :cond_11

    cmpg-float v1, v1, p1

    if-gez v1, :cond_11

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_11

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    :cond_11
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float v5, v5, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    add-float/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v5, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v5, v0

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setCx(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v13}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J

    long-to-float v0, v0

    div-float/2addr v0, v11

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setTime(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_12

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v13

    :cond_13
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStopDragging()V

    :cond_14
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedLeft:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    return v13

    :cond_15
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_16

    invoke-interface {p1}, Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;->didStopDragging()V

    :cond_16
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->pressedRight:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show(Z)V

    return v13

    :cond_17
    :goto_5
    return v0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->delegate:Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;

    return-void
.end method

.method public setKeyframes(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->keyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setMaxProgressDiff(F)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->maxProgressDiff:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    add-float/2addr v1, p1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinProgressDiff(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->minProgressDiff:F

    return-void
.end method

.method public setRoundFrames(Z)V
    .locals 4

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->isRoundFrames:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {p1, v1, v0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect1:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->rect2:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public setTimeHintView(Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy(Z)V

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressLeft:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->progressRight:F

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->videoLength:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->backgroundGrayPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->roundCornersSize:I

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView;->timeHintView:Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->updateColors()V

    :cond_0
    return-void
.end method
