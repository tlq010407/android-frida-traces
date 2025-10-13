.class public Lorg/telegram/messenger/Timer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/Timer$Task;,
        Lorg/telegram/messenger/Timer$Log;
    }
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field pad:I

.field final startTime:J

.field public tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/Timer$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/Timer;->pad:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/Timer;->tasks:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/Timer;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/Timer;->startTime:J

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/telegram/messenger/Timer;
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/Timer;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/Timer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static done(Lorg/telegram/messenger/Timer$Task;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/Timer$Task;->access$000(Lorg/telegram/messenger/Timer$Task;)V

    :cond_0
    return-void
.end method

.method private finish()V
    .locals 6

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/Timer;->startTime:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/Timer;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/Timer;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/Timer;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/Timer;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/Timer$Task;

    iget v3, v3, Lorg/telegram/messenger/Timer$Task;->pad:I

    const/4 v4, 0x0

    :goto_1
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v4, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/Timer;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static finish(Lorg/telegram/messenger/Timer;)V
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/Timer;->finish()V

    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/Timer;->tasks:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/Timer$Log;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/Timer$Log;-><init>(Lorg/telegram/messenger/Timer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static log(Lorg/telegram/messenger/Timer;Ljava/lang/String;)V
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/Timer;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private start(Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/messenger/Timer$Task;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/Timer$Task;-><init>(Lorg/telegram/messenger/Timer;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/messenger/Timer;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static start(Lorg/telegram/messenger/Timer;Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/Timer;->start(Ljava/lang/String;)Lorg/telegram/messenger/Timer$Task;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
