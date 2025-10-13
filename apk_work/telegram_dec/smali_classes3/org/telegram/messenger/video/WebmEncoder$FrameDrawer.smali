.class public Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/WebmEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameDrawer"
.end annotation


# instance fields
.field private final H:I

.field private final W:I

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private final fps:I

.field private final mediaEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field path:Landroid/graphics/Path;

.field private final photo:Landroid/graphics/Bitmap;

.field textColorPaint:Landroid/graphics/Paint;

.field xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->mediaEntities:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->clearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->bitmapPaint:Landroid/graphics/Paint;

    iget v1, p1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultWidth:I

    iput v1, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->W:I

    iget v4, p1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultHeight:I

    iput v4, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->H:I

    iget v5, p1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->framerate:I

    iput v5, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->fps:I

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->clipPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v4, v4

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v7, 0x3e000000    # 0.125f

    mul-float v1, v1, v7

    mul-float v4, v4, v7

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v1, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, p1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->videoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->photo:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-byte v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    if-ne v4, v2, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->initTextEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->clearPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->W:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->H:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    return-void
.end method

.method private applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V
    .locals 7

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    iget v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    :cond_1
    iget v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->path:Landroid/graphics/Path;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->path:Landroid/graphics/Path;

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->xRefPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->xRefPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->xRefPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v3, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    mul-float v0, v0, v3

    iget-object v3, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v0, v0, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    if-eqz p3, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->textColorPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->textColorPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->textColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float v4, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float v5, p1

    iget-object v6, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->textColorPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private drawEntity(Landroid/graphics/Canvas;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;IJ)V
    .locals 9

    iget-wide v0, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-object v3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget v4, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    if-lez v4, :cond_2

    iget v5, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    if-gtz v5, :cond_0

    goto :goto_1

    :cond_0
    iget p4, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int v2, p4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    iget-object p4, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    iget-byte p5, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p0, p2, p4, p3}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V

    iget-object p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    iget-object p4, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->matrix:Landroid/graphics/Matrix;

    iget-object p5, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget p1, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    iget p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr p1, p3

    iput p1, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    iget-object p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    aget p3, p3, v8

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_8

    const/4 p1, 0x0

    iput p1, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    goto :goto_5

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p3, :cond_5

    iget p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int p4, p3

    iget p5, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    add-float/2addr p3, p5

    iput p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    float-to-int p3, p3

    :goto_2
    if-eq p4, p3, :cond_4

    iget-object p5, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame(Z)Landroid/graphics/Bitmap;

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_4
    iget-object p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_8

    iget-object p2, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->matrix:Landroid/graphics/Matrix;

    iget-object p4, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_5
    iget-object p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    :goto_3
    iget-object p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v8, p3, :cond_8

    iget-object p3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v2, p3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    iget v3, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->drawEntity(Landroid/graphics/Canvas;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;IJ)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    return-void
.end method

.method private initStickerEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v3, v0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->W:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    iget v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v4, v0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->H:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    const/high16 v4, 0x44000000    # 512.0f

    const/16 v5, 0x200

    if-le v2, v5, :cond_0

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    mul-float v3, v3, v4

    float-to-int v2, v3

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    iput v5, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    :cond_0
    iget v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    if-le v2, v5, :cond_1

    iget v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    mul-float v3, v3, v4

    float-to-int v2, v3

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    iput v5, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    :cond_1
    iget-byte v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    iget v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    if-lez v2, :cond_3

    iget v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    if-gtz v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    new-array v9, v2, [I

    iput-object v9, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    iget-object v5, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    iget v7, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    iget v8, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v13}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    iget-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->fps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    goto/16 :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_5

    iput-boolean v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->looped:Z

    new-instance v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v7, Ljava/io/File;

    iget-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v17, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/16 v20, 0x200

    const/16 v21, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x200

    move-object v6, v2

    invoke-direct/range {v6 .. v21}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFps()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->fps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    iput v5, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    iget-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame(Z)Landroid/graphics/Bitmap;

    iget-byte v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    iput-boolean v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->firstSeek:Z

    goto/16 :goto_1

    :cond_5
    iget-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-byte v6, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_6

    iget-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->segmentedPath:Ljava/lang/String;

    :cond_6
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-byte v7, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_7
    invoke-static {v2, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    iget-byte v6, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v8, :cond_9

    if-eqz v2, :cond_9

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v5, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v6, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    iget-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget v5, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    float-to-double v5, v5

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v9

    double-to-float v5, v5

    iput v5, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x5a

    rem-int/2addr v2, v8

    if-ne v2, v4, :cond_8

    iget v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float v5, v4, v7

    add-float/2addr v2, v5

    iget v5, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v6, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->W:I

    int-to-float v8, v8

    mul-float v4, v4, v8

    iget v9, v0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->H:I

    int-to-float v9, v9

    div-float/2addr v4, v9

    mul-float v6, v6, v9

    div-float/2addr v6, v8

    iput v6, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr v6, v7

    sub-float/2addr v2, v6

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    div-float/2addr v4, v7

    sub-float/2addr v5, v4

    iput v5, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    :cond_8
    iget-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->applyRoundRadius(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Landroid/graphics/Bitmap;I)V

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v5

    if-lez v3, :cond_a

    iget v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v2, v3, v2

    iget v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    sub-float/2addr v3, v2

    div-float/2addr v3, v7

    add-float/2addr v4, v3

    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    goto :goto_1

    :cond_a
    cmpg-float v3, v2, v5

    if-gez v3, :cond_b

    iget v3, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float v2, v2, v3

    iget v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    sub-float/2addr v3, v2

    div-float/2addr v3, v7

    add-float/2addr v4, v3

    iput v4, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    :cond_b
    :goto_1
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->setupMatrix(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    return-void
.end method

.method private initTextEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    .locals 16

    move-object/from16 v9, p1

    new-instance v10, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v12, 0x0

    iput-boolean v12, v10, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v10, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    int-to-float v0, v0

    invoke-virtual {v10, v12, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    new-instance v13, Landroid/text/SpannableString;

    iget-object v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-direct {v13, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    iget-object v0, v15, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v0}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    iput-object v0, v15, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-object v1, v15, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->documentAbsolutePath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    iget-byte v1, v15, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->subType:B

    iput-byte v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    new-instance v8, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer$1;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object v7, v10

    move-object v11, v8

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer$1;-><init>(Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;JFLandroid/graphics/Paint$FontMetricsInt;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;)V

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v1, v15, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v1, v0

    const/16 v2, 0x21

    invoke-interface {v13, v11, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {v13, v0, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v1, v12, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    const v4, 0x3f59999a    # 0.85f

    iput v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget v0, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    const/16 v0, 0x13

    goto :goto_2

    :cond_4
    const/16 v0, 0x15

    goto :goto_2

    :cond_5
    const/16 v0, 0x11

    :goto_2
    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v2, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    if-eq v2, v1, :cond_6

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_6
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x2

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v2, 0x3

    goto :goto_4

    :cond_9
    const/4 v2, 0x4

    :goto_4
    invoke-virtual {v10, v2}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    const/high16 v2, 0x10000000

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    or-int/lit16 v2, v2, 0x4000

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setInputType(I)V

    const/16 v2, 0x17

    if-lt v0, v2, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->setBreakStrategy(Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    :goto_5
    iget-byte v2, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    const/4 v4, -0x1

    const/high16 v5, -0x1000000

    if-nez v2, :cond_c

    iget v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    iget v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const v2, 0x3f389375    # 0.721f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_b

    const/high16 v4, -0x1000000

    :cond_b
    invoke-virtual {v10, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_8

    :cond_c
    const/high16 v6, 0x3e800000    # 0.25f

    const/4 v7, 0x1

    if-ne v2, v7, :cond_e

    iget v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_d

    const/high16 v4, -0x67000000

    goto :goto_6

    :cond_d
    const v4, -0x66000001

    goto :goto_6

    :cond_e
    if-ne v2, v1, :cond_10

    iget v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_f

    const/high16 v4, -0x1000000

    :cond_f
    :goto_6
    invoke-virtual {v10, v4}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    :goto_7
    iget v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_8

    :cond_10
    if-ne v2, v3, :cond_11

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    goto :goto_7

    :cond_11
    :goto_8
    iget v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v10, v1, v2}, Landroid/view/View;->measure(II)V

    iget v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v2, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-virtual {v10, v12, v12, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v2, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v9, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->setupMatrix(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    return-void
.end method

.method private setupMatrix(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
    .locals 5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v2, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_1
    iget-byte v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-byte v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->matrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_2
    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->matrix:Landroid/graphics/Matrix;

    iget v1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v2, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->W:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iget v3, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->H:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->matrix:Landroid/graphics/Matrix;

    iget v1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v2, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->W:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v3, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->H:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->matrix:Landroid/graphics/Matrix;

    iget v1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v1, v1

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double v1, v1, v3

    double-to-float v1, v1

    iget v2, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v3, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->W:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget p1, p1, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr p1, v4

    add-float/2addr v3, p1

    iget p1, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->H:I

    int-to-float p1, p1

    mul-float v3, v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->photo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    int-to-long v0, p2

    iget p2, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->fps:I

    int-to-long v2, p2

    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v4, v2

    mul-long v0, v0, v4

    iget-object p2, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget v9, v8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    move-object v6, p0

    move-object v7, p1

    move-wide v10, v0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/video/WebmEncoder$FrameDrawer;->drawEntity(Landroid/graphics/Canvas;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setBreakStrategy(Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/messenger/video/TextureRenderer$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/EditText;I)V

    return-void
.end method
