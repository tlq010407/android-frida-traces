.class Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoThumbsLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;
    }
.end annotation


# instance fields
.field private final bitmapPaint:Landroid/graphics/Paint;

.field private clipPath:Landroid/graphics/Path;

.field private count:I

.field private destroyed:Z

.field private duration:J

.field private volatile frameHeight:I

.field private volatile frameIterator:J

.field private volatile frameWidth:I

.field private final frames:Ljava/util/ArrayList;

.field private final isRound:Z

.field private loading:Z

.field private metadataRetriever:Landroid/media/MediaMetadataRetriever;

.field private nextFrame:J

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/TimelineView;


# direct methods
.method public static synthetic $r8$lambda$9K4AYLRuT-BZEZczPCTrBTN79SI(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->retrieveFrame()V

    return-void
.end method

.method public static synthetic $r8$lambda$JbTeNLP-qwiIhALjx2qv6bO24E8(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->lambda$retrieveFrame$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fteXkXvoy6bA9L1ywK_hhKALubA(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;Ljava/lang/String;Ljava/lang/Long;JJIJILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->lambda$new$0(Ljava/lang/String;Ljava/lang/Long;JJIJILjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/TimelineView;ZLjava/lang/String;IILjava/lang/Long;JJJLjava/lang/Runnable;)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    iput-object v0, v13, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->this$0:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v13, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, v13, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->loading:Z

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v13, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->bitmapPaint:Landroid/graphics/Paint;

    move/from16 v0, p2

    iput-boolean v0, v13, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->isRound:Z

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, v13, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    sget-object v14, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v15, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move/from16 v8, p5

    move-wide/from16 v9, p7

    move/from16 v11, p4

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;Ljava/lang/String;Ljava/lang/Long;JJIJILjava/lang/Runnable;)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->count:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Long;JJIJILjava/lang/Runnable;)V
    .locals 14

    move-object v1, p0

    move/from16 v2, p7

    move-wide/from16 v3, p8

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->this$0:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxScrollDuration()J

    move-result-wide v5

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    move-object v8, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->duration:J

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v8, 0x0

    goto :goto_4

    :cond_0
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v8, 0x12

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v0

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    :try_start_1
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v9, 0x13

    invoke-virtual {v0, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_2
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v9, 0x18

    invoke-virtual {v0, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v9, 0x5a

    if-eq v0, v9, :cond_4

    const/16 v9, 0x10e

    if-ne v0, v9, :cond_3

    goto :goto_5

    :cond_3
    :goto_3
    move v13, v8

    move v8, v7

    move v7, v13

    goto :goto_5

    :goto_4
    const/4 v9, 0x0

    iput-object v9, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    :goto_5
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->duration:J

    :cond_5
    const-wide/16 v9, -0x1

    cmp-long v0, p3, v9

    if-eqz v0, :cond_6

    cmp-long v0, p5, v9

    if-eqz v0, :cond_6

    sub-long v5, p5, p3

    :cond_6
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    int-to-float v0, v7

    int-to-float v7, v8

    div-float/2addr v0, v7

    goto :goto_6

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_6
    const v7, 0x3faaaaab

    const/high16 v8, 0x3f100000    # 0.5625f

    invoke-static {v0, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    const/4 v7, 0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v0, v11

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-float v0, v7

    long-to-float v2, v3

    div-float/2addr v0, v2

    move/from16 v2, p10

    int-to-float v2, v2

    mul-float v0, v0, v2

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->count:I

    long-to-float v2, v5

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameIterator:J

    iget-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameIterator:J

    neg-long v2, v2

    iput-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->nextFrame:J

    cmp-long v0, p3, v9

    if-eqz v0, :cond_8

    iget-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameIterator:J

    sub-long v2, p3, v2

    iput-wide v2, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->nextFrame:J

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->load()V

    if-eqz p11, :cond_9

    invoke-static/range {p11 .. p11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$retrieveFrame$1(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->receiveFrame(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private receiveFrame(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->loading:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->destroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->loading:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->this$0:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private retrieveFrame()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->nextFrame:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameHeight:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v3

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v3

    sub-float/2addr v8, v9

    div-float/2addr v8, v7

    float-to-int v8, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v3

    add-float/2addr v9, v10

    div-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v3

    add-float/2addr v10, v11

    div-float/2addr v10, v7

    float-to-int v3, v10

    invoke-direct {v5, v6, v8, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->isRound:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->clipPath:Landroid/graphics/Path;

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->clipPath:Landroid/graphics/Path;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->clipPath:Landroid/graphics/Path;

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    iget v10, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameHeight:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v6, v8, v9, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    new-instance v0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->destroyed:Z

    sget-object v0, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$BitmapFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->duration:J

    return-wide v0
.end method

.method public getFrameWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameWidth:I

    return v0
.end method

.method public load()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->loading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->metadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->count:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->loading:Z

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->nextFrame:J

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->frameIterator:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;->nextFrame:J

    sget-object v0, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    sget-object v0, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/TimelineView$VideoThumbsLoader;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
