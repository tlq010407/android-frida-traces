.class public Lorg/telegram/messenger/FileLog$ANRDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/FileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ANRDetector"
.end annotation


# instance fields
.field private final TIMEOUT_MS:J

.field private isUIThreadResponsive:Z

.field private final mainHandler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/telegram/messenger/FileLog;


# direct methods
.method public static synthetic $r8$lambda$_-BnewbbfzQ78PVhPUWgvar4WoM(Lorg/telegram/messenger/FileLog$ANRDetector;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLog$ANRDetector;->lambda$new$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g9qvOMTtU09Uo_oKf5aWEauqxUw(Lorg/telegram/messenger/FileLog$ANRDetector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/FileLog$ANRDetector;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/FileLog;Ljava/lang/Runnable;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/FileLog$ANRDetector;->this$0:Lorg/telegram/messenger/FileLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/telegram/messenger/FileLog$ANRDetector;->TIMEOUT_MS:J

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/telegram/messenger/FileLog$ANRDetector;->mainHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/messenger/FileLog$ANRDetector;->isUIThreadResponsive:Z

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/FileLog$ANRDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/FileLog$ANRDetector$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FileLog$ANRDetector;Ljava/lang/Runnable;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/FileLog$ANRDetector;->isUIThreadResponsive:Z

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Runnable;)V
    .locals 2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/FileLog$ANRDetector;->isUIThreadResponsive:Z

    iget-object v0, p0, Lorg/telegram/messenger/FileLog$ANRDetector;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/FileLog$ANRDetector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLog$ANRDetector$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/FileLog$ANRDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLog$ANRDetector;->isUIThreadResponsive:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
