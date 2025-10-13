.class public Lorg/telegram/messenger/video/VideoFramesRewinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;
    }
.end annotation


# instance fields
.field private currentFrame:Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

.field private destroyAfterPrepare:Z

.field private final frames:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private final freeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field private isPreparing:Z

.field private lastSeek:J

.field private lastSpeed:F

.field private maxFrameSide:I

.field private maxFramesCount:I

.field private final meta:[I

.field private final paint:Landroid/graphics/Paint;

.field private parentView:Landroid/view/View;

.field private prepareRunnable:Ljava/lang/Runnable;

.field private prepareToMs:J

.field private prepareWithSpeed:F

.field private ptr:J

.field private stop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private until:Ljava/util/concurrent/atomic/AtomicLong;

.field w:I


# direct methods
.method public static synthetic $r8$lambda$Gp5VzuvDbaeLquWZKjlA_BCZs5Q(Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/video/VideoFramesRewinder;->lambda$new$0(Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bvA2FqZic6EBa6TWfLMCKCnBDcY(Lorg/telegram/messenger/video/VideoFramesRewinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$gsXQuVCSPGa8HapsEQavJGKCFkA(Lorg/telegram/messenger/video/VideoFramesRewinder;Ljava/util/ArrayList;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/video/VideoFramesRewinder;->lambda$new$1(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->freeFrames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/TreeSet;

    new-instance v2, Lorg/telegram/messenger/video/VideoFramesRewinder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/messenger/video/VideoFramesRewinder$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->frames:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->until:Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->lastSpeed:F

    new-instance v0, Lorg/telegram/messenger/video/VideoFramesRewinder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoFramesRewinder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/video/VideoFramesRewinder;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->prepareRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->maxFramesCount:I

    const/16 v0, 0x1e0

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->maxFrameSide:I

    goto :goto_1

    :cond_0
    const/16 v0, 0x190

    iput v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->maxFramesCount:I

    const/16 v0, 0x2d0

    goto :goto_0

    :cond_1
    const/16 v0, 0xc8

    iput v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->maxFramesCount:I

    const/16 v0, 0x244

    goto :goto_0

    :goto_1
    return-void
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;)I
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->position:J

    iget-wide p0, p1, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->position:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private synthetic lambda$new$1(Ljava/util/ArrayList;J)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VideoFramesRewinder] total prepare of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VideoFramesRewinder] prepared from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    iget-wide v0, v0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->position:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    iget-wide v0, v0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->position:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms (requested up to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->prepareToMs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    iput-boolean p3, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->isPreparing:Z

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->frames:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->currentFrame:Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    if-eq v1, v0, :cond_1

    iget-wide v1, v0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->position:J

    iget-wide v3, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->lastSeek:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->freeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    iget-object v0, v0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->freeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->frames:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p2

    iget v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->maxFramesCount:I

    if-ge p2, v0, :cond_4

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->frames:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    invoke-virtual {p2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VideoFramesRewinder] prepared "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " more frames than I could fit :("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    iget-boolean p1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->destroyAfterPrepare:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->release()V

    iget-object p1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 39

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    const/4 v5, 0x4

    aget v6, v4, v5

    iget v7, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->w:I

    div-int/2addr v7, v5

    const/4 v8, 0x0

    aget v4, v4, v8

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v7, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->h:I

    div-int/2addr v7, v5

    iget-object v9, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v9, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->maxFrameSide:I

    if-gt v4, v9, :cond_0

    if-le v7, v9, :cond_1

    :cond_0
    int-to-float v9, v9

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v4, v4

    mul-float v4, v4, v9

    float-to-int v4, v4

    int-to-float v7, v7

    mul-float v7, v7, v9

    float-to-int v7, v7

    :cond_1
    iget-wide v9, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->prepareToMs:J

    iget-wide v11, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->ptr:J

    iget v13, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->prepareWithSpeed:F

    const/high16 v14, 0x43af0000    # 350.0f

    mul-float v13, v13, v14

    float-to-long v13, v13

    sub-long v13, v9, v13

    iget-object v15, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekToMs(JJ[IZ)V

    iget-object v9, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    int-to-long v11, v9

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_0
    iget-object v14, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    aget v14, v14, v10

    int-to-long v14, v14

    iget-object v5, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->until:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v17

    cmp-long v5, v14, v17

    if-gtz v5, :cond_8

    iget v5, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->maxFramesCount:I

    if-ge v9, v5, :cond_8

    iget-object v5, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_8

    long-to-float v5, v11

    int-to-float v14, v6

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v15, v14

    iget v14, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->prepareWithSpeed:F

    mul-float v14, v14, v15

    add-float/2addr v5, v14

    move-wide/from16 v17, v11

    float-to-long v10, v5

    iget-object v5, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->freeFrames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->freeFrames:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    goto :goto_1

    :cond_2
    new-instance v5, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    const/4 v12, 0x0

    invoke-direct {v5, v0, v12}, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;-><init>(Lorg/telegram/messenger/video/VideoFramesRewinder;Lorg/telegram/messenger/video/VideoFramesRewinder$1;)V

    :goto_1
    iget-object v12, v5, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ne v12, v4, :cond_3

    iget-object v12, v5, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-eq v12, v7, :cond_4

    :cond_3
    iget-object v12, v5, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :try_start_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v7, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v5, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v12, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    const/4 v14, 0x3

    aget v12, v12, v14

    move/from16 v19, v9

    int-to-long v8, v12

    move v12, v6

    move/from16 v20, v7

    float-to-double v6, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v6, v6

    add-long/2addr v8, v6

    cmp-long v6, v8, v10

    if-gez v6, :cond_5

    iget-wide v6, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->ptr:J

    iget-object v8, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    const/4 v9, 0x4

    aget v14, v8, v9

    int-to-float v9, v14

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-wide/from16 v21, v6

    move-object/from16 v24, v8

    move/from16 v28, v9

    invoke-static/range {v21 .. v29}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFFZ)I

    move v6, v12

    move/from16 v9, v19

    move/from16 v7, v20

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    iget-wide v6, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->ptr:J

    iget-object v8, v5, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;

    iget-object v9, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v34

    iget-object v10, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    int-to-float v10, v10

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v35, 0x1

    move-wide/from16 v30, v6

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move/from16 v37, v10

    invoke-static/range {v30 .. v38}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFFZ)I

    move-result v6

    if-nez v6, :cond_7

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x6

    if-le v13, v5, :cond_6

    goto :goto_4

    :cond_6
    const/4 v7, 0x3

    goto :goto_3

    :cond_7
    iget-object v6, v0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    int-to-long v8, v6

    iput-wide v8, v5, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->position:J

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v17, v8

    :goto_3
    add-int/lit8 v9, v19, 0x1

    move v6, v12

    move-wide/from16 v11, v17

    move/from16 v7, v20

    const/4 v5, 0x4

    const/4 v8, 0x0

    const/4 v10, 0x3

    goto/16 :goto_0

    :catch_0
    const-string v4, "[VideoFramesRewinder] failed to create bitmap: out of memory"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8
    :goto_4
    new-instance v4, Lorg/telegram/messenger/video/VideoFramesRewinder$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/video/VideoFramesRewinder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/video/VideoFramesRewinder;Ljava/util/ArrayList;J)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private prepare(J)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->isPreparing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VideoFramesRewinder] starting preparing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->isPreparing:Z

    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->prepareToMs:J

    iget p1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->lastSpeed:F

    iput p1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->prepareWithSpeed:F

    sget-object p1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->prepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public clearCurrent()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->currentFrame:Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->currentFrame:Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->invalidate()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;II)V
    .locals 5

    iput p2, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->w:I

    iput p3, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->h:I

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->currentFrame:Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->currentFrame:Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    iget-object v0, v0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->currentFrame:Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    iget-object v0, v0, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->currentFrame:Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    iget-object p2, p2, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 5

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->isPreparing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->destroyAfterPrepare:Z

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->ptr:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->ptr:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->destroyAfterPrepare:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->clearCurrent()V

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->until:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->frames:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    iget-object v1, v1, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->frames:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->freeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    iget-object v1, v1, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->freeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public seek(JF)V
    .locals 9

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->lastSeek:J

    iput p3, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->lastSpeed:F

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->until:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->frames:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    iget-wide v5, v4, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->position:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v5, v4, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->position:J

    sub-long/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x41c80000    # 25.0f

    mul-float v6, v6, p3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    iget-object p3, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->currentFrame:Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    if-eq p3, v4, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VideoFramesRewinder] found a frame "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->position:J

    invoke-virtual {p3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms to fit to "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms from "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->frames:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frames"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->currentFrame:Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->invalidate()V

    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[VideoFramesRewinder] also deleted "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frames after this frame"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_1
    if-ltz p1, :cond_5

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr p2, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    long-to-float p2, p2

    cmpl-float p2, p2, v6

    if-lez p2, :cond_4

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/video/VideoFramesRewinder;->prepare(J)V

    return-void

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->frames:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;

    iget-wide p1, p1, Lorg/telegram/messenger/video/VideoFramesRewinder$Frame;->position:J

    const-wide/16 v0, 0x14

    sub-long/2addr p1, v0

    :goto_2
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoFramesRewinder;->prepare(J)V

    return-void

    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VideoFramesRewinder] didn\'t find a frame, wanting to prepare "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->parentView:Landroid/view/View;

    return-void
.end method

.method public setup(Ljava/io/File;)V
    .locals 9

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoFramesRewinder;->release()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->stop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->meta:[I

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoFramesRewinder;->ptr:J

    return-void
.end method
