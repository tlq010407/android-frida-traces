.class public abstract Lorg/telegram/ui/Components/VideoSeekPreviewImage;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoSeekPreviewImage$VideoSeekPreviewImageDelegate;,
        Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;
    }
.end annotation


# instance fields
.field private bitmapPaint:Landroid/graphics/Paint;

.field private bitmapRect:Landroid/graphics/RectF;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private bitmapToDraw:Landroid/graphics/Bitmap;

.field private bitmapToRecycle:Landroid/graphics/Bitmap;

.field private currentPixel:I

.field private delegate:Lorg/telegram/ui/Components/VideoSeekPreviewImage$VideoSeekPreviewImageDelegate;

.field private downloadingStoryBoardMapFilename:Ljava/lang/String;

.field private downloadingStoryboardMapDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private drawStoryBoard:Z

.field private dstR:Landroid/graphics/RectF;

.field private duration:J

.field private fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field private frameDrawable:Landroid/graphics/drawable/Drawable;

.field private frameTime:Ljava/lang/String;

.field private isQualities:Z

.field private isYoutube:Z

.field private lastPosition:D

.field private listeningCurrentAccount:I

.field private loadRunnable:Ljava/lang/Runnable;

.field private matrix:Landroid/graphics/Matrix;

.field private open:Z

.field private paint:Landroid/graphics/Paint;

.field private pendingProgress:F

.field private pixelWidth:I

.field private progressRunnable:Ljava/lang/Runnable;

.field private ready:Z

.field private storyBoardFrameHeight:I

.field private storyBoardFrameWidth:I

.field private storyBoardMap:Ljava/util/ArrayList;

.field private storyBoardMapDocId:J

.field private storyBoardPictureDocId:J

.field private storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final textPaint:Landroid/text/TextPaint;

.field private timeWidth:I

.field private videoUri:Landroid/net/Uri;

.field private webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

.field private ytImageHeight:I

.field private ytImageWidth:I

.field private ytImageX:I

.field private ytImageY:I

.field private final ytPath:Landroid/graphics/Path;


# direct methods
.method public static synthetic $r8$lambda$02Cm8QagMtYNq50fbeSJacDhip8(Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;)D
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lambda$parseStoryBoardMap$3(Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$BUfAnkZKbHUTGuULDFfB2ubvXMo(Lorg/telegram/ui/Components/VideoSeekPreviewImage;Lorg/telegram/ui/Components/VideoPlayer$VideoUri;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lambda$open$5(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CgE_K99XVf8dX0hpbnPDycgtUgc(Lorg/telegram/ui/Components/VideoSeekPreviewImage;FJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lambda$setProgress$2(FJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$L4EDpPX2yEfJabAI5RVkzzBF6p4(Lorg/telegram/ui/Components/VideoSeekPreviewImage;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$M1MyWmANlZYRYsRY70kLvFirAsM(Lorg/telegram/ui/Components/VideoSeekPreviewImage;Landroid/net/Uri;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lambda$open$7(Landroid/net/Uri;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O10n_NdmNzuG2vZ7LpoMAhHWv4Q(Lorg/telegram/ui/Components/VideoSeekPreviewImage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lambda$open$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$TD9ZdTUJ9cXjYOKDoPHfdwvsdKc(Lorg/telegram/ui/Components/VideoSeekPreviewImage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lambda$open$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$ki_w1uMAMmT7QDPD0-7E-FHTQhw(Lorg/telegram/ui/Components/VideoSeekPreviewImage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lambda$close$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$x5YWD-yWIv9zlVmKosc2cNdTMc4(Lorg/telegram/ui/Components/VideoSeekPreviewImage;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lambda$setProgress$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoSeekPreviewImage$VideoSeekPreviewImageDelegate;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->currentPixel:I

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->textPaint:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->dstR:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapRect:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->matrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytPath:Landroid/graphics/Path;

    iput v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->listeningCurrentAccount:I

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$drawable;->videopreview:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->frameDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 p1, 0x41500000    # 13.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->delegate:Lorg/telegram/ui/Components/VideoSeekPreviewImage$VideoSeekPreviewImageDelegate;

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p2, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/VideoSeekPreviewImage;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    return-void
.end method

.method public static findDocumentById(Lorg/telegram/messenger/MessageObject;J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 5

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static findDocumentByMimeType(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 3

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method private synthetic lambda$close$8()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->pendingProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 9

    if-eqz p2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x43160000    # 150.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lastPosition:D

    double-to-int v0, v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getYoutubeStoryboardImageCount(I)I

    move-result p2

    int-to-float v0, p2

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x5

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    iget-wide v4, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lastPosition:D

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getYoutubeStoryboardImageIndex(I)I

    move-result v0

    sub-int/2addr p2, p4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    div-int/lit8 v0, p2, 0x5

    rem-int/2addr p2, v1

    int-to-float p2, p2

    mul-float p2, p2, v3

    float-to-int p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageX:I

    int-to-float p2, v0

    mul-float p2, p2, v2

    float-to-int p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageY:I

    float-to-int p2, v3

    iput p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageWidth:I

    float-to-int p2, v2

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageHeight:I

    goto :goto_5

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;

    if-nez p2, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_2
    iget-wide v1, v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;->pts:D

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p4

    if-ne p2, v3, :cond_3

    const-wide v3, 0x4197d783fc000000L    # 9.9999999E7

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;

    iget-wide v3, v3, Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;->pts:D

    :goto_3
    iget-wide v5, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lastPosition:D

    cmpl-double v7, v5, v1

    if-ltz v7, :cond_4

    cmpg-double v1, v5, v3

    if-gtz v1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_8

    iget p2, v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;->left:I

    iput p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageX:I

    iget p2, v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;->top:I

    iput p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageY:I

    iget p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardFrameWidth:I

    iput p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageWidth:I

    iget p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardFrameHeight:I

    goto :goto_0

    :goto_5
    iput-boolean p4, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->drawStoryBoard:Z

    iget p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageWidth:I

    int-to-float p2, p2

    iget p4, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageHeight:I

    int-to-float p4, p4

    div-float/2addr p2, p4

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p4, p2, p4

    if-lez p4, :cond_6

    int-to-float p4, p1

    div-float/2addr p4, p2

    float-to-int p2, p4

    goto :goto_6

    :cond_6
    int-to-float p4, p1

    mul-float p4, p4, p2

    float-to-int p2, p4

    move v8, p2

    move p2, p1

    move p1, v8

    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget v0, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, p1, :cond_7

    iget v0, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, p2, :cond_8

    :cond_7
    iput p1, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    nop

    :cond_8
    return-void
.end method

.method private synthetic lambda$open$4()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->open:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->loadRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ready:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->delegate:Lorg/telegram/ui/Components/VideoSeekPreviewImage$VideoSeekPreviewImageDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$VideoSeekPreviewImageDelegate;->onReady()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$open$5(Lorg/telegram/ui/Components/VideoPlayer$VideoUri;Lorg/telegram/messenger/MessageObject;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v15}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    goto/16 :goto_6

    :cond_0
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :try_start_0
    iget-object v0, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    const-string v4, "account"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v15, v3

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    const-string v4, "rid"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoader;->getParentObject(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v12, v0

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    iget-object v10, v2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v10, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_1
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_4

    :goto_5
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v7, v10, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v17}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :goto_6
    iget-object v0, v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getDurationMs()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->duration:J

    iget v0, v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->pendingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2

    iget v3, v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->pixelWidth:I

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v0, v3}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->setProgress(Lorg/telegram/messenger/MessageObject;FI)V

    iput v2, v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->pendingProgress:F

    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/VideoSeekPreviewImage;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$open$6()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->open:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->loadRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ready:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->delegate:Lorg/telegram/ui/Components/VideoSeekPreviewImage$VideoSeekPreviewImageDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$VideoSeekPreviewImageDelegate;->onReady()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$open$7(Landroid/net/Uri;Lorg/telegram/messenger/MessageObject;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const-string v3, "rid"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->getParentObject(I)Ljava/lang/Object;

    move-result-object v11

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    const-string v2, "hash"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-string v2, "size"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-string v2, "dc"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v2, "reference"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    const-string v3, "name"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v9, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :goto_1
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v6, v9, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v16}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v15, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v2, v15

    move-object/from16 v17, v15

    move-object v15, v1

    invoke-direct/range {v2 .. v15}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    move-object/from16 v1, v17

    iput-object v1, v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getDurationMs()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->duration:J

    iget v1, v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->pendingProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->pixelWidth:I

    move-object/from16 v4, p2

    invoke-virtual {v0, v4, v1, v3}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->setProgress(Lorg/telegram/messenger/MessageObject;FI)V

    iput v2, v0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->pendingProgress:F

    :cond_2
    new-instance v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/VideoSeekPreviewImage;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$parseStoryBoardMap$3(Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;)D
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;->pts:D

    return-wide v0
.end method

.method private synthetic lambda$setProgress$1(Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToDraw:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToRecycle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToDraw:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToRecycle:Landroid/graphics/Bitmap;

    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToDraw:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToDraw:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v1, p1

    if-lez p1, :cond_2

    int-to-float p1, v0

    div-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    int-to-float p1, v0

    mul-float p1, p1, v1

    float-to-int p1, p1

    move v3, v0

    move v0, p1

    move p1, v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v0, :cond_3

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p1, :cond_4

    :cond_3
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->progressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$setProgress$2(FJ)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->pendingProgress:F

    return-void

    :cond_0
    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/16 v0, 0xc8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le p3, v0, :cond_1

    int-to-float p3, p3

    int-to-float v1, p1

    div-float/2addr p3, v1

    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int p3, v0

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float p3, p3

    div-float/2addr p3, v0

    float-to-int p3, p3

    move v4, p3

    move p3, p1

    move p1, v4

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p3, v1}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->dstR:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p3, p3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->dstR:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v1

    goto :goto_1

    :catchall_0
    move-object p2, v0

    :cond_2
    :goto_1
    new-instance p1, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/VideoSeekPreviewImage;Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private listen(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->listeningCurrentAccount:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->listeningCurrentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->listeningCurrentAccount:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->loadRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->loadRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->progressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->progressRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->resetStream(Z)V

    :cond_2
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/VideoSeekPreviewImage;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToDraw:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->currentPixel:I

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->videoUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ready:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->open:Z

    iget-wide v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMapDocId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    iput-wide v4, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMapDocId:J

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryBoardMapFilename:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryboardMapDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->listen(I)V

    :cond_3
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    iget-object p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryBoardMapFilename:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryboardMapDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->parseStoryBoardMap(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_2

    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryBoardMapFilename:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryBoardMapFilename:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryboardMapDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->listen(I)V

    :cond_2
    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ready:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToRecycle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToRecycle:Landroid/graphics/Bitmap;

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->drawStoryBoard:Z

    const/high16 v1, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytPath:Landroid/graphics/Path;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageHeight:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->ytImageY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToDraw:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapToDraw:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapRect:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->frameDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->frameDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->frameTime:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->timeWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public open(Lorg/telegram/messenger/MessageObject;Landroid/net/Uri;)V
    .locals 2

    .line 0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->videoUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->open:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->isQualities:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->videoUri:Landroid/net/Uri;

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/VideoSeekPreviewImage;Landroid/net/Uri;Lorg/telegram/messenger/MessageObject;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)V
    .locals 2

    .line 0
    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->videoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->open:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->close()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->isQualities:Z

    iget-object v0, p2, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->videoUri:Landroid/net/Uri;

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/VideoSeekPreviewImage;Lorg/telegram/ui/Components/VideoPlayer$VideoUri;Lorg/telegram/messenger/MessageObject;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/VideoPlayer;)V
    .locals 9

    .line 0
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_9

    move-object v3, v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getQualitiesCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->getQuality(I)Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/VideoPlayer$Quality;->uris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v6

    invoke-virtual {v5}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v7

    if-ne v6, v7, :cond_1

    iget v6, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v7, v5, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v6, v6, v7

    iget v7, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->width:I

    iget v8, v3, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->height:I

    mul-int v7, v7, v8

    if-ge v6, v7, :cond_1

    :cond_3
    move-object v3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentQuality()Lorg/telegram/ui/Components/VideoPlayer$Quality;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer$Quality;->getDownloadUri()Lorg/telegram/ui/Components/VideoPlayer$VideoUri;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->close()V

    return-void

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer$VideoUri;->isCached()Z

    :cond_8
    invoke-virtual {p0, p1, v3}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/VideoPlayer$VideoUri;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p2}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_a
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->open(Lorg/telegram/messenger/MessageObject;Landroid/net/Uri;)V

    :goto_2
    const-string p2, "application/x-tgstoryboardmap"

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->findDocumentByMimeType(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    if-nez p2, :cond_b

    const-wide/16 v3, 0x0

    goto :goto_3

    :cond_b
    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    :goto_3
    iget-wide v5, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMapDocId:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_e

    iput-wide v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMapDocId:J

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    const/4 v0, -0x1

    if-eqz p2, :cond_d

    iget v3, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryBoardMapFilename:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryboardMapDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->listen(I)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->parseStoryBoardMap(Ljava/io/File;)V

    goto :goto_4

    :cond_c
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryBoardMapFilename:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryboardMapDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->listen(I)V

    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, p2, p1, v2, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    goto :goto_4

    :cond_d
    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryBoardMapFilename:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryboardMapDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->listen(I)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->parseStoryBoardMap(Ljava/io/File;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public parseStoryBoardMap(Ljava/io/File;)V
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v8, "file=mtproto:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0xd

    if-eqz v8, :cond_2

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    const-string v8, "frame_width="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v6, 0xc

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_3
    const-string v8, "frame_height="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_4
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    new-instance v8, Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;

    aget-object v9, v7, v2

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    aget-object v7, v7, v12

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v8, v9, v10, v11, v7}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$StoryBoardFrame;-><init>(DII)V

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v1, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingDouble(Lj$/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-wide v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardPictureDocId:J

    iput v6, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardFrameWidth:I

    iput v5, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardFrameHeight:I

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    :goto_2
    return-void
.end method

.method public setProgress(Lorg/telegram/messenger/MessageObject;FI)V
    .locals 12

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->isYoutube:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardPictureDocId:J

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->findDocumentById(Lorg/telegram/messenger/MessageObject;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->duration:J

    long-to-float v0, v3

    mul-float v0, v0, p2

    float-to-double v3, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lastPosition:D

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, p1

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->drawStoryBoard:Z

    if-eqz p3, :cond_2

    iput p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->pixelWidth:I

    int-to-float p3, p3

    mul-float p3, p3, p2

    float-to-int p3, p3

    div-int/lit8 p3, p3, 0x5

    iget v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->currentPixel:I

    if-ne v0, p3, :cond_1

    return-void

    :cond_1
    iput p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->currentPixel:I

    :cond_2
    iget-wide v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->duration:J

    long-to-float p3, v2

    mul-float p3, p3, p2

    float-to-long v2, p3

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    long-to-int p3, v4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->frameTime:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p3, v4

    iput p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->timeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->progressRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_3

    sget-object p3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->fileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->resetStream(Z)V

    :cond_5
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p2, v2, v3}, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/VideoSeekPreviewImage;FJ)V

    iput-object p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setProgressForYouTube(Lorg/telegram/ui/Components/PhotoViewerWebView;FI)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->webView:Lorg/telegram/ui/Components/PhotoViewerWebView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->isYoutube:Z

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMapDocId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMapDocId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryBoardMapFilename:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->downloadingStoryboardMapDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardMap:Ljava/util/ArrayList;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->listen(I)V

    :cond_0
    if-eqz p3, :cond_2

    iput p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->pixelWidth:I

    int-to-float p3, p3

    mul-float p3, p3, p2

    float-to-int p3, p3

    div-int/lit8 p3, p3, 0x5

    iget v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->currentPixel:I

    if-ne v0, p3, :cond_1

    return-void

    :cond_1
    iput p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->currentPixel:I

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p2

    float-to-long v0, p3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p3, v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->frameTime:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    iput p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->timeWidth:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p3, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->progressRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_3

    sget-object p3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getVideoDuration()I

    move-result p3

    int-to-float p3, p3

    mul-float p2, p2, p3

    float-to-double p2, p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v0

    iput-wide p2, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->lastPosition:D

    double-to-int p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/PhotoViewerWebView;->getYoutubeStoryboard(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->storyBoardsReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    :cond_4
    return-void
.end method
