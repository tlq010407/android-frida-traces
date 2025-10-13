.class Lorg/telegram/ui/Components/RLottieDrawable$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RLottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastUpdate:J

.field final synthetic this$0:Lorg/telegram/ui/Components/RLottieDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$5;->lastUpdate:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_1

    goto/16 :goto_16

    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    :try_start_1
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$300(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$300(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v6, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v6, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v6, v7, v8, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->access$400(JLjava/lang/String;I)V

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$300(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$500(Lorg/telegram/ui/Components/RLottieDrawable;)[I

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$500(Lorg/telegram/ui/Components/RLottieDrawable;)[I

    move-result-object v0

    invoke-static {v6, v7, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$600(J[I)V

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->access$502(Lorg/telegram/ui/Components/RLottieDrawable;[I)[I

    :cond_5
    :try_start_2
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    goto :goto_4

    :cond_6
    if-ne v6, v5, :cond_8

    iget-wide v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->setLastFrame:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondFramesCount:I

    sub-int/2addr v6, v7

    iput v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_14

    :cond_7
    :goto_3
    move-wide v10, v8

    goto :goto_5

    :cond_8
    :goto_4
    iget-wide v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    goto :goto_3

    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$700(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v6, 0x2

    goto :goto_6

    :cond_9
    const/4 v6, 0x1

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v8, :cond_a

    :try_start_3
    iget v10, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    div-int/2addr v10, v6

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v10, v0}, Lorg/telegram/messenger/utils/BitmapsCache;->getFrame(ILandroid/graphics/Bitmap;)I

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache;->needGenCache()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$800(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v10, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v10, v3

    if-eqz v0, :cond_b

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v10, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-wide v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v8, 0x0

    :goto_7
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_a
    iget v12, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iget-object v13, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v14, v0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v15, v0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v16

    const/16 v17, 0x1

    invoke-static/range {v10 .. v17}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move-result v8

    :cond_b
    :goto_8
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    const/4 v10, 0x3

    const/4 v11, -0x1

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache;->needGenCache()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$900(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->access$902(Lorg/telegram/ui/Components/RLottieDrawable;Z)Z

    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v8, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v8}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1000(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$800(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v12, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v12, v3

    if-nez v0, :cond_d

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v8, v8, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v8, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v13, v8, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v14, v13, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->json:Ljava/lang/String;

    iget v15, v8, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v8, v8, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    new-array v2, v10, [I

    iget-object v10, v13, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    iget v13, v13, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v20, v13

    move-object v13, v14

    move v14, v15

    move v15, v8

    move-object/from16 v16, v2

    move-object/from16 v18, v10

    invoke-static/range {v12 .. v20}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v12

    iput-wide v12, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    :cond_d
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v12, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v14, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iget-object v15, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v8, v0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v16, v2

    move/from16 v17, v8

    invoke-static/range {v12 .. v19}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move-result v8

    goto :goto_9

    :cond_e
    const/4 v8, -0x1

    :cond_f
    :goto_9
    if-ne v8, v11, :cond_11

    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_10
    return-void

    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    if-ne v2, v7, :cond_15

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    add-int/2addr v2, v6

    iget v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    if-ne v6, v11, :cond_12

    iget-object v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v6, v6, v9

    :cond_12
    if-ge v2, v6, :cond_13

    goto :goto_b

    :cond_13
    iput v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_14

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iput v5, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1100(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1202(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)Ljava/util/HashMap;

    :goto_a
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_12

    :cond_15
    if-ne v2, v5, :cond_17

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    add-int/2addr v2, v6

    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->secondFramesCount:I

    if-ge v2, v3, :cond_16

    :goto_b
    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    goto/16 :goto_15

    :cond_16
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_c
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    add-int/2addr v2, v7

    goto :goto_10

    :cond_17
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    if-ltz v2, :cond_1c

    iget-boolean v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->playInDirectionOfCustomEndFrame:Z

    if-eqz v3, :cond_1c

    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-le v3, v2, :cond_1a

    sub-int/2addr v3, v6

    if-lt v3, v2, :cond_19

    :cond_18
    :goto_d
    iput v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    goto :goto_11

    :cond_19
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    :goto_e
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    goto/16 :goto_13

    :cond_1a
    add-int/2addr v3, v6

    if-ge v3, v2, :cond_1b

    goto :goto_d

    :cond_1b
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    goto :goto_e

    :cond_1c
    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    add-int/2addr v3, v6

    if-ltz v2, :cond_1d

    goto :goto_f

    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v2, v2, v9

    :goto_f
    if-ge v3, v2, :cond_1e

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_18

    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_c

    :goto_10
    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    goto :goto_15

    :goto_11
    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    goto :goto_15

    :cond_1e
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    if-ne v2, v7, :cond_20

    iput v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iput-boolean v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1100(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1202(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1102(Lorg/telegram/ui/Components/RLottieDrawable;Z)Z

    :cond_1f
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    if-lez v2, :cond_22

    sub-int/2addr v2, v7

    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    goto :goto_15

    :cond_20
    if-ne v2, v5, :cond_21

    iput v9, v0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1100(Lorg/telegram/ui/Components/RLottieDrawable;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1202(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto/16 :goto_a

    :goto_12
    invoke-static {v0, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1102(Lorg/telegram/ui/Components/RLottieDrawable;Z)Z

    goto :goto_15

    :cond_21
    iput-boolean v7, v0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    goto :goto_e

    :goto_13
    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->access$1300(Lorg/telegram/ui/Components/RLottieDrawable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_15

    :goto_14
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_22
    :goto_15
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_23
    return-void

    :cond_24
    :goto_16
    iget-object v0, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_25
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$5;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
