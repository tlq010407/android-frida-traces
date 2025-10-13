.class public abstract Lorg/telegram/ui/Components/VideoTimelinePlayView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;,
        Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;
    }
.end annotation


# static fields
.field public static TYPE_LEFT:I = 0x0

.field public static TYPE_PROGRESS:I = 0x2

.field public static TYPE_RIGHT:I = 0x1

.field private static final sync:Ljava/lang/Object;


# instance fields
.field bitmapPaint:Landroid/graphics/Paint;

.field private clipPath:Landroid/graphics/Path;

.field private currentMode:I

.field private currentTask:Landroid/os/AsyncTask;

.field private final cutPaint:Landroid/graphics/Paint;

.field private delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

.field private final dimPaint:Landroid/graphics/Paint;

.field private exclusionRects:Ljava/util/ArrayList;

.field private exclustionRect:Landroid/graphics/Rect;

.field private frameHeight:I

.field private frameTimeOffset:J

.field private frameWidth:I

.field private frames:Ljava/util/ArrayList;

.field private framesToLoad:I

.field private final handlePaint:Landroid/graphics/Paint;

.field private hasBlur:Z

.field private lastWidth:I

.field private final loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private maxProgressDiff:F

.field private mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private minProgressDiff:F

.field private playProgress:F

.field private pressDx:F

.field private pressedLeft:Z

.field private pressedPlay:Z

.field private pressedRight:Z

.field private progressLeft:F

.field private progressRight:F

.field private rect3:Landroid/graphics/RectF;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private videoHeight:I

.field private videoLength:J

.field private videoWidth:I

.field private final whitePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->whitePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->shadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->dimPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->cutPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->handlePaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0xc8

    const/4 v6, 0x0

    move-object v5, v0

    move-object v7, p0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x26000000

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x4d000000    # 1.34217728E8f

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 p1, -0x1000000

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/VideoTimelinePlayView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameTimeOffset:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/VideoTimelinePlayView;)Landroid/media/MediaMetadataRetriever;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/VideoTimelinePlayView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/VideoTimelinePlayView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/VideoTimelinePlayView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->reloadFrames(I)V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;FF)V
    .locals 7

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    sub-float/2addr v1, v3

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    sub-float v5, v4, v3

    div-float/2addr v5, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p3

    mul-float v5, v5, v2

    add-float/2addr v3, v5

    sub-float/2addr v4, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x42180000    # 38.0f

    mul-float v5, v5, p3

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->whitePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float p3, p3, v5

    float-to-int p3, p3

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr v0, p3

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 p3, 0x3fc00000    # 1.5f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {p2, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const v1, 0x3f28f5c3    # 0.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p2, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v2, v0, v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p3

    add-float/2addr v0, p3

    invoke-virtual {p2, v2, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private reloadFrames(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoWidth:I

    if-eqz v2, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoHeight:I

    if-eqz v3, :cond_1

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    const v3, 0x3faaaaab

    const/high16 v4, 0x3f100000    # 0.5625f

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    div-float/2addr v3, v5

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    iget-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameTimeOffset:J

    :cond_2
    new-instance v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$1;-><init>(Lorg/telegram/ui/Components/VideoTimelinePlayView;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v0, v4, v1

    const/4 p1, 0x2

    aput-object v0, v4, p1

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public clearFrames()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected abstract customBlur()Z
.end method

.method public destroy()V
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    :cond_3
    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method protected abstract drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
.end method

.method public getLeftProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    return v0
.end method

.method public getLength()J
    .locals 4

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    return v0
.end method

.method public getRightProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    return v0
.end method

.method public invalidateBlur()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->customBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->hasBlur:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v2, v7, v9

    sub-float/2addr v1, v2

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v7

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget v5, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    add-float v11, v2, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v12, v2, v3

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v14, v2

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v15, v14, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentTask:Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float/2addr v1, v7

    invoke-virtual {v2, v7, v14, v1, v15}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->customBlur()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->reloadFrames(I)V

    goto/16 :goto_9

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v4, v7, v1

    invoke-virtual {v2, v7, v14, v4, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->framesToLoad:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->hasBlur:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    iget-object v2, v2, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->hasBlur:Z

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-boolean v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->hasBlur:Z

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->customBlur()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    invoke-virtual {v1, v7, v14, v2, v15}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, v8, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawBlur(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_5
    move/from16 v17, v4

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    goto :goto_4

    :cond_6
    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v17, v4

    move v4, v12

    const/16 v16, 0x0

    move v5, v15

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_4
    const/4 v5, 0x0

    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;

    iget-object v2, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    iget v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->frameWidth:I

    mul-int v2, v2, v16

    int-to-float v2, v2

    add-float/2addr v2, v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    cmpl-float v6, v4, v9

    if-eqz v6, :cond_8

    const v6, 0x3d3b3ee7

    add-float/2addr v4, v6

    iput v4, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_7

    iput v9, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    goto :goto_6

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v9, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->alpha:F

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v6, v6, v9

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->bitmapPaint:Landroid/graphics/Paint;

    :goto_7
    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_8
    iget-object v1, v1, Lorg/telegram/ui/Components/VideoTimelinePlayView$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    :goto_8
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v5, v5, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_a
    const/high16 v1, 0x42380000    # 46.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v7

    move v3, v14

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->dimPaint:Landroid/graphics/Paint;

    move v2, v12

    move/from16 v4, v17

    move v5, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v2, v11, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v3, v12

    invoke-virtual {v1, v2, v14, v3, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->whitePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v3, v14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, v15, v4

    invoke-virtual {v1, v11, v3, v12, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->cutPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v2

    sub-float/2addr v11, v4

    sub-float/2addr v15, v14

    sub-float/2addr v15, v3

    div-float/2addr v15, v2

    add-float/2addr v14, v15

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    sub-float v4, v11, v1

    add-float/2addr v3, v14

    invoke-virtual {v2, v11, v14, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v2, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v12, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    add-float/2addr v1, v12

    invoke-virtual {v2, v12, v14, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->rect3:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_b

    iget v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-direct {v0, v8, v2, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawProgress(Landroid/graphics/Canvas;FF)V

    :cond_b
    iget v2, v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v6, v3, v1

    invoke-direct {v0, v8, v2, v6}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->drawProgress(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p1, p3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclustionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->exclusionRects:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->lastWidth:I

    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->clearFrames()V

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->lastWidth:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

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

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v4, v3

    iget v5, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    mul-float v5, v5, v4

    float-to-int v5, v5

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    iget v7, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    mul-float v8, v8, v4

    float-to-int v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v8, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v9, 0x0

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v11, 0x1

    if-nez v6, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-eq v8, v5, :cond_3

    sub-int v3, v7, v0

    int-to-float v3, v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_3

    add-int/2addr v0, v7

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    cmpl-float v0, v2, v9

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_2

    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    :cond_2
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    int-to-float p1, v7

    :goto_0
    sub-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_3
    sub-int v0, v5, p1

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    add-int v0, v5, p1

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_5

    cmpl-float v0, v2, v9

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_4

    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_LEFT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    :cond_4
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    int-to-float p1, v5

    goto :goto_0

    :cond_5
    sub-int v0, v8, p1

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    add-int/2addr p1, v8

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_7

    cmpl-float p1, v2, v9

    if-ltz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_6

    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    :cond_6
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    int-to-float p1, v8

    goto :goto_0

    :cond_7
    int-to-float p1, v5

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_25

    int-to-float p1, v8

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_25

    cmpl-float p1, v2, v9

    if-ltz p1, :cond_25

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_25

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_8

    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    :cond_8
    iput-boolean v11, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    div-float/2addr v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_9

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onPlayProgressChanged(F)V

    :cond_9
    iput v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v11, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_b

    goto/16 :goto_a

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    if-eqz p1, :cond_f

    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_c

    :goto_2
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_3

    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_d

    goto :goto_2

    :cond_d
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_e

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onPlayProgressChanged(F)V

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_f
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    if-eqz p1, :cond_17

    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-ge p1, v0, :cond_10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_4

    :cond_10
    if-le p1, v8, :cond_11

    goto :goto_4

    :cond_11
    move v8, p1

    :goto_4
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v8, p1

    int-to-float p1, v8

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    sub-float v1, v0, p1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_12

    add-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    goto :goto_5

    :cond_12
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    cmpl-float v2, p1, v9

    if-eqz v2, :cond_13

    cmpg-float v1, v1, p1

    if-gez v1, :cond_13

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    cmpg-float p1, v0, v9

    if-gez p1, :cond_13

    iput v9, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    :cond_13
    :goto_5
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_14

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_6

    :cond_14
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_15

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    :cond_15
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz v0, :cond_16

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onLeftProgressChanged(F)V

    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_17
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    if-eqz p1, :cond_25

    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressDx:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    if-ge p1, v5, :cond_18

    goto :goto_7

    :cond_18
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v3

    if-le p1, v0, :cond_19

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int v5, v3, p1

    goto :goto_7

    :cond_19
    move v5, p1

    :goto_7
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v5, p1

    int-to-float p1, v5

    div-float/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float v1, p1, v0

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1a

    sub-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    goto :goto_8

    :cond_1a
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    cmpl-float v2, p1, v9

    if-eqz v2, :cond_1b

    cmpg-float v1, v1, p1

    if-gez v1, :cond_1b

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1b

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    :cond_1b
    :goto_8
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1c

    goto :goto_9

    :cond_1c
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1d

    :goto_9
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    :cond_1d
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_1e

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v11

    :cond_1f
    :goto_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    if-eqz p1, :cond_21

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_20

    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_LEFT:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    :cond_20
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedLeft:Z

    return v11

    :cond_21
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    if-eqz p1, :cond_23

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_22

    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    :cond_22
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedRight:Z

    return v11

    :cond_23
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_24

    sget v1, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    :cond_24
    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->pressedPlay:Z

    :cond_25
    return v11
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    return-void
.end method

.method public setMaxProgressDiff(F)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->maxProgressDiff:F

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    add-float/2addr v1, p1

    iput v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinProgressDiff(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->minProgressDiff:F

    return-void
.end method

.method public setMode(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->currentMode:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 5

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    const/high16 v1, 0x43700000    # 240.0f

    div-float v0, v1, v0

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->loopProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRightProgress(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_0

    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStartDragging(I)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->onRightProgressChanged(F)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->delegate:Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;

    if-eqz p1, :cond_2

    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_RIGHT:I

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;->didStopDragging(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;FF)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->destroy()V

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    iput p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressLeft:F

    iput p3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->progressRight:F

    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    cmpg-float v2, v1, p2

    if-gez v2, :cond_0

    iput p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    goto :goto_0

    :cond_0
    cmpl-float p2, v1, p3

    if-lez p2, :cond_1

    iput p3, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->playProgress:F

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoLength:J

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 p2, 0x12

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoWidth:I

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoHeight:I

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 p2, 0x18

    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_5

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_6

    :cond_5
    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoWidth:I

    iget p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoHeight:I

    iput p2, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoWidth:I

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->videoHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
