.class public Lorg/telegram/messenger/Timer$Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation


# instance fields
.field endTime:J

.field pad:I

.field final startTime:J

.field final task:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/messenger/Timer;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/Timer;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/Timer$Task;->this$0:Lorg/telegram/messenger/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/Timer$Task;->endTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/Timer$Task;->startTime:J

    iput-object p2, p0, Lorg/telegram/messenger/Timer$Task;->task:Ljava/lang/String;

    iget p2, p1, Lorg/telegram/messenger/Timer;->pad:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lorg/telegram/messenger/Timer;->pad:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/Timer$Task;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/Timer$Task;->done()V

    return-void
.end method

.method private done()V
    .locals 5

    iget-wide v0, p0, Lorg/telegram/messenger/Timer$Task;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/Timer$Task;->this$0:Lorg/telegram/messenger/Timer;

    iget v1, v0, Lorg/telegram/messenger/Timer;->pad:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/telegram/messenger/Timer;->pad:I

    iput v1, p0, Lorg/telegram/messenger/Timer$Task;->pad:I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/Timer$Task;->endTime:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/Timer$Task;->task:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/messenger/Timer$Task;->endTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const-string v1, "not done"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lorg/telegram/messenger/Timer$Task;->endTime:J

    iget-wide v4, p0, Lorg/telegram/messenger/Timer$Task;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
