.class Lorg/telegram/ui/Components/VideoTimelineView$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/VideoTimelineView;->reloadFrames(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private frameNum:I

.field final synthetic this$0:Lorg/telegram/ui/Components/VideoTimelineView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/VideoTimelineView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 10

    .line 0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {p1}, Lorg/telegram/ui/Components/VideoTimelineView;->access$100(Lorg/telegram/ui/Components/VideoTimelineView;)Landroid/media/MediaMetadataRetriever;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->access$000(Lorg/telegram/ui/Components/VideoTimelineView;)J

    move-result-wide v2

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v5}, Lorg/telegram/ui/Components/VideoTimelineView;->access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v5

    float-to-int v5, v7

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v0, v0, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v8}, Lorg/telegram/ui/Components/VideoTimelineView;->access$200(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v8

    sub-int/2addr v8, v6

    div-int/2addr v8, v4

    iget-object v9, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v9}, Lorg/telegram/ui/Components/VideoTimelineView;->access$300(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v9

    sub-int/2addr v9, v5

    div-int/2addr v9, v4

    invoke-direct {v0, v8, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p1, v7, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, p1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object p1, v1

    :cond_2
    :goto_1
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView$1;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->access$400(Lorg/telegram/ui/Components/VideoTimelineView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->access$500(Lorg/telegram/ui/Components/VideoTimelineView;)I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->frameNum:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/VideoTimelineView;->access$600(Lorg/telegram/ui/Components/VideoTimelineView;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$1;->this$0:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->access$702(Lorg/telegram/ui/Components/VideoTimelineView;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
