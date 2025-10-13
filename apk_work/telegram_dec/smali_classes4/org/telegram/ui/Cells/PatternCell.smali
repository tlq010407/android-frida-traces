.class public Lorg/telegram/ui/Cells/PatternCell;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;
    }
.end annotation


# instance fields
.field private final SIZE:I

.field private TAG:I

.field private backgroundDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private currentAccount:I

.field private currentBackgroundColor:I

.field private currentGradientAngle:I

.field private currentGradientColor1:I

.field private currentGradientColor2:I

.field private currentGradientColor3:I

.field private currentPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field private delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

.field private gradientShader:Landroid/graphics/LinearGradient;

.field private maxWallpaperSize:I

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    iput p1, p0, Lorg/telegram/ui/Cells/PatternCell;->SIZE:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->rect:Landroid/graphics/RectF;

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/ui/Cells/PatternCell;->currentAccount:I

    const/high16 p1, 0x40c00000    # 6.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iput p2, p0, Lorg/telegram/ui/Cells/PatternCell;->maxWallpaperSize:I

    iput-object p3, p0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    new-instance p1, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, p3, p2, v1, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->backgroundPaint:Landroid/graphics/Paint;

    iget p1, p0, Lorg/telegram/ui/Cells/PatternCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/PatternCell;->TAG:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/PatternCell$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Cells/PatternCell$1;-><init>(Lorg/telegram/ui/Cells/PatternCell;)V

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private updateButtonState(Ljava/lang/Object;ZZ)V
    .locals 5

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    instance-of v2, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v1, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto/16 :goto_5

    :cond_1
    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget v3, p0, Lorg/telegram/ui/Cells/PatternCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v3, p1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    goto :goto_3

    :cond_3
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_4

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/Cells/PatternCell;->maxWallpaperSize:I

    invoke-static {p1, v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Cells/PatternCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string v0, "jpg"

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Cells/PatternCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_0

    :cond_6
    iget p1, p0, Lorg/telegram/ui/Cells/PatternCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    iget p1, p0, Lorg/telegram/ui/Cells/PatternCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    :goto_5
    return-void
.end method


# virtual methods
.method public getObserverTag()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/PatternCell;->TAG:I

    return v0
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PatternCell;->updateSelected(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getIntensity()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setBlendMode(Ljava/lang/Object;)V

    iget-object v3, v0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getBackgroundColor()I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getBackgroundGradientColor1()I

    move-result v7

    iget-object v5, v0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getBackgroundGradientColor2()I

    move-result v8

    iget-object v5, v0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getBackgroundGradientColor3()I

    move-result v9

    iget-object v5, v0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getBackgroundGradientAngle()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {v6}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getCheckColor()I

    move-result v12

    const/4 v13, 0x0

    const/high16 v14, 0x40c00000    # 6.0f

    if-eqz v7, :cond_5

    iget-object v6, v0, Lorg/telegram/ui/Cells/PatternCell;->gradientShader:Landroid/graphics/LinearGradient;

    if-eqz v6, :cond_0

    iget v6, v0, Lorg/telegram/ui/Cells/PatternCell;->currentBackgroundColor:I

    if-ne v3, v6, :cond_0

    iget v6, v0, Lorg/telegram/ui/Cells/PatternCell;->currentGradientColor1:I

    if-ne v7, v6, :cond_0

    iget v6, v0, Lorg/telegram/ui/Cells/PatternCell;->currentGradientColor2:I

    if-ne v8, v6, :cond_0

    iget v6, v0, Lorg/telegram/ui/Cells/PatternCell;->currentGradientColor3:I

    if-ne v9, v6, :cond_0

    iget v6, v0, Lorg/telegram/ui/Cells/PatternCell;->currentGradientAngle:I

    if-eq v5, v6, :cond_6

    :cond_0
    iput v3, v0, Lorg/telegram/ui/Cells/PatternCell;->currentBackgroundColor:I

    iput v7, v0, Lorg/telegram/ui/Cells/PatternCell;->currentGradientColor1:I

    iput v8, v0, Lorg/telegram/ui/Cells/PatternCell;->currentGradientColor2:I

    iput v9, v0, Lorg/telegram/ui/Cells/PatternCell;->currentGradientColor3:I

    iput v5, v0, Lorg/telegram/ui/Cells/PatternCell;->currentGradientAngle:I

    if-eqz v8, :cond_4

    iput-object v4, v0, Lorg/telegram/ui/Cells/PatternCell;->gradientShader:Landroid/graphics/LinearGradient;

    iget-object v5, v0, Lorg/telegram/ui/Cells/PatternCell;->backgroundDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v5, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, v3

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    goto :goto_0

    :cond_1
    new-instance v11, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v10, 0x1

    move-object v5, v11

    move v6, v3

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/PatternCell;->backgroundDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v11, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setRoundRadius(I)V

    iget-object v5, v0, Lorg/telegram/ui/Cells/PatternCell;->backgroundDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    :goto_0
    cmpg-float v2, v2, v13

    if-gez v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/Cells/PatternCell;->backgroundDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setGradientBitmap(Landroid/graphics/Bitmap;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {}, Lorg/telegram/ui/Cells/PatternCell$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setBlendMode(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, v0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getPatternColor()I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v2, v6}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientPoints(III)Landroid/graphics/Rect;

    move-result-object v2

    new-instance v5, Landroid/graphics/LinearGradient;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    filled-new-array {v3, v7}, [I

    move-result-object v20

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v21, 0x0

    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v2

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v5, v0, Lorg/telegram/ui/Cells/PatternCell;->gradientShader:Landroid/graphics/LinearGradient;

    :goto_2
    iput-object v4, v0, Lorg/telegram/ui/Cells/PatternCell;->backgroundDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_1

    :cond_5
    iput-object v4, v0, Lorg/telegram/ui/Cells/PatternCell;->gradientShader:Landroid/graphics/LinearGradient;

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->backgroundDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->backgroundDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Cells/PatternCell;->gradientShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->gradientShader:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v13, v13, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->rect:Landroid/graphics/RectF;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Cells/PatternCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_4
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v3, -0x1

    invoke-virtual {v2, v12, v12, v3, v3}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getSelectedPattern()Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PatternCell;->currentPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    :cond_1
    const/4 p1, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Cells/PatternCell;->updateButtonState(Ljava/lang/Object;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getSelectedPattern()Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/PatternCell;->currentPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-wide p4, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long v0, p4, p1

    if-nez v0, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RadialProgress2;->getIcon()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->currentPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Cells/PatternCell;->updateButtonState(Ljava/lang/Object;ZZ)V

    :cond_2
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 6

    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getSelectedPattern()Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PatternCell;->currentPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/ui/Cells/PatternCell;->updateButtonState(Ljava/lang/Object;ZZ)V

    :cond_2
    return-void
.end method

.method public setPattern(Lorg/telegram/tgnet/TLRPC$TL_wallPaper;)V
    .locals 12

    iput-object p1, p0, Lorg/telegram/ui/Cells/PatternCell;->currentPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-string v4, "100_100"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "png"

    move-object v2, p0

    move-object v11, p1

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/PatternCell;->updateSelected(Z)V

    return-void
.end method

.method public updateSelected(Z)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Cells/PatternCell;->delegate:Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;->getSelectedPattern()Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/PatternCell;->currentPattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0, v0, v2, p1}, Lorg/telegram/ui/Cells/PatternCell;->updateButtonState(Ljava/lang/Object;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/PatternCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PatternCell;->invalidate()V

    return-void
.end method
