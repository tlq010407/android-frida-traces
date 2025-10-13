.class Lorg/telegram/ui/Components/AnimatedFileDrawable$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedFileDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v8

    iget-object v6, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v9

    iget-object v6, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v10

    iget-object v6, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const/16 v8, 0xf

    cmp-long v9, v6, v2

    if-nez v9, :cond_1

    iget-object v6, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-boolean v7, v6, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v7, :cond_0

    invoke-static {v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v6

    if-le v6, v8, :cond_1

    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-static {v0, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3302(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_3

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v5

    const/16 v6, 0xf00

    if-gt v0, v6, :cond_2

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v4

    if-le v0, v6, :cond_3

    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iput-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v6, :cond_5

    iget-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v9, v6, v2

    if-nez v9, :cond_5

    iget-object v6, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3408(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v6

    if-le v6, v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v6, 0x1

    :goto_2
    invoke-static {v0, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3002(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    :cond_6
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    const/4 v7, 0x3

    if-eqz v6, :cond_d

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_3
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    if-nez v2, :cond_9

    new-instance v2, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    invoke-direct {v2}, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3802(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    iget v2, v2, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;->frame:I

    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v5, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v5, v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    invoke-virtual {v3, v0, v5}, Lorg/telegram/messenger/utils/BitmapsCache;->getFrame(Landroid/graphics/Bitmap;Lorg/telegram/messenger/utils/BitmapsCache$Metadata;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    iget-object v5, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v6, v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    iget v6, v6, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;->frame:I

    if-ge v6, v2, :cond_a

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2502(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    :cond_a
    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v2

    iget-object v5, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v6, v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

    iget v6, v6, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;->frame:I

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v8

    const/4 v9, 0x4

    aget v8, v8, v9

    iget-object v9, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v9, v9, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    invoke-virtual {v9}, Lorg/telegram/messenger/utils/BitmapsCache;->getFrameCount()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v8, v4

    const/16 v4, 0x10

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int v6, v6, v4

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1802(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    move-result v4

    aput v4, v2, v7

    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    invoke-virtual {v2}, Lorg/telegram/messenger/utils/BitmapsCache;->needGenCache()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_b
    if-ne v0, v3, :cond_c

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_4

    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_d
    iget-wide v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v0, v8, v2

    if-nez v0, :cond_f

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v5

    if-eqz v0, :cond_f

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v4

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v5

    if-lez v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_11

    :try_start_1
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v6

    aget v6, v6, v5

    int-to-float v6, v6

    iget-object v8, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v8

    mul-float v6, v6, v8

    float-to-int v6, v6

    iget-object v8, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v8

    aget v8, v8, v4

    int-to-float v8, v8

    iget-object v9, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v9

    mul-float v8, v8, v9

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_6
    invoke-static {v0, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :goto_7
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_8
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v0

    aget-object v0, v0, v5

    if-nez v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v0

    new-instance v6, Landroid/graphics/BitmapShader;

    iget-object v8, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v8, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    aput-object v6, v0, v5

    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-ltz v0, :cond_13

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v2

    long-to-int v3, v2

    aput v3, v0, v7

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v10

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const-wide/16 v5, -0x1

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$302(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->reset()V

    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v12

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekToMs(JJ[IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x1

    goto :goto_9

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :cond_13
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3802(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-wide v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v11

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v14

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v15

    const/16 v16, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v16}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFFZ)I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v7

    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v2

    if-ge v0, v2, :cond_15

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2502(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    :cond_15
    if-eqz v5, :cond_16

    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v2

    aget v2, v2, v7

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2702(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    :cond_16
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v2

    aget v2, v2, v7

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1802(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_17
    :goto_b
    iget-object v0, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$4100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
