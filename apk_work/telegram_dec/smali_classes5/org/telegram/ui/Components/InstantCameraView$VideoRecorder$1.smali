.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;


# direct methods
.method public static synthetic $r8$lambda$1KONpacl8efPrAUMwaSbNYJZkLo(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;D)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->lambda$run$0(D)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(D)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$5400(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, p2, v3

    const/4 v2, 0x1

    aput-object p1, p2, v2

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    new-instance v2, Landroid/media/AudioTimestamp;

    invoke-direct {v2}, Landroid/media/AudioTimestamp;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-wide v8, v5

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_f

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v10

    if-eq v10, v4, :cond_2

    :try_start_0
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 v0, 0x1

    :goto_1
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5000(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_c

    :cond_2
    move v10, v0

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v11, v0

    goto :goto_3

    :catch_1
    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto :goto_2

    :goto_3
    iput v7, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    const/16 v12, 0xa

    iput v12, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_a

    const-wide/16 v14, 0x3e8

    cmp-long v0, v8, v5

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v14

    :cond_4
    iget-object v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v13

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v5

    const/16 v6, 0x800

    invoke-virtual {v5, v0, v6}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-lez v5, :cond_6

    rem-int/lit8 v6, v13, 0x2

    if-nez v6, :cond_6

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-wide/16 v16, 0x0

    const/4 v6, 0x0

    :goto_5
    div-int/lit8 v12, v5, 0x2

    if-ge v6, v12, :cond_5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    mul-int v12, v12, v12

    int-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v16, v16, v14

    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0xa

    const-wide/16 v14, 0x3e8

    goto :goto_5

    :cond_5
    int-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v16, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    new-instance v6, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v14, v15}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;D)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    if-gtz v5, :cond_7

    iput v13, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_a

    iput-boolean v4, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    goto :goto_7

    :cond_7
    if-eqz v3, :cond_8

    :try_start_2
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-static {v0, v2, v7}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioRecord;Landroid/media/AudioTimestamp;I)I

    iget-wide v14, v2, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-wide/from16 v18, v8

    move-wide v8, v14

    move-wide/from16 v14, v18

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    move-wide v14, v8

    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    move-wide v14, v8

    :goto_6
    iget-object v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aput-wide v8, v0, v13

    iget-object v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aput v5, v0, v13

    const v0, 0xf4240

    mul-int v5, v5, v0

    const v0, 0xbb80

    div-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    if-nez v3, :cond_9

    int-to-long v5, v5

    add-long/2addr v14, v5

    :cond_9
    move-wide v8, v14

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v5, -0x1

    const/16 v12, 0xa

    goto/16 :goto_4

    :cond_a
    :goto_7
    iget v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-gez v0, :cond_d

    iget-boolean v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    if-eqz v0, :cond_b

    goto :goto_a

    :cond_b
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    const-wide/16 v5, -0x1

    goto/16 :goto_0

    :cond_c
    :try_start_3
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    nop

    :goto_9
    move v0, v10

    goto :goto_8

    :cond_d
    :goto_a
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    const/16 v5, 0xa

    if-ge v0, v5, :cond_e

    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    move v0, v10

    :goto_b
    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v6

    const/4 v10, 0x3

    invoke-virtual {v6, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    :cond_f
    :goto_c
    :try_start_4
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_d
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$4800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5200(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5000(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I

    move-result v3

    iget-object v5, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$5300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v7, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    return-void
.end method
