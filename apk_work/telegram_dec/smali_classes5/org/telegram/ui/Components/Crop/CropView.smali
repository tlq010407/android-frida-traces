.class public Lorg/telegram/ui/Components/Crop/CropView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;
.implements Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;,
        Lorg/telegram/ui/Components/Crop/CropView$CropState;,
        Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;
    }
.end annotation


# instance fields
.field private animating:Z

.field public areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

.field private bitmap:Landroid/graphics/Bitmap;

.field protected bitmapRotation:I

.field public bottomPadding:F

.field cropRect:Landroid/graphics/RectF;

.field private cropTransform:Lorg/telegram/ui/Components/Crop/CropTransform;

.field private detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

.field private freeform:Z

.field private hasAspectRatioDialog:Z

.field private imageView:Landroid/widget/ImageView;

.field private inBubbleMode:Z

.field private initialAreaRect:Landroid/graphics/RectF;

.field private isVisible:Z

.field private listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

.field private overlayMatrix:Landroid/graphics/Matrix;

.field private paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

.field private previousAreaRect:Landroid/graphics/RectF;

.field private rotationStartScale:F

.field sizeRect:Landroid/graphics/RectF;

.field public state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

.field private tempMatrix:Landroid/graphics/Matrix;

.field private tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

.field public topPadding:F

.field values:[F

.field private videoEditTextureView:Lorg/telegram/ui/Components/VideoEditTextureView;


# direct methods
.method public static synthetic $r8$lambda$1NKGYVfBBVaegdofp3E1OlzemQM(Lorg/telegram/ui/Components/Crop/CropView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->lambda$showAspectRatioDialog$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$64fQXYtM4fi6TkmrwmtzmrDJuLc(Lorg/telegram/ui/Components/Crop/CropView;F[FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Crop/CropView;->lambda$fillAreaView$0(F[FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MN6rvojmbQPf2atekWB06ZfWvpM(Lorg/telegram/ui/Components/Crop/CropView;F[FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Crop/CropView;->lambda$fitContentInBounds$1(F[FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PtV843RbMPHPO9MBNEeLDSUPcgc(Lorg/telegram/ui/Components/Crop/CropView;[[Ljava/lang/Integer;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView;->lambda$showAspectRatioDialog$3([[Ljava/lang/Integer;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z4FOJOmlDAUX__m7rEDK6hP4220(Lorg/telegram/ui/Components/Crop/CropView;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/Crop/CropView;->lambda$maximize$2(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->values:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->cropRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x44a00000    # 1280.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->sizeRect:Landroid/graphics/RectF;

    instance-of v0, p1, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->inBubbleMode:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->overlayMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->setOnGestureListener(Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;)V

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setListener(Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Crop/CropView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Crop/CropView;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/Crop/CropView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/Crop/CropView;ZZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZZ)V

    return-void
.end method

.method public static editBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Matrix;IIFFFFZLjava/util/ArrayList;Z)V
    .locals 18

    move-object/from16 v0, p4

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p11

    move/from16 v4, p12

    move-object/from16 v5, p14

    const/4 v7, 0x2

    const/4 v9, 0x0

    if-eqz p15, :cond_0

    :try_start_0
    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object/from16 v10, p2

    :goto_1
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    neg-int v13, v13

    div-int/2addr v13, v7

    int-to-float v13, v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    neg-int v14, v14

    div-int/2addr v14, v7

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz p13, :cond_2

    const/high16 v14, -0x40800000    # -1.0f

    invoke-virtual {v12, v14, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    div-float/2addr v13, v11

    invoke-virtual {v12, v13, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v12, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v11, p6

    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v12, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/2addr v11, v7

    int-to-float v11, v11

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    div-int/2addr v13, v7

    int-to-float v13, v13

    invoke-virtual {v12, v11, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v7}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v13, p3

    invoke-virtual {v13, v10, v12, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/io/File;

    move-object/from16 v14, p1

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v13, 0x57

    move-object/from16 v14, p5

    invoke-virtual {v0, v14, v13, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    if-eqz v5, :cond_6

    invoke-virtual/range {p14 .. p14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual/range {p14 .. p14}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_6

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget v15, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget v6, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v6, v6, v16

    add-float/2addr v15, v6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v15, v15, v6

    iget v6, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget v7, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v7, v7, v16

    add-float/2addr v6, v7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    iget v7, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    iget v8, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v8, v8, v9

    const/4 v9, 0x4

    new-array v9, v9, [F

    const/16 v17, 0x0

    aput v15, v9, v17

    const/4 v15, 0x1

    aput v6, v9, v15

    const/4 v6, 0x2

    aput v7, v9, v6

    const/4 v6, 0x3

    aput v8, v9, v6

    invoke-virtual {v12, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/high16 v8, 0x42b40000    # 90.0f

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x43870000    # 270.0f

    cmpl-float v8, v3, v8

    if-nez v8, :cond_4

    :cond_3
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    :cond_4
    iget-byte v8, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v15, 0x1

    if-ne v8, v15, :cond_5

    iget v6, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    int-to-float v7, v1

    mul-float v6, v6, v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v6, v6, v4

    mul-float v6, v6, p9

    iput v6, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    int-to-float v7, v2

    mul-float v6, v6, v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    :goto_3
    div-float/2addr v6, v7

    mul-float v6, v6, v4

    mul-float v6, v6, p9

    goto :goto_4

    :cond_5
    iget v8, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float v8, v8

    int-to-float v15, v1

    div-float/2addr v8, v15

    int-to-float v6, v6

    mul-float v8, v8, v6

    float-to-int v8, v8

    iput v8, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iget v8, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float v8, v8

    int-to-float v0, v2

    div-float/2addr v8, v0

    int-to-float v7, v7

    mul-float v8, v8, v7

    float-to-int v8, v8

    iput v8, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iget v8, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float v8, v8, v15

    div-float/2addr v8, v6

    mul-float v8, v8, v4

    mul-float v8, v8, p9

    iput v8, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iget v6, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    mul-float v6, v6, v0

    goto :goto_3

    :goto_4
    iput v6, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    const/4 v0, 0x0

    aget v6, v9, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float v7, v7, v16

    sub-float/2addr v6, v7

    iput v6, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    const/4 v6, 0x1

    aget v7, v9, v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v7, v6

    iget v6, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float v6, v6, v16

    sub-float/2addr v7, v6

    iput v7, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    const/4 v6, 0x2

    aget v7, v9, v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    const/4 v7, 0x3

    aget v8, v9, v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    iget v8, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-double v8, v8

    add-float v15, p10, v3

    float-to-double v0, v15

    const-wide v15, 0x3f91df46a2529d39L    # 0.017453292519943295

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v15

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v0

    double-to-float v0, v8

    :try_start_1
    iput v0, v14, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    const/4 v0, 0x1

    add-int/2addr v13, v0

    move-object/from16 v0, p4

    move/from16 v1, p7

    const/4 v7, 0x2

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method private fillAreaView(Landroid/graphics/RectF;Z)V
    .locals 9

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    new-array v6, v1, [F

    aput v2, v6, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    mul-float v3, v3, v2

    const/high16 v4, 0x41f00000    # 30.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    div-float/2addr v4, v2

    move v5, v4

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v5, v2

    const/4 v2, 0x0

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->inBubbleMode:Z

    if-nez v3, :cond_2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_2
    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, p2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    mul-float v7, v3, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    sub-float/2addr v4, v8

    add-float/2addr v4, v0

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->topPadding:F

    add-float/2addr v4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v0

    div-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    mul-float v8, v3, v0

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$$ExternalSyntheticLambda0;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Crop/CropView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Crop/CropView;F[FFF)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$3;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/Crop/CropView$3;-><init>(Lorg/telegram/ui/Components/Crop/CropView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->fill(Landroid/graphics/RectF;Landroid/animation/Animator;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fitContentInBounds(ZZZ)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZZ)V

    return-void
.end method

.method private fitContentInBounds(ZZZZ)V
    .locals 14

    .line 0
    move-object v6, p0

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v0

    iget-object v1, v6, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v1

    iget-object v2, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    iget-object v4, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1700(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v5, v7

    invoke-virtual {p0, v0, v1, v4}, Lorg/telegram/ui/Components/Crop/CropView;->calculateBoundingBox(FFF)Landroid/graphics/RectF;

    move-result-object v7

    new-instance v8, Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sub-float/2addr v0, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    sub-float/2addr v1, v3

    div-float/2addr v1, v10

    iget-object v11, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v11}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v11

    iget-object v12, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    invoke-virtual {v12, v8}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->setRect(Landroid/graphics/RectF;)V

    iget-object v12, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v12}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)Landroid/graphics/Matrix;

    move-result-object v12

    div-float/2addr v0, v11

    div-float/2addr v1, v11

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    invoke-virtual {v0, v1, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v0, v12}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    neg-float v12, v12

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    iget-object v1, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->applyMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    neg-float v1, v4

    div-float/2addr v2, v10

    div-float/2addr v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    iget-object v1, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->applyMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->getRect(Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    iget-object v2, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v8, v7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    :cond_1
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0, v7, v8}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v3

    div-float/2addr v1, v3

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_0
    invoke-direct {p0, v8, v7, v0, v5}, Lorg/telegram/ui/Components/Crop/CropView;->fitTranslation(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;F)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_5

    iget v1, v6, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_5

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0, v7, v8}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    mul-float v3, v3, v1

    iget v4, v6, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_4
    :goto_1
    invoke-direct {p0, v8, v11, v1}, Lorg/telegram/ui/Components/Crop/CropView;->fitScale(Landroid/graphics/RectF;FF)F

    move-result v1

    goto :goto_0

    :cond_5
    move v1, v11

    :goto_2
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    sub-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    sub-float v4, v0, v4

    if-eqz p3, :cond_8

    div-float v5, v1, v11

    sub-float v0, v5, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    const/4 v0, 0x3

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Components/Crop/CropView$$ExternalSyntheticLambda1;

    move-object v0, v9

    move-object v1, p0

    move v2, v3

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Crop/CropView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Crop/CropView;F[FFF)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Lorg/telegram/ui/Components/Crop/CropView$4;

    move-object v0, v7

    move/from16 v2, p4

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Crop/CropView$4;-><init>(Lorg/telegram/ui/Components/Crop/CropView;ZZZZ)V

    invoke-virtual {v8, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_7

    const-wide/16 v0, 0x64

    goto :goto_3

    :cond_7
    const-wide/16 v0, 0xc8

    :goto_3
    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_8
    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    iget-object v0, v6, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    div-float/2addr v1, v11

    invoke-static {v0, v1, v9, v9}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fitScale(Landroid/graphics/RectF;FF)F
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v0, v0, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v3

    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    add-float/2addr v0, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float p2, p2, p3

    return p2
.end method

.method private fitTranslation(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;F)V
    .locals 9

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v4, v0

    if-lez v5, :cond_0

    sub-float v0, v4, v0

    add-float/2addr v2, v0

    move v0, v4

    :cond_0
    iget v4, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v4, v1

    if-lez v5, :cond_1

    sub-float v1, v4, v1

    add-float/2addr v3, v1

    move v1, v4

    :cond_1
    iget v4, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v4, v2

    if-gez v5, :cond_2

    sub-float/2addr v4, v2

    add-float/2addr v0, v4

    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, p1, v3

    if-gez v2, :cond_3

    sub-float/2addr p1, v3

    add-float/2addr v1, p1

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, v3

    add-float/2addr v1, p2

    sub-float/2addr v0, v1

    float-to-double v1, p4

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, p1

    double-to-float p4, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, p1

    double-to-float p1, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float p2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v5

    double-to-float v0, v0

    iget v1, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p4

    add-float/2addr v1, p2

    iget p2, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p1

    add-float/2addr p2, v0

    invoke-virtual {p3, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public static getCopy(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_temp.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$fillAreaView$0(F[FFFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float p1, p1, p5

    add-float/2addr p1, v0

    const/4 p5, 0x0

    aget v0, p2, p5

    div-float/2addr p1, v0

    mul-float v0, v0, p1

    aput v0, p2, p5

    iget-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {p2, p1, p3, p4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    return-void
.end method

.method private synthetic lambda$fitContentInBounds$1(F[FFFLandroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    mul-float p1, p1, p5

    const/4 v0, 0x1

    aget v1, p2, v0

    sub-float/2addr p1, v1

    add-float/2addr v1, p1

    aput v1, p2, v0

    mul-float p3, p3, p5

    const/4 v0, 0x2

    aget v1, p2, v0

    sub-float/2addr p3, v1

    add-float/2addr v1, p3

    aput v1, p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    const/4 v1, 0x0

    aget v2, p2, v1

    mul-float p1, p1, v2

    mul-float p3, p3, v2

    invoke-static {v0, p1, p3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p4, p1

    mul-float p4, p4, p5

    add-float/2addr p4, p1

    aget p1, p2, v1

    div-float/2addr p4, p1

    mul-float p1, p1, p4

    aput p1, p2, v1

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    const/4 p2, 0x0

    invoke-static {p1, p4, p2, p2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    return-void
.end method

.method private synthetic lambda$maximize$2(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p8}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/Float;

    invoke-virtual {p8}, Ljava/lang/Float;->floatValue()F

    move-result p8

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    invoke-static {p1, v0, p8, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget p2, p1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p8

    mul-float p3, p3, v0

    sub-float/2addr p2, p3

    iget p3, p1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->y:F

    mul-float p4, p4, v0

    sub-float/2addr p3, p4

    iget p1, p1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    mul-float p5, p5, v0

    sub-float/2addr p1, p5

    invoke-static {p6, p7, p8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget p6, p5, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    div-float/2addr p4, p6

    neg-float p2, p2

    neg-float p3, p3

    invoke-static {p5, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    const/4 p3, 0x0

    invoke-static {p2, p4, p3, p3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    neg-float p1, p1

    invoke-static {p2, p1, p3, p3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    return-void
.end method

.method private synthetic lambda$showAspectRatioDialog$3([[Ljava/lang/Integer;Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z

    if-eqz p3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    add-int/lit8 p3, p3, -0x2

    aget-object p1, p1, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result p3

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    aget-object p2, p1, p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V

    goto :goto_2

    :cond_0
    aget-object p3, p1, v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {p1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result p1

    const/high16 p2, 0x43340000    # 180.0f

    rem-float/2addr p1, p2

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {p1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {p1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result p1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    rem-float/2addr v0, p2

    cmpl-float p2, v0, p3

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {p2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result p2

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {p2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result p2

    :goto_1
    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$showAspectRatioDialog$4(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z

    return-void
.end method

.method private resetRotationStartScale()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    return-void
.end method

.method private setLockedAspectRatio(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->fillAreaView(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onAspectLock(Z)V

    :cond_0
    return-void
.end method

.method private updateCropTransform()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropView;->cropTransform:Lorg/telegram/ui/Components/Crop/CropTransform;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropView;->cropRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->sizeRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v2, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v3

    div-float v3, v2, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v4

    div-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v4, v4, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Lorg/telegram/ui/Components/Crop/CropView;->values:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v5, v4, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    mul-float v5, v5, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1100(Lorg/telegram/ui/Components/Crop/CropView$CropState;)I

    move-result v2

    :goto_0
    if-gez v2, :cond_1

    add-int/lit16 v2, v2, 0x168

    goto :goto_0

    :cond_1
    const/16 v4, 0x5a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v4, v2, Lorg/telegram/ui/Components/Crop/CropView$CropState;->width:F

    float-to-int v4, v4

    iget v2, v2, Lorg/telegram/ui/Components/Crop/CropView$CropState;->height:F

    :goto_1
    float-to-int v2, v2

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v4, v2, Lorg/telegram/ui/Components/Crop/CropView$CropState;->height:F

    float-to-int v4, v4

    iget v2, v2, Lorg/telegram/ui/Components/Crop/CropView$CropState;->width:F

    goto :goto_1

    :goto_3
    int-to-double v6, v1

    int-to-float v1, v4

    mul-float v4, v1, v5

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    double-to-float v4, v6

    int-to-double v6, v3

    int-to-float v2, v2

    mul-float v5, v5, v2

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    double-to-float v3, v6

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    if-gtz v6, :cond_5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    goto :goto_5

    :cond_4
    :goto_4
    move v15, v3

    move v14, v4

    goto :goto_6

    :cond_5
    :goto_5
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v4, v5

    div-float/2addr v3, v5

    goto :goto_4

    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    div-float v4, v1, v2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getTargetRectToFill(F)Landroid/graphics/RectF;

    move-result-object v3

    iget-boolean v4, v0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    goto :goto_7

    :cond_6
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v5, v4, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    div-float v11, v5, v3

    iget v6, v4, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    div-float v12, v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropView;->values:[F

    const/4 v7, 0x2

    aget v7, v6, v7

    div-float/2addr v7, v1

    div-float/2addr v7, v5

    const/4 v1, 0x5

    aget v1, v6, v1

    div-float/2addr v1, v2

    div-float v8, v1, v5

    iget v9, v4, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getTargetRectToFill()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float v16, v2, v4

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterY()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v17, v2, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/Crop/CropView;->cropTransform:Lorg/telegram/ui/Components/Crop/CropTransform;

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->mirrored:Z

    if-nez v2, :cond_8

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    const/4 v6, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v1, 0x1

    const/4 v6, 0x1

    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1100(Lorg/telegram/ui/Components/Crop/CropView$CropState;)I

    move-result v10

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v2, v1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    div-float v13, v2, v3

    iget-boolean v1, v1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->mirrored:Z

    move/from16 v18, v1

    invoke-virtual/range {v5 .. v18}, Lorg/telegram/ui/Components/Crop/CropTransform;->setViewTransform(ZFFFIFFFFFFFZ)V

    :cond_9
    :goto_a
    return-void
.end method


# virtual methods
.method public applyToCropState(Lorg/telegram/messenger/MediaController$CropState;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->cropRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->sizeRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v2

    div-float v2, v1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v3, v3, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->values:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v4, v3, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    mul-float v4, v4, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1100(Lorg/telegram/ui/Components/Crop/CropView$CropState;)I

    move-result v3

    iput v3, p1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set transformRotation = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget v3, p1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    if-gez v3, :cond_1

    add-int/lit16 v3, v3, 0x168

    iput v3, p1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    goto :goto_0

    :cond_1
    const/16 v5, 0x5a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x10e

    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v5, v3, Lorg/telegram/ui/Components/Crop/CropView$CropState;->width:F

    float-to-int v5, v5

    iget v3, v3, Lorg/telegram/ui/Components/Crop/CropView$CropState;->height:F

    :goto_1
    float-to-int v3, v3

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v5, v3, Lorg/telegram/ui/Components/Crop/CropView$CropState;->height:F

    float-to-int v5, v5

    iget v3, v3, Lorg/telegram/ui/Components/Crop/CropView$CropState;->width:F

    goto :goto_1

    :goto_3
    int-to-double v6, v0

    int-to-float v5, v5

    mul-float v8, v5, v4

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    int-to-double v6, v2

    int-to-float v3, v3

    mul-float v4, v4, v3

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    double-to-float v4, v6

    iput v4, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    iget v6, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v6, v7

    if-gtz v8, :cond_4

    cmpl-float v7, v4, v7

    if-lez v7, :cond_5

    :cond_4
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v6, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    div-float/2addr v6, v4

    iput v6, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    iget v6, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    div-float/2addr v6, v4

    iput v6, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v4, v4, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    iget-object v6, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v6

    div-float v6, v5, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v7

    div-float v7, v3, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v4, v4, v6

    iput v4, p1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->values:[F

    const/4 v6, 0x2

    aget v6, v4, v6

    div-float/2addr v6, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v7, v5, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    div-float/2addr v6, v7

    iput v6, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    const/4 v6, 0x5

    aget v4, v4, v6

    div-float/2addr v4, v3

    div-float/2addr v4, v7

    iput v4, p1, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    iget v3, v5, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    iput v3, p1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iput v7, p1, Lorg/telegram/messenger/MediaController$CropState;->stateScale:F

    iget-boolean v3, v5, Lorg/telegram/ui/Components/Crop/CropView$CropState;->mirrored:Z

    iput-boolean v3, p1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    iput v1, p1, Lorg/telegram/messenger/MediaController$CropState;->scale:F

    iget-object v1, v5, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    iput-object v1, p1, Lorg/telegram/messenger/MediaController$CropState;->matrix:Landroid/graphics/Matrix;

    iput v0, p1, Lorg/telegram/messenger/MediaController$CropState;->width:I

    iput v2, p1, Lorg/telegram/messenger/MediaController$CropState;->height:I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    iput-boolean v0, p1, Lorg/telegram/messenger/MediaController$CropState;->freeform:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v0

    iput v0, p1, Lorg/telegram/messenger/MediaController$CropState;->lockedAspectRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/messenger/MediaController$CropState;->initied:Z

    return-void
.end method

.method public calculateBoundingBox(FFF)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    div-float/2addr p2, v2

    invoke-virtual {v1, p3, p1, p2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getActualRect()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->cropRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCropHeight()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v0

    return v0
.end method

.method public getCropLeft()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropLeft()F

    move-result v0

    return v0
.end method

.method public getCropTop()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropTop()F

    move-result v0

    return v0
.end method

.method public getCropWidth()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v0

    return v0
.end method

.method public getCurrentHeight()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->videoEditTextureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmapRotation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getCurrentWidth()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->videoEditTextureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmapRotation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getStateFullOrientation()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->baseRotation:F

    iget v0, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->orientation:F

    add-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getStateMirror()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->mirrored:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStateOrientation()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->orientation:F

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFrameVisibility(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isMirrored()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->mirrored:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeCrop(Lorg/telegram/messenger/MediaController$MediaEditState;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v3, v0, Lorg/telegram/ui/Components/Crop/CropView;->cropRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->cropRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/Crop/CropView;->sizeRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v4

    div-float v4, v3, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v5

    div-float v18, v3, v5

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->paintPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->paintPath:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView;->getCopy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedPaintPath:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedPaintPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iput-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedPaintPath:Ljava/lang/String;

    :cond_1
    iput-object v7, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedPaintPath:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedMediaEntities:Ljava/util/ArrayList;

    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedMediaEntities:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-virtual {v5}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->copy()Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v3, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedMediaEntities:Ljava/util/ArrayList;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v12, v2, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentHeight()I

    move-result v14

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v15, v2, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    iget v3, v2, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1100(Lorg/telegram/ui/Components/Crop/CropView$CropState;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->croppedMediaEntities:Ljava/util/ArrayList;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    move/from16 v16, v3

    move/from16 v17, v2

    move-object/from16 v20, v4

    invoke-static/range {v6 .. v21}, Lorg/telegram/ui/Components/Crop/CropView;->editBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Matrix;IIFFFFZLjava/util/ArrayList;Z)V

    :cond_4
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v2, :cond_5

    new-instance v2, Lorg/telegram/messenger/MediaController$CropState;

    invoke-direct {v2}, Lorg/telegram/messenger/MediaController$CropState;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    :cond_5
    iget-object v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->applyToCropState(Lorg/telegram/messenger/MediaController$CropState;)V

    return-void
.end method

.method public maximize(Z)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v9, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->resetAnimator()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentHeight()I

    move-result v2

    goto :goto_0

    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v5, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->x:F

    iget v6, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->y:F

    iget v8, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    iget v7, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$$ExternalSyntheticLambda4;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/Crop/CropView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Crop/CropView;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v0, p1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->x:F

    neg-float v0, v0

    iget v2, p1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->y:F

    neg-float v2, v2

    invoke-static {p1, v0, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v0, p1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    iget v2, p1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    div-float/2addr v0, v2

    invoke-static {p1, v0, v1, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget v0, p1, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    neg-float v0, v0

    invoke-static {p1, v0, v1, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public mirror()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->mirrored:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->mirrored:Z

    return v0
.end method

.method public onAreaChange()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterY()F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-eqz v3, :cond_0

    invoke-static {v3, v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v2, v2}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    return-void
.end method

.method public onAreaChangeBegan()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    :cond_0
    return-void
.end method

.method public onAreaChangeEnded()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getTargetRectToFill()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->fillAreaView(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public onDrag(FF)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    return-void
.end method

.method public onFling(FFFF)V
    .locals 0

    return-void
.end method

.method public onHide()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->videoEditTextureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->isVisible:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onRotationBegan()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MINOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    :cond_0
    return-void
.end method

.method public onRotationEnded()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    return-void
.end method

.method public onScale(FFF)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    mul-float v0, v0, p1

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {p1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result p1

    div-float p1, v1, p1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->inBubbleMode:Z

    if-nez v0, :cond_2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    mul-float p2, p2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->topPadding:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    sub-float/2addr p3, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v0

    div-float/2addr p3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    mul-float p3, p3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    return-void
.end method

.method public onScrollChangeBegan()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    :cond_1
    return-void
.end method

.method public onScrollChangeEnded()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v2}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    return-void
.end method

.method public onShow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->isVisible:Z

    return-void
.end method

.method public onTapUp()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onTapUp()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->onScrollChangeEnded()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->onScrollChangeBegan()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public reset()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropView;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->resetAnimator()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    const/high16 v7, 0x43340000    # 180.0f

    rem-float/2addr v3, v7

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    invoke-virtual {v0, v1, v2, v3, v7}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setBitmap(IIZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-eqz v0, :cond_2

    invoke-static {v0, v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iput-boolean v5, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->mirrored:Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {p1, v5}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onAspectLock(Z)V

    :cond_3
    return-void
.end method

.method public rotate(F)Z
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->resetAnimator()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    sub-float/2addr v0, v2

    add-float/2addr v0, p1

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v0, p1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(F)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v6}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v6

    add-float/2addr v6, v0

    const/high16 v7, 0x43340000    # 180.0f

    rem-float/2addr v6, v7

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setBitmap(IIZZ)V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    invoke-direct {p0, v2, v1, v1}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz p1, :cond_4

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->mirrored:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {p1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1100(Lorg/telegram/ui/Components/Crop/CropView$CropState;)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float v0, p1

    :cond_0
    return v0
.end method

.method public setAspectRatio(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(F)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IZZLorg/telegram/ui/Components/PaintingOverlay;Lorg/telegram/ui/Components/Crop/CropTransform;Lorg/telegram/ui/Components/VideoEditTextureView;Lorg/telegram/messenger/MediaController$CropState;)V
    .locals 6

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    iput-object p5, p0, Lorg/telegram/ui/Components/Crop/CropView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    iput-object p7, p0, Lorg/telegram/ui/Components/Crop/CropView;->videoEditTextureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iput-object p6, p0, Lorg/telegram/ui/Components/Crop/CropView;->cropTransform:Lorg/telegram/ui/Components/Crop/CropTransform;

    iput p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmapRotation:I

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    if-eqz p7, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    invoke-virtual {p3, p5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setIsVideo(Z)V

    const/4 p3, 0x0

    if-nez p1, :cond_1

    if-nez p7, :cond_1

    iput-object p3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentWidth()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentHeight()I

    move-result p5

    iget-object p6, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-eqz p6, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p6, p1, p5, p2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;III)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/Crop/CropView$CropState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;-><init>(Lorg/telegram/ui/Components/Crop/CropView;IIILorg/telegram/ui/Components/Crop/CropView$1;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/Components/Crop/CropView$2;

    invoke-direct {p4, p0, p8, p5, p1}, Lorg/telegram/ui/Components/Crop/CropView$2;-><init>(Lorg/telegram/ui/Components/Crop/CropView;Lorg/telegram/messenger/MediaController$CropState;II)V

    invoke-virtual {p2, p4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    if-nez p7, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    :cond_4
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_3
    return-void
.end method

.method public setBottomPadding(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setBottomPadding(F)V

    return-void
.end method

.method public setFreeform(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFreeform(Z)V

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    return-void
.end method

.method public setRotation(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1700(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTopPadding(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->topPadding:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setTopPadding(F)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateCropTransform()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFrameVisibility(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showAspectRatioDialog()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    iget-object v8, v0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-boolean v8, v0, Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z

    if-eqz v8, :cond_1

    return-void

    :cond_1
    iput-boolean v7, v0, Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Integer;

    aput-object v9, v11, v5

    aput-object v10, v11, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v12, v6, [Ljava/lang/Integer;

    aput-object v9, v12, v5

    aput-object v10, v12, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v13, v6, [Ljava/lang/Integer;

    aput-object v9, v13, v5

    aput-object v10, v13, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v14, v6, [Ljava/lang/Integer;

    aput-object v9, v14, v5

    aput-object v10, v14, v7

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v15, v6, [Ljava/lang/Integer;

    aput-object v9, v15, v5

    aput-object v10, v15, v7

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v3, v6, [Ljava/lang/Integer;

    aput-object v9, v3, v5

    aput-object v10, v3, v7

    new-array v9, v1, [[Ljava/lang/Integer;

    aput-object v11, v9, v5

    aput-object v12, v9, v7

    aput-object v13, v9, v6

    aput-object v14, v9, v4

    aput-object v15, v9, v2

    const/4 v2, 0x5

    aput-object v3, v9, v2

    sget v2, Lorg/telegram/messenger/R$string;->CropOriginal:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v5

    sget v2, Lorg/telegram/messenger/R$string;->CropSquare:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v7

    const/4 v2, 0x0

    const/4 v3, 0x2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v9, v2

    iget-object v10, v0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    const-string v12, "%d:%d"

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    aget-object v10, v4, v5

    aget-object v4, v4, v7

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v10, v11, v5

    aput-object v4, v11, v7

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    goto :goto_1

    :cond_2
    aget-object v10, v4, v7

    aget-object v4, v4, v5

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v10, v11, v5

    aput-object v4, v11, v7

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    :goto_1
    add-int/2addr v3, v7

    add-int/2addr v2, v7

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/telegram/ui/Components/Crop/CropView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v9}, Lorg/telegram/ui/Components/Crop/CropView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Crop/CropView;[[Ljava/lang/Integer;)V

    invoke-virtual {v1, v8, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v2, Lorg/telegram/ui/Components/Crop/CropView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Crop/CropView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Crop/CropView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method public start(IZZLorg/telegram/ui/Components/Crop/CropTransform;Lorg/telegram/messenger/MediaController$CropState;)V
    .locals 6

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    iput-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->videoEditTextureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iput-object p4, p0, Lorg/telegram/ui/Components/Crop/CropView;->cropTransform:Lorg/telegram/ui/Components/Crop/CropTransform;

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmapRotation:I

    iput-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setIsVideo(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentWidth()I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getCurrentHeight()I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p2, p4, p1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;III)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/Crop/CropView$CropState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;-><init>(Lorg/telegram/ui/Components/Crop/CropView;IIILorg/telegram/ui/Components/Crop/CropView$1;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Components/Crop/CropView$1;

    invoke-direct {p3, p0, p5, p4, p2}, Lorg/telegram/ui/Components/Crop/CropView$1;-><init>(Lorg/telegram/ui/Components/Crop/CropView;Lorg/telegram/messenger/MediaController$CropState;II)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    return-void
.end method

.method public updateLayout()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v5

    div-float/2addr v2, v5

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v2

    div-float/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0, v2, v1, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    :cond_1
    return-void
.end method

.method public updateMatrix()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix(Z)V

    return-void
.end method

.method public updateMatrix(Z)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->overlayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->overlayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    :goto_0
    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->overlayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->overlayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1100(Lorg/telegram/ui/Components/Crop/CropView$CropState;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->overlayMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->overlayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->isVisible:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateCropTransform()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {p1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onUpdate()V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public willShow()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFrameVisibility(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
