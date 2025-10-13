.class public Lorg/telegram/ui/Components/Premium/VideoScreenPreview;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Premium/PagerHeaderView;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final speedScaleVideoTimestamps:[F


# instance fields
.field allowPlay:Z

.field aspectRatio:F

.field aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field attachFileName:Ljava/lang/String;

.field attached:Z

.field cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

.field currentAccount:I

.field private document:Lorg/telegram/tgnet/TLRPC$Document;

.field file:Ljava/io/File;

.field firstFrameRendered:Z

.field fromTop:Z

.field helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field lastFrameTime:J

.field private matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

.field nextCheck:Ljava/lang/Runnable;

.field phoneFrame1:Landroid/graphics/Paint;

.field phoneFrame2:Landroid/graphics/Paint;

.field play:Z

.field progress:F

.field private roundRadius:F

.field roundedBitmapDrawable:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

.field size:I

.field speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

.field starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field private final svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

.field textureView:Landroid/view/TextureView;

.field type:I

.field videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

.field visible:Z


# direct methods
.method public static synthetic $r8$lambda$-HZV6cDu_WGo9rE2nfjQURDXOjI(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->checkVideo()V

    return-void
.end method

.method public static synthetic $r8$lambda$oqqJ5kFEZuqEQjRzuFj19R2Iil8()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->lambda$stopVideoPlayer$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$qoBGRdLZ21d1kUjhyHUJymySrX8(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->lambda$setVideo$1(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uhPOCGoEW4sKRGT2owd-MDb-lTA(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->lambda$setVideo$0(Ljava/io/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedScaleVideoTimestamps:[F

    return-void

    :array_0
    .array-data 4
        0x3ca3d70a    # 0.02f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3ca3d70a    # 0.02f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/SvgHelper$SvgDrawable;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame1:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame2:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput p3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    iput p4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->type:I

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame1:Landroid/graphics/Paint;

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame2:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    invoke-static {v2, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, p3, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const p3, 0x7fffffff

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->setVideo()V

    const/16 p2, 0xb

    const/4 p3, 0x3

    if-ne p4, v1, :cond_0

    new-instance p5, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    invoke-direct {p5}, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;-><init>()V

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->init()V

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x6

    const/high16 v3, 0x40800000    # 4.0f

    const/16 v4, 0x18

    const v5, 0x3f7ae148    # 0.98f

    if-eq p4, v2, :cond_6

    const/16 v2, 0x9

    if-eq p4, v2, :cond_6

    if-eq p4, p3, :cond_6

    const/4 v2, 0x7

    if-eq p4, v2, :cond_6

    if-eq p4, p2, :cond_6

    const/4 v2, 0x4

    if-eq p4, v2, :cond_6

    if-ne p4, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne p4, v4, :cond_2

    new-instance p5, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    const/16 v2, 0xc8

    invoke-direct {p5, v2}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;-><init>(I)V

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->init()V

    goto/16 :goto_5

    :cond_2
    const/16 v6, 0xd

    if-ne p4, v6, :cond_3

    new-instance p5, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    const/16 v2, 0x19

    invoke-direct {p5, v2}, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;-><init>(I)V

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->init()V

    goto/16 :goto_5

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v6

    if-ne v6, v4, :cond_4

    const/16 v4, 0x320

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v4

    if-ne v4, v1, :cond_5

    const/16 v4, 0x190

    goto :goto_0

    :cond_5
    const/16 v4, 0x64

    :goto_0
    new-instance v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-direct {v6, v4}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object v6, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iput-object p5, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget p5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor2:I

    iput p5, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:I

    iput v2, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    iput v5, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    iput v5, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    iput v5, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    iput-boolean v1, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    iput v3, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    iput-boolean v1, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    iput-boolean v1, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkTime:Z

    iput-boolean v1, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    iput-boolean v0, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    goto :goto_5

    :cond_6
    :goto_1
    new-instance v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 v6, 0x28

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/high16 v6, 0x40400000    # 3.0f

    iput v6, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    iput p4, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/16 v6, 0xe

    if-eq p4, p3, :cond_8

    if-ne p4, v4, :cond_7

    goto :goto_3

    :cond_7
    iput v6, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const/16 v4, 0x10

    iput v4, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    const/16 v4, 0xf

    :goto_2
    iput v4, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size3:I

    goto :goto_4

    :cond_8
    :goto_3
    iput v6, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const/16 v4, 0x12

    iput v4, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    goto :goto_2

    :goto_4
    iput v5, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    iput v5, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    iput v5, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    iput v3, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    iput-object p5, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget p5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor2:I

    iput p5, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:I

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    :goto_5
    if-eq p4, v1, :cond_9

    if-eq p4, p3, :cond_9

    if-ne p4, p2, :cond_a

    :cond_9
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    :cond_a
    new-instance p2, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$1;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    new-instance p2, Landroid/view/TextureView;

    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->textureView:Landroid/view/TextureView;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    return p0
.end method

.method private checkVideo()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationCenter;->getCurrentHeavyOperationFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->nextCheck:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->nextCheck:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_3
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatio:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    const v0, 0x3f2bc6a8    # 0.671f

    iput v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatio:F

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->allowPlay:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->runVideoPlayer()V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->nextCheck:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$setVideo$0(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->checkVideo()V

    return-void
.end method

.method private synthetic lambda$setVideo$1(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Ljava/io/File;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$stopVideoPlayer$2()V
    .locals 0

    return-void
.end method

.method private runVideoPlayer()V
    .locals 6

    const-string v0, "UTF-8"

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    if-nez v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    if-eqz v1, :cond_6

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatio:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->with(Landroid/view/TextureView;)Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&hash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&mime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&rid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reference="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-array v0, v3, [B

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tg://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attachFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->preparePlayer(Landroid/net/Uri;ZF)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->firstFrameRendered:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->lastFrameTime:J

    const-wide/16 v3, 0x3c

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seekTo(J)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->play()V

    :cond_6
    return-void
.end method

.method private setVideo()V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getPremiumPromo()Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->type:I

    invoke-static {v1}, Lorg/telegram/ui/PremiumPreviewFragment;->featureTypeToServerString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->video_sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->video_sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_help_premiumPromo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    :goto_2
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v4, "b"

    invoke-static {v3, v4}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundedBitmapDrawable:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    new-instance v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    const/high16 v3, 0x40800000    # 4.0f

    iput v3, v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    const/high16 v3, 0x40600000    # 3.5f

    iput v3, v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->frameInside:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->svgIcon:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {v2, p0, v4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->getDrawableInterface(Landroid/view/View;Lorg/telegram/messenger/SvgHelper$SvgDrawable;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

    new-instance v4, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$2;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundedBitmapDrawable:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

    invoke-direct {v4, p0, v2, v5}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$2;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attachFileName:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    iget v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v9, v0, v2, v8}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    iput-object v9, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->document:Lorg/telegram/tgnet/TLRPC$Document;

    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v9}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private stopVideoPlayer()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->lastFrameTime:J

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    new-instance v1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    :cond_0
    return-void
.end method

.method private updateAttachState()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->play:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->play:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attachFileName:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    aget-object p1, p3, p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->file:Ljava/io/File;

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->checkVideo()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    if-eqz v0, :cond_7

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->progress:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v4, v0

    float-to-double v5, v0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-virtual {p1, v0, v0, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getCurrentPosition()J

    move-result-wide v5

    long-to-float v0, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayerBase:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v5}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getDuration()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v0, v5

    invoke-static {v0, v4, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    sget-object v5, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedScaleVideoTimestamps:[F

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float v6, v4, v6

    div-float v7, v0, v6

    float-to-int v7, v7

    add-int/lit8 v8, v7, 0x1

    int-to-float v9, v7

    mul-float v9, v9, v6

    sub-float/2addr v0, v9

    div-float/2addr v0, v6

    array-length v6, v5

    if-ge v8, v6, :cond_3

    aget v6, v5, v7

    sub-float v7, v4, v0

    mul-float v6, v6, v7

    aget v5, v5, v8

    mul-float v5, v5, v0

    add-float/2addr v6, v5

    goto :goto_0

    :cond_3
    aget v6, v5, v7

    goto :goto_0

    :cond_4
    const v6, 0x3e4ccccd    # 0.2f

    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->progress:F

    const v5, 0x3dcccccd    # 0.1f

    div-float/2addr v0, v5

    invoke-static {v0, v4, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    sub-float/2addr v4, v0

    mul-float v4, v4, v1

    add-float/2addr v4, v5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    const/high16 v5, 0x43160000    # 150.0f

    mul-float v4, v4, v5

    mul-float v4, v4, v6

    iput v4, v0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->speedScale:F

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    const v1, 0x3f2bc6a8    # 0.671f

    mul-float v1, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v3

    const v1, 0x3d896bba    # 0.0671f

    mul-float v1, v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz v3, :cond_8

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    neg-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_8
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    add-float/2addr v6, v7

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    iget v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    iget v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame1:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-virtual {v1, v4, v2, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v2, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundedBitmapDrawable:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->cellFlickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;

    if-eqz v0, :cond_b

    iget v2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    iput v2, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable$DrawableInterface;->radius:F

    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v2, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    float-to-int v3, v3

    invoke-virtual {v0, v3, v3, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    :goto_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->firstFrameRendered:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->phoneFrame1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_e
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attached:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->updateAttachState()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->firstFrameRendered:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->checkVideo()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->attached:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->updateAttachState()V

    iget v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->stopVideoPlayer()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/lit8 p2, p2, 0x10

    shl-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3f666666    # 0.9f

    mul-float p2, p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    const p3, 0x3f2bc6a8    # 0.671f

    mul-float p3, p3, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p4, p3

    iget-boolean p3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz p3, :cond_0

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget p5, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    neg-float p5, p5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p4

    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p5, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    add-float/2addr v0, v1

    invoke-virtual {p3, p4, p5, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget p2, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->size:I

    if-eq p2, p1, :cond_6

    iput p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->size:I

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->excludeRect:Landroid/graphics/RectF;

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->matrixParticlesDrawable:Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/MatrixParticlesDrawable;->excludeRect:Landroid/graphics/RectF;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->inset(FF)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iget p3, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->type:I

    const/4 p4, 0x6

    if-eq p3, p4, :cond_3

    const/16 p4, 0x9

    if-eq p3, p4, :cond_3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_3

    const/4 p4, 0x7

    if-eq p3, p4, :cond_3

    const/16 p4, 0x18

    if-eq p3, p4, :cond_3

    const/16 p4, 0xb

    if-eq p3, p4, :cond_3

    const/4 p4, 0x4

    if-ne p3, p4, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p3

    const p4, 0x3ecccccd    # 0.4f

    mul-float p3, p3, p4

    float-to-int p3, p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p4, p4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p5

    int-to-float p3, p3

    sub-float/2addr p5, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float/2addr v1, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    add-float/2addr p1, p3

    invoke-virtual {p4, p5, v0, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    const/high16 p3, 0x41f00000    # 30.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p4, p3}, Landroid/graphics/RectF;->inset(FF)V

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resetPositions()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRect:Landroid/graphics/RectF;

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->starDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRect:Landroid/graphics/RectF;

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p4, p3}, Landroid/graphics/RectF;->inset(FF)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    const p3, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_5

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->rect:Landroid/graphics/RectF;

    const/high16 p4, 0x42c80000    # 100.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    int-to-float p5, p5

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p5, p4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->speedLinesDrawable:Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->resetPositions()V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->rect:Landroid/graphics/RectF;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->helloParticlesDrawable:Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/HelloParticles$Drawable;->resetPositions()V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const v3, 0x3f2bc6a8    # 0.671f

    mul-float v3, v3, v2

    int-to-float v0, v0

    sub-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const v4, 0x3d896bba    # 0.0671f

    mul-float v4, v4, v2

    iput v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->roundRadius:F

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz v4, :cond_1

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float/2addr v0, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_1
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v1, v1

    sub-float v2, v1, v2

    sub-float/2addr v0, v3

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setOffset(F)V
    .locals 7

    const/high16 v0, 0x42480000    # 50.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    cmpg-float v5, p1, v4

    neg-float p1, p1

    if-gez v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, p1

    invoke-static {v6, v5, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v4, v4, v6

    add-float/2addr v4, v6

    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    mul-float v0, v0, v3

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->progress:F

    cmpg-float v0, p1, v5

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const v3, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v3

    if-gez p1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->fromTop:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_3
    int-to-float v0, v0

    mul-float v0, v0, v3

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    goto :goto_3

    :goto_4
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const v3, -0x42333333    # -0.1f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->progress:F

    :cond_6
    :goto_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->visible:Z

    if-eq v0, p1, :cond_7

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->visible:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->updateAttachState()V

    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->allowPlay:Z

    if-eq v1, p1, :cond_9

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->allowPlay:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->allowPlay:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->runVideoPlayer()V

    goto :goto_7

    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->stopVideoPlayer()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    :cond_9
    :goto_7
    return-void
.end method
