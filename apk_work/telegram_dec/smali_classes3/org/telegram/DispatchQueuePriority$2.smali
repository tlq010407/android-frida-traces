.class Lorg/telegram/DispatchQueuePriority$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/DispatchQueuePriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/DispatchQueuePriority;


# direct methods
.method constructor <init>(Lorg/telegram/DispatchQueuePriority;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/DispatchQueuePriority$2;->this$0:Lorg/telegram/DispatchQueuePriority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/DispatchQueuePriority$2;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 2

    .line 0
    instance-of v0, p1, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;

    iget p1, p1, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;->priority:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    instance-of v0, p2, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;

    iget v1, p2, Lorg/telegram/DispatchQueuePriority$PriorityRunnable;->priority:I

    :cond_1
    sub-int/2addr v1, p1

    return v1
.end method
