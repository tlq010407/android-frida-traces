.class Lorg/telegram/ui/PhotoViewer$78;
.super Lorg/telegram/ui/Components/PhotoViewerWebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->initEmbedVideo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/PhotoViewerWebView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$78;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected drawBlackBackground(Landroid/graphics/Canvas;II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$78;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    int-to-float v1, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$78;->rect:Landroid/graphics/Rect;

    add-int/2addr v2, p2

    add-int/2addr v1, p3

    invoke-virtual {v3, p2, p3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$78;->rect:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-virtual {p1, v0, p3, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected processTouch(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
