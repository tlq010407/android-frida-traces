.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/messenger/Timer$Task;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroidx/collection/LongSparseArray;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Lorg/telegram/messenger/Timer;

.field public final synthetic f$8:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$9:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/messenger/Timer$Task;Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;JJLandroidx/collection/LongSparseArray;ZLorg/telegram/messenger/Timer;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$1:Lorg/telegram/messenger/Timer$Task;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;

    iput-wide p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$3:J

    iput-wide p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$4:J

    iput-object p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$5:Landroidx/collection/LongSparseArray;

    iput-boolean p9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$6:Z

    iput-object p10, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$7:Lorg/telegram/messenger/Timer;

    iput-object p11, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$8:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p12, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$9:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 15

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$1:Lorg/telegram/messenger/Timer$Task;

    iget-object v3, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;

    iget-wide v4, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$3:J

    iget-wide v6, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$4:J

    iget-object v8, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$5:Landroidx/collection/LongSparseArray;

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$6:Z

    iget-object v10, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$7:Lorg/telegram/messenger/Timer;

    iget-object v11, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$8:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v12, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda240;->f$9:Ljava/lang/Runnable;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-static/range {v1 .. v14}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$n0AviKEgcAKPuz-oBw50u_SI0RY(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/messenger/Timer$Task;Lorg/telegram/tgnet/TLRPC$TL_messages_getScheduledMessages;JJLandroidx/collection/LongSparseArray;ZLorg/telegram/messenger/Timer;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
