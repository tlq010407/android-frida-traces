.class Lorg/telegram/DispatchQueuePriority$PriorityRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/DispatchQueuePriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityRunnable"
.end annotation


# instance fields
.field final priority:I

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;->priority:I

    iput-object p2, p0, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Runnable;Lorg/telegram/DispatchQueuePriority$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;-><init>(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
