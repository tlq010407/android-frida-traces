.class public Lorg/telegram/ui/Components/ThanosEffect;
.super Landroid/view/TextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;,
        Lorg/telegram/ui/Components/ThanosEffect$ToSet;
    }
.end annotation


# static fields
.field private static nothanos:Ljava/lang/Boolean;


# instance fields
.field public destroyed:Z

.field private drawThread:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

.field private final frameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final toSet:Ljava/util/ArrayList;

.field private whenDone:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/ThanosEffect$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ThanosEffect$1;-><init>(Lorg/telegram/ui/Components/ThanosEffect;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect;->whenDone:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    new-instance p1, Lorg/telegram/ui/Components/ThanosEffect$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ThanosEffect$2;-><init>(Lorg/telegram/ui/Components/ThanosEffect;)V

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThanosEffect;->drawThread:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ThanosEffect;Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect;->drawThread:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ThanosEffect;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2402(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    sput-object p0, Lorg/telegram/ui/Components/ThanosEffect;->nothanos:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ThanosEffect;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThanosEffect;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ThanosEffect;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThanosEffect;->whenDone:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/ThanosEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect;->whenDone:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ThanosEffect;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect;->destroy()V

    return-void
.end method

.method private destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->destroyed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->whenDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect;->whenDone:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect;->ensureRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static ensureRunOnUIThread(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public static supports()Z
    .locals 3

    sget-object v0, Lorg/telegram/ui/Components/ThanosEffect;->nothanos:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "nothanos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/ThanosEffect;->nothanos:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ThanosEffect;->nothanos:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public animate(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->drawThread:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->animate(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/ThanosEffect$ToSet;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ThanosEffect$ToSet;-><init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public animate(Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->drawThread:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->animate(Landroid/view/View;FLjava/lang/Runnable;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;

    invoke-direct {v0, p1, p3}, Lorg/telegram/ui/Components/ThanosEffect$ToSet;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    iput p2, v0, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->durationMultiplier:F

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public animate(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->drawThread:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1, p2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->animate(Landroid/view/View;FLjava/lang/Runnable;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/ThanosEffect$ToSet;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Components/ThanosEffect$ToSet;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public animateGroup(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->drawThread:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->animateGroup(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect;->frameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/ThanosEffect$ToSet;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Components/ThanosEffect$ToSet;-><init>(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public cancel(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;

    iget-object v3, v2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->view:Landroid/view/View;

    const/4 v4, 0x1

    if-ne v3, p1, :cond_1

    iget-object v1, v2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->doneCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect;->ensureRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, v2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->doneCallback:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->drawThread:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->cancel(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public kill()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->destroyed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$ToSet;

    iget-object v3, v1, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->doneCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lorg/telegram/ui/Components/ThanosEffect;->ensureRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->doneCallback:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->toSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->drawThread:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->kill()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect;->whenDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect;->whenDone:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect;->ensureRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public scroll(II)V
    .locals 0

    return-void
.end method
