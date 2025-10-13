.class Lorg/telegram/ui/Components/ThanosEffect$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThanosEffect;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ThanosEffect;


# direct methods
.method public static synthetic $r8$lambda$scakWPo6IV3nBS27IQdMjOoB6k8(Lorg/telegram/ui/Components/ThanosEffect;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ThanosEffect$2;->lambda$onSurfaceTextureAvailable$0(Lorg/telegram/ui/Components/ThanosEffect;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ThanosEffect;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onSurfaceTextureAvailable$0(Lorg/telegram/ui/Components/ThanosEffect;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ThanosEffect;->access$500(Lorg/telegram/ui/Components/ThanosEffect;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect;->access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThanosEffect;->access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->kill()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ThanosEffect;->access$002(Lorg/telegram/ui/Components/ThanosEffect;Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    new-instance v7, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    new-instance v3, Lorg/telegram/ui/Components/ThanosEffect$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ThanosEffect$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ThanosEffect;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    new-instance v4, Lorg/telegram/ui/Components/ThanosEffect$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/ThanosEffect$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ThanosEffect;)V

    move-object v1, v7

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;-><init>(Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;II)V

    invoke-static {v0, v7}, Lorg/telegram/ui/Components/ThanosEffect;->access$002(Lorg/telegram/ui/Components/ThanosEffect;Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/EmuDetector;->with(Landroid/content/Context;)Lorg/telegram/messenger/EmuDetector;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/EmuDetector;->detect()Z

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->access$102(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->access$200(Lorg/telegram/ui/Components/ThanosEffect;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThanosEffect;->access$200(Lorg/telegram/ui/Components/ThanosEffect;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThanosEffect;->access$200(Lorg/telegram/ui/Components/ThanosEffect;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;

    iget-object p3, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p3}, Lorg/telegram/ui/Components/ThanosEffect;->access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->startCallback:Ljava/lang/Runnable;

    iget-object p2, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->doneCallback:Ljava/lang/Runnable;

    invoke-virtual {p3, v0, v1, v2, p2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->animate(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object p3, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->views:Ljava/util/ArrayList;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p3}, Lorg/telegram/ui/Components/ThanosEffect;->access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->views:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->doneCallback:Ljava/lang/Runnable;

    invoke-virtual {p3, v0, p2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->animateGroup(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p3}, Lorg/telegram/ui/Components/ThanosEffect;->access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->view:Landroid/view/View;

    iget v1, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->durationMultiplier:F

    iget-object p2, p2, Lorg/telegram/ui/Components/ThanosEffect$ToSet;->doneCallback:Ljava/lang/Runnable;

    invoke-virtual {p3, v0, v1, p2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->animate(Landroid/view/View;FLjava/lang/Runnable;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->access$200(Lorg/telegram/ui/Components/ThanosEffect;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThanosEffect;->access$300(Lorg/telegram/ui/Components/ThanosEffect;)Landroid/view/Choreographer$FrameCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_4
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->kill()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ThanosEffect;->access$002(Lorg/telegram/ui/Components/ThanosEffect;Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->access$400(Lorg/telegram/ui/Components/ThanosEffect;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->access$400(Lorg/telegram/ui/Components/ThanosEffect;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ThanosEffect;->access$402(Lorg/telegram/ui/Components/ThanosEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->ensureRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$2;->this$0:Lorg/telegram/ui/Components/ThanosEffect;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect;->access$000(Lorg/telegram/ui/Components/ThanosEffect;)Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->resize(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
