.class public Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatchQueuePool"
.end annotation


# instance fields
.field pointer:I

.field public final pool:[Lorg/telegram/messenger/DispatchQueue;

.field final size:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->size:I

    new-array p1, p1, [Lorg/telegram/messenger/DispatchQueue;

    iput-object p1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->pool:[Lorg/telegram/messenger/DispatchQueue;

    return-void
.end method

.method synthetic constructor <init>(ILorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getNextQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->pointer:I

    iget v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->size:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->pointer:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->pool:[Lorg/telegram/messenger/DispatchQueue;

    iget v1, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->pointer:I

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    new-instance v2, Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draw_background_queue_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable$DispatchQueuePool;->pointer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    :cond_1
    return-object v2
.end method
