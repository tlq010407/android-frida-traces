.class public Lorg/telegram/ui/Components/InstantCameraView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;,
        Lorg/telegram/ui/Components/InstantCameraView$Delegate;,
        Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;,
        Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;,
        Lorg/telegram/ui/Components/InstantCameraView$SendOptions;,
        Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;,
        Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;
    }
.end annotation


# static fields
.field private static final ALLOW_BIG_CAMERA_WHITELIST:[I


# instance fields
.field public WRITE_TO_FILE_IN_BACKGROUND:Z

.field private allowSendingWhileRecording:Z

.field private animationTranslationY:F

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private aspectRatio:Lorg/telegram/messenger/camera/Size;

.field private blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

.field private bothCameras:Z

.field private camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

.field private camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

.field private cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

.field private cameraFile:Ljava/io/File;

.field private volatile cameraReady:Z

.field private cameraSession:Lorg/telegram/messenger/camera/CameraSession;

.field private final cameraTexture:[I

.field private cameraTextureAlpha:F

.field private volatile cameraTextureAvailable:Z

.field private cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

.field private cancelled:Z

.field private currentAccount:I

.field private delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

.field public drawBlur:Z

.field private encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

.field private file:Lorg/telegram/tgnet/TLRPC$InputFile;

.field finishZoomTransition:Landroid/animation/ValueAnimator;

.field private firstFrameThumb:Landroid/graphics/Bitmap;

.field private final flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

.field private flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private final flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

.field private flashing:Z

.field private flipAnimationInProgress:Z

.field private frontFlashing:Z

.field private isFrontface:Z

.field isInPinchToZoomTouchMode:Z

.field private isMessageTransition:Z

.field private isSecretChat:Z

.field private iv:[B

.field private key:[B

.field private lastBitmap:Landroid/graphics/Bitmap;

.field private final mMVPMatrix:[F

.field private final mSTMatrix:[F

.field maybePinchToZoomTouchMode:Z

.field private final moldSTMatrix:[F

.field private muteAnimation:Landroid/animation/AnimatorSet;

.field private muteImageView:Landroid/widget/ImageView;

.field private needDrawFlickerStub:Z

.field private final oldCameraTexture:[I

.field private oldTexturePreviewSize:Lorg/telegram/messenger/camera/Size;

.field private oldTextureTextureBuffer:Ljava/nio/FloatBuffer;

.field public opened:Z

.field private paint:Landroid/graphics/Paint;

.field private panTranslationY:F

.field private parentView:Landroid/view/View;

.field private pictureSize:Lorg/telegram/messenger/camera/Size;

.field pinchScale:F

.field pinchStartDistance:F

.field private pointerId1:I

.field private pointerId2:I

.field private final position:[I

.field private previewFile:Ljava/io/File;

.field private previewSize:[Lorg/telegram/messenger/camera/Size;

.field private progress:F

.field private progressTimer:Ljava/util/Timer;

.field private recordPlusTime:J

.field private recordStartTime:J

.field private recordedTime:J

.field private recording:Z

.field private recordingGuid:I

.field private rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scaleX:F

.field private scaleY:F

.field private selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

.field private setVisibilityFromPause:Z

.field private size:J

.field private volatile surfaceIndex:I

.field private final switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

.field private switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

.field private textureView:Landroid/view/TextureView;

.field private textureViewSize:I

.field private updateTextureViewSize:Z

.field private final useCamera2:Z

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field private videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private wasFlashing:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$1FQtPIJoBC2gRUMZ3T1BIEaF7Cg(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$chooseOptimalSize$4(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2SQ5YgcmhKZvaAM-JOTewmspzCs(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$7(ILandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8nHSXwrVewn_55yOgfsjVpCyMy8(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$GdZhZ6YFknbNPpet4c13MCF0zs4(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$JLqUqspX28Gs1ACCZcw8odDsxn0(Lorg/telegram/ui/Components/InstantCameraView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OeAFjb6Fa1P3EmSAKQMMg-8TNeo(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$createCamera$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$WWc2UgkocWX3qdixR8Ukv_U4hak(Lorg/telegram/ui/Components/InstantCameraView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$axfgy9e84ao7aSrB62tOgXsgDrM(Lorg/telegram/ui/Components/InstantCameraView;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$startAnimation$3(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uY6FsASkRvR8a0jK0BXeXvjZIUE(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->lambda$finishZoom$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const v0, 0x110a8f8c

    const v1, -0x5319aae7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/InstantCameraView;->ALLOW_BIG_CAMERA_WHITELIST:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    const/4 v4, 0x2

    new-array v5, v4, [I

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    const/high16 v5, -0x80000000

    filled-new-array {v5, v5}, [I

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTexture:[I

    new-array v5, v3, [I

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    new-array v5, v4, [Lorg/telegram/messenger/camera/Size;

    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    const/4 v6, 0x4

    const/16 v7, 0x10

    if-eqz v5, :cond_0

    new-instance v5, Lorg/telegram/messenger/camera/Size;

    const/16 v8, 0x9

    invoke-direct {v5, v7, v8}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/telegram/messenger/camera/Size;

    const/4 v8, 0x3

    invoke-direct {v5, v6, v8}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    :goto_0
    iput-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    const/4 v9, 0x0

    if-lt v5, v8, :cond_1

    iget v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/SharedConfig;->isUsingCamera2(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    new-array v10, v4, [Lorg/telegram/messenger/camera/Camera2Session;

    iput-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    new-array v10, v7, [F

    iput-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->mMVPMatrix:[F

    new-array v10, v7, [F

    iput-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->mSTMatrix:[F

    new-array v7, v7, [F

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->moldSTMatrix:[F

    iput-boolean v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->drawBlur:Z

    iput-boolean v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->WRITE_TO_FILE_IN_BACKGROUND:Z

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-interface/range {p2 .. p2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getFragmentView()Landroid/view/View;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->parentView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    move-object/from16 v7, p2

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    invoke-interface/range {p2 .. p2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getClassGuid()I

    move-result v10

    iput v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-interface/range {p2 .. p2}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->isSecretChat()Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->isSecretChat:Z

    new-instance v7, Lorg/telegram/ui/Components/InstantCameraView$1;

    invoke-direct {v7, v0, v3}, Lorg/telegram/ui/Components/InstantCameraView$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView;I)V

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    new-instance v7, Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v7, v11, v12, v0, v12}, Lorg/telegram/ui/Stories/recorder/FlashViews;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setWarmth(F)V

    iget-object v11, v7, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    const/16 v13, 0x77

    invoke-static {v10, v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v11, -0x1000000

    if-lt v5, v8, :cond_2

    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$2;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    new-instance v5, Lorg/telegram/ui/Components/InstantCameraView$3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/InstantCameraView$3;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-static {v4, v5}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-static {v4, v3}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    goto :goto_2

    :cond_2
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v14, Lorg/telegram/ui/Components/InstantCameraView$4;

    invoke-direct {v14, v0, v1, v5, v8}, Lorg/telegram/ui/Components/InstantCameraView$4;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iput-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v14, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v5, v4, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    const/16 v12, 0x11

    invoke-direct {v5, v8, v8, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v7, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    invoke-static {v10, v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v8, Lorg/telegram/messenger/R$string;->AccDescrSwitchCamera:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v13, 0x3e

    const/high16 v14, 0x42780000    # 62.0f

    const/16 v15, 0x53

    const/high16 v16, 0x41000000    # 8.0f

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v16, 0x42680000    # 58.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Stories/recorder/FlashViews;->add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->video_mute:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const/16 v4, 0x30

    invoke-static {v4, v4, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v3, 0x28

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$7;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, Lorg/telegram/ui/Components/InstantCameraView$7;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    invoke-direct {v1, v4, v4, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/InstantCameraView;->setVisibility(I)V

    new-instance v1, Lorg/telegram/ui/Components/BlurBehindDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->parentView:Landroid/view/View;

    invoke-direct {v1, v3, v0, v9, v2}, Lorg/telegram/ui/Components/BlurBehindDrawable;-><init>(Landroid/view/View;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->needDrawFlickerStub:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/VideoEditedInfo;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/VideoEditedInfo;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Size;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->surfaceIndex:I

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/InstantCameraView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->surfaceIndex:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleX:F

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleX:F

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleY:F

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->scaleY:F

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->mSTMatrix:[F

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->loadShader(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->mMVPMatrix:[F

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTexture:[I

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->createCamera(ILandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAvailable:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAvailable:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/InstantCameraView;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->moldSTMatrix:[F

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/InstantCameraView;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/InstantCameraView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    return p1
.end method

.method static synthetic access$3516(Lorg/telegram/ui/Components/InstantCameraView;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTextureTextureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTextureTextureBuffer:Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTexturePreviewSize:Lorg/telegram/messenger/camera/Size;

    return-object p0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->oldTexturePreviewSize:Lorg/telegram/messenger/camera/Size;

    return-object p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->firstFrameThumb:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->firstFrameThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/InstantCameraView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->startProgressTimer()V

    return-void
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    return-object p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$Delegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isSecretChat:Z

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->allowSendingWhileRecording:Z

    return p0
.end method

.method static synthetic access$6602(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->allowSendingWhileRecording:Z

    return p1
.end method

.method static synthetic access$6802(Lorg/telegram/ui/Components/InstantCameraView;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordPlusTime:J

    return-wide p1
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/InstantCameraView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/InstantCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    return p0
.end method

.method static synthetic access$7002(Lorg/telegram/ui/Components/InstantCameraView;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$7102(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p0
.end method

.method static synthetic access$7202(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p1
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    return-object p0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;)Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    return-object p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/InstantCameraView;)[B
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    return-object p0
.end method

.method static synthetic access$7402(Lorg/telegram/ui/Components/InstantCameraView;[B)[B
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    return-object p1
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/InstantCameraView;)[B
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    return-object p0
.end method

.method static synthetic access$7502(Lorg/telegram/ui/Components/InstantCameraView;[B)[B
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    return-object p1
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/InstantCameraView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    return-wide v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$7802(Lorg/telegram/ui/Components/InstantCameraView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/InstantCameraView;)[Lorg/telegram/messenger/camera/Camera2Session;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    return-object p0
.end method

.method static synthetic access$8002(Lorg/telegram/ui/Components/InstantCameraView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flipAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/CameraSession;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object p0
.end method

.method private allowBigSizeCamera()Z
    .locals 6

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAboveAverage()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLegacyDevicePerformanceClass()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lorg/telegram/ui/Components/InstantCameraView;->ALLOW_BIG_CAMERA_WHITELIST:[I

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget v4, v4, v3

    if-ne v4, v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static allowBigSizeCameraDebug()Z
    .locals 6

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLegacyDevicePerformanceClass()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lorg/telegram/ui/Components/InstantCameraView;->ALLOW_BIG_CAMERA_WHITELIST:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget v4, v4, v3

    if-ne v4, v0, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method private chooseOptimalSize(Ljava/util/ArrayList;)Lorg/telegram/messenger/camera/Size;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->allowBigSizeCamera()Z

    move-result v1

    const/16 v2, 0x4b0

    if-eqz v1, :cond_0

    const/16 v1, 0x5a0

    goto :goto_0

    :cond_0
    const/16 v1, 0x4b0

    :goto_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Samsung"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    iget v4, v4, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/Size;

    iget v5, v5, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gt v4, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    iget v4, v4, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/Size;

    iget v5, v5, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x140

    if-lt v4, v5, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->allowBigSizeCamera()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/camera/Size;

    return-object p1

    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object p1, v0

    :cond_6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x1e0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    const/16 v3, 0x280

    invoke-static {p1, v3, v2, v0, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->aspectRatio:Lorg/telegram/messenger/camera/Size;

    const/16 v3, 0x10e

    invoke-static {p1, v2, v3, v0, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;Z)Lorg/telegram/messenger/camera/Size;

    move-result-object p1

    return-object p1
.end method

.method private createCamera(ILandroid/graphics/SurfaceTexture;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/InstantCameraView;ILandroid/graphics/SurfaceTexture;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initCamera()Z
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v3, v5

    :cond_2
    iget-boolean v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-boolean v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraInfo;->isFrontface()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    iput-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-object v3, v5

    goto :goto_0

    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    if-nez v0, :cond_7

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    if-nez v0, :cond_8

    return v2

    :cond_8
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraInfo;->getPreviewSizes()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView;->chooseOptimalSize(Ljava/util/ArrayList;)Lorg/telegram/messenger/camera/Size;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/InstantCameraView;->chooseOptimalSize(Ljava/util/ArrayList;)Lorg/telegram/messenger/camera/Size;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v5, v5, v2

    iget v5, v5, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v4, v4, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-eq v5, v4, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_2
    if-ltz v4, :cond_c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    :goto_3
    if-ltz v7, :cond_a

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/camera/Size;

    iget v9, v6, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    iget v11, v10, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-lt v9, v11, :cond_9

    iget v11, v6, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v10, v10, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-lt v11, v10, :cond_9

    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ne v9, v10, :cond_9

    iget v9, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ne v11, v9, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aput-object v6, v5, v2

    iput-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_a
    :goto_4
    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_c
    :goto_5
    if-nez v5, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_6
    if-ltz v4, :cond_10

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    :goto_7
    if-ltz v7, :cond_e

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/camera/Size;

    iget v9, v6, Lorg/telegram/messenger/camera/Size;->mWidth:I

    const/16 v10, 0x168

    if-lt v9, v10, :cond_d

    iget v11, v6, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-lt v11, v10, :cond_d

    iget v10, v8, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ne v9, v10, :cond_d

    iget v9, v8, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ne v11, v9, :cond_d

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aput-object v6, v5, v2

    iput-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_e
    :goto_8
    if-eqz v5, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_10
    :goto_9
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera preview w = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v3, v2

    iget v3, v3, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v2, v3, v2

    iget v2, v2, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_11
    return v1
.end method

.method private isCameraSessionInitiated()Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Camera2Session;->isInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->isInitied()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static synthetic lambda$chooseOptimalSize$4(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget p0, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v2, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget p1, p1, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p1, v0, p0

    if-gez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createCamera$5()V
    .locals 6

    const-string v0, " h = "

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-instance v4, Lorg/telegram/messenger/camera/Size;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v2}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    aput-object v4, v3, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera change preview size to w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_3
    new-instance v3, Lorg/telegram/messenger/camera/Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v2}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera change picture size to w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    goto :goto_5

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    const-string v0, "InstantCamera camera initied"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->setInitied()V

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->reinitForNewCamera()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$createCamera$6()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createCamera$7(ILandroid/graphics/SurfaceTexture;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera create camera session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object p1, v0, p1

    if-eqz p1, :cond_6

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/Camera2Session;->open(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/Camera2Session;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance p1, Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    aget-object v4, v1, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->pictureSize:Lorg/telegram/messenger/camera/Size;

    const/16 v6, 0x100

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;IZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {p1, v0, p2, v1, v2}, Lorg/telegram/messenger/camera/CameraController;->openRound(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$finishZoom$8(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->setZoom(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setZoom(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->switchCamera()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 5

    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->isCameraSessionInitiated()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->switchCamera()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flipAnimationInProgress:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x244

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, p1, [Z

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setCameraDistance(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setCameraDistance(F)V

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$5;

    invoke-direct {v2, p0, p1, v1}, Lorg/telegram/ui/Components/InstantCameraView$5;-><init>(Lorg/telegram/ui/Components/InstantCameraView;[ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$6;

    invoke-direct {v2, p0, p1, v1}, Lorg/telegram/ui/Components/InstantCameraView$6;-><init>(Lorg/telegram/ui/Components/InstantCameraView;[ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    return-void
.end method

.method private synthetic lambda$startAnimation$3(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float p1, p1, p2

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v1

    if-nez p2, :cond_1

    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method private saveLastCameraBitmap()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x32

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    const/4 v4, 0x7

    const/4 v5, 0x1

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "icthumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x57

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private startProgressTimer()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$11;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x11

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopProgressTimer()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private switchCamera()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->needDrawFlickerStub:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/2addr v1, v2

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->flipSurfaces()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/Camera2Session;->destroy(Z)V

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    aput-object v3, v0, v4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/lit8 v4, v3, 0x1

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/camera/Camera2Session;->create(ZII)Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v3

    aput-object v3, v0, v4

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-nez v3, :cond_4

    return-void

    :cond_4
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/camera/Camera2Session;->setRecordingVideo(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-instance v2, Lorg/telegram/messenger/camera/Size;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->setCurrentSession(Lorg/telegram/messenger/camera/Camera2Session;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    :cond_6
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->initCamera()Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->reinitForNewCamera()V

    return-void
.end method

.method private updateFlash()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->frontFlashing:Z

    if-eq v3, v0, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->frontFlashing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashIn(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashOut()V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object v0, v0, v2

    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/camera/Camera2Session;->setFlash(Z)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/camera/CameraSession;->setTorchEnabled(Z)V

    :cond_6
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->wasFlashing:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    if-eq v0, v3, :cond_e

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    if-eqz v3, :cond_8

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOff:I

    goto :goto_5

    :cond_8
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOn:I

    :goto_5
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    const/high16 v3, 0x41e00000    # 28.0f

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_9

    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/messenger/R$raw;->roundcamera_flash_on:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const-string v6, "roundcamera_flash_on"

    invoke-direct {v0, v4, v6, v5, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->wasFlashing:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_6
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOnDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_7
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_c

    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/messenger/R$raw;->roundcamera_flash_off:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const-string v6, "roundcamera_flash_off"

    invoke-direct {v0, v4, v6, v5, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->wasFlashing:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashOffDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_7

    :goto_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->wasFlashing:Ljava/lang/Boolean;

    :cond_e
    return-void
.end method

.method private updateTranslationY()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->panTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->panTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public blurFullyDrawing()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->isFullyDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->opened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel(Z)V
    .locals 12

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    iget v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v0

    aput-object p1, v6, v2

    invoke-virtual {v1, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(IZIIJ)V

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    if-eqz p1, :cond_4

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;-><init>(ZIIJJ)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->stopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    if-eqz p1, :cond_6

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_5

    const-string p1, "delete camera file by cancel"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-static {p1}, Lorg/telegram/messenger/AutoDeleteMediaTask;->unlockFile(Ljava/io/File;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->show(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public cancelBlur()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->show(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public changeVideoPreviewState(IF)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->startProgressTimer()V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    long-to-float p1, v1

    mul-float p2, p2, p1

    float-to-long p1, p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected clipBlur(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public destroy(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/camera/Camera2Session;->destroy(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aput-object v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {p1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    invoke-virtual {v0, v2, p1, v1}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    const/4 p1, 0x2

    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    const/4 p1, 0x5

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    aget-object p1, p3, p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    const/4 p1, 0x4

    aget-object p1, p3, p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    :cond_0
    return-void
.end method

.method public finishZoom()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchScale:F

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Camera2Session;->getMaxZoom()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/Camera2Session;->getMinZoom()F

    move-result v3

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/InstantCameraView$13;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public getCameraContainer()Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    return-object v0
.end method

.method public getCameraRect()Lorg/telegram/ui/Components/Rect;
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Lorg/telegram/ui/Components/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->position:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public getFlashButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    return-object v0
.end method

.method public getMuteImageView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getSwitchButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method public hideCamera(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->destroy(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->resumeByRewind()V

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method public invalidateBlur()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->invalidate()V

    :cond_0
    return-void
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileUploaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashViews:Lorg/telegram/ui/Stories/recorder/FlashViews;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashOut()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->drawBlur:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->clipBlur(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordPlusTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    long-to-float v0, v0

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flipAnimationInProgress:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->rect:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v7, v0, v1

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->updateTextureViewSize:Z

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fa66666    # 1.3f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureViewSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->updateTextureViewSize:Z

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPanTranslationUpdate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->panTranslationY:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->onPanTranslationUpdate(F)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->checkSizes()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->isMuted()Z

    move-result v3

    xor-int/2addr v3, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v3, :cond_1

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    new-array v11, v6, [F

    aput v10, v11, v2

    invoke-static {v8, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v11, 0x3f000000    # 0.5f

    if-eqz v3, :cond_2

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 v12, 0x3f000000    # 0.5f

    :goto_1
    new-array v13, v6, [F

    aput v12, v13, v2

    invoke-static {v9, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    if-eqz v3, :cond_3

    const/high16 v11, 0x3f800000    # 1.0f

    :cond_3
    new-array v3, v6, [F

    aput v11, v3, v2

    invoke-static {v10, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v10, v1, [Landroid/animation/Animator;

    aput-object v8, v10, v2

    aput-object v9, v10, v6

    aput-object v3, v10, v0

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Lorg/telegram/ui/Components/InstantCameraView$12;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/InstantCameraView$12;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0xb4

    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v7, 0x5

    if-ne v3, v7, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    if-eqz v0, :cond_c

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v7, -0x1

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v1, v8, :cond_8

    iget v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-ne v8, v9, :cond_6

    move v3, v1

    :cond_6
    iget v8, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-ne v8, v9, :cond_7

    move v7, v1

    :cond_7
    add-int/2addr v1, v6

    goto :goto_2

    :cond_8
    if-eq v3, v0, :cond_b

    if-ne v7, v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchStartDistance:F

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchScale:F

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Camera2Session;->getMaxZoom()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Camera2Session;->getMinZoom()F

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/Camera2Session;->setZoom(F)V

    goto :goto_4

    :cond_a
    sub-float/2addr p1, v5

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraSession;->setZoom(F)V

    goto :goto_4

    :cond_b
    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->finishZoom()V

    return v2

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v6, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_d

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_f

    :cond_e
    iget-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    if-eqz p1, :cond_f

    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView;->finishZoom()V

    :cond_f
    :goto_4
    return v6

    :cond_10
    :goto_5
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->maybePinchToZoomTouchMode:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    if-nez v1, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->finishZoomTransition:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchStartDistance:F

    iput v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->pinchScale:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId1:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->pointerId2:I

    iput-boolean v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->isInPinchToZoomTouchMode:Z

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->maybePinchToZoomTouchMode:Z

    :cond_12
    return v6
.end method

.method public resetCameraFile()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    return-void
.end method

.method public send(IZIIJJ)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView;->stopProgressTimer()V

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_1
    const-wide/16 v8, 0x320

    const/4 v6, 0x4

    if-ne v1, v6, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    if-eqz v1, :cond_2

    iget-wide v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    move-object v8, v2

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;-><init>(ZIIJJ)V

    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->stopRecording(ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void

    :cond_2
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "file not found :( round video"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v1, :cond_4

    new-instance v1, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v1}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_9

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    long-to-double v7, v5

    iget-wide v9, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-ltz v13, :cond_5

    goto :goto_0

    :cond_5
    move-wide v9, v11

    :goto_0
    iget-wide v13, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v15, v13, v11

    if-ltz v15, :cond_6

    move-wide v5, v13

    :cond_6
    sub-long/2addr v5, v9

    iput-wide v5, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    iget-wide v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    long-to-double v9, v9

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v5

    double-to-long v5, v9

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const v2, 0xf4240

    iput v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    iget-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    const-wide/16 v5, 0x3e8

    cmp-long v7, v2, v11

    if-lez v7, :cond_7

    mul-long v2, v2, v5

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    :cond_7
    iget-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v7, v2, v11

    if-lez v7, :cond_8

    mul-long v2, v2, v5

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    :cond_8
    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/FileLoader;->cancelFileUpload(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->size:J

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    iput-object v2, v1, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    move/from16 v10, p4

    iput v10, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    move-wide/from16 v11, p5

    iput-wide v11, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->effectId:J

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    iget-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/4 v10, 0x0

    move-object v6, v1

    move/from16 v8, p2

    move/from16 v9, p3

    move-wide/from16 v11, p7

    invoke-interface/range {v5 .. v12}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZJ)V

    if-eqz p3, :cond_a

    goto/16 :goto_6

    :cond_a
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    goto/16 :goto_7

    :cond_b
    move/from16 v10, p4

    move-wide/from16 v11, p5

    iget-wide v13, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    cmp-long v15, v13, v8

    if-gez v15, :cond_c

    const/4 v8, 0x1

    goto :goto_3

    :cond_c
    const/4 v8, 0x0

    :goto_3
    iput-boolean v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Components/InstantCameraView;->flashing:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    iget-boolean v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v8, :cond_d

    goto :goto_4

    :cond_d
    if-ne v1, v2, :cond_e

    const/4 v6, 0x2

    goto :goto_4

    :cond_e
    const/4 v6, 0x5

    :goto_4
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v8, :cond_11

    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    iget v13, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v14, v3, [Ljava/lang/Object;

    aput-object v13, v14, v4

    aput-object v6, v14, v5

    invoke-virtual {v8, v9, v14}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-boolean v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v6, :cond_f

    const/16 v18, 0x0

    goto :goto_5

    :cond_f
    if-ne v1, v2, :cond_10

    const/16 v18, 0x2

    goto :goto_5

    :cond_10
    const/16 v18, 0x1

    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-object/from16 v17, v1

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, p4

    move-wide/from16 v22, p5

    invoke-virtual/range {v17 .. v23}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(IZIIJ)V

    iput-object v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    :cond_11
    iget-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v1, :cond_12

    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v6, Lorg/telegram/messenger/NotificationCenter;->audioRecordTooShort:I

    iget v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    long-to-int v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v4

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v2, v5

    aput-object v8, v2, v3

    invoke-virtual {v1, v6, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {v0, v4, v4}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    goto/16 :goto_2

    :cond_12
    :goto_7
    return-void
.end method

.method public setIsMessageTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->isMessageTransition:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->clear()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    const v3, 0x3dcccccd    # 0.1f

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v2, 0x3dcccccd    # 0.1f

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const v2, 0x3dcccccd    # 0.1f

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const v2, 0x3dcccccd    # 0.1f

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const v1, 0x3dcccccd    # 0.1f

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_5
    const/16 v0, 0x80

    if-nez p1, :cond_6

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method public showCamera(Z)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->roundcamera_flip:I

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const-string v5, "roundcamera_flip"

    invoke-direct {v0, v2, v5, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v3, "icthumb.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->icplaceholder:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->selectedCamera:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v2, 0x1

    if-nez p1, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-nez v3, :cond_4

    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const/4 v3, 0x0

    iput v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->progress:F

    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->key:[B

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->iv:[B

    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->needDrawFlickerStub:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->initCamera()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->pauseByRewind()V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_9
    :goto_3
    if-nez p1, :cond_a

    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$8;

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView$8;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    :cond_a
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/AutoDeleteMediaTask;->lockFile(Ljava/io/File;)V

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstantCamera show round camera "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->useCamera2:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->roundDualAvailableStatic(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_4
    const/4 v3, 0x2

    if-ge v0, v3, :cond_e

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object v4, v3, v0

    if-nez v4, :cond_d

    if-nez v0, :cond_c

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/camera/Camera2Session;->create(ZII)Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object v3, v3, v0

    if-eqz v3, :cond_d

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/camera/Camera2Session;->setRecordingVideo(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-instance v4, Lorg/telegram/messenger/camera/Size;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewWidth()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    aput-object v4, v3, v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/lit8 v4, v3, 0x1

    aget-object v4, v0, v4

    iput-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-eqz v4, :cond_f

    aget-object v0, v0, v3

    if-nez v0, :cond_f

    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView;->bothCameras:Z

    :cond_f
    if-nez v4, :cond_12

    return-void

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2Sessions:[Lorg/telegram/messenger/camera/Camera2Session;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->isFrontface:Z

    xor-int/lit8 v4, v3, 0x1

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->roundVideoSize:I

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/camera/Camera2Session;->create(ZII)Lorg/telegram/messenger/camera/Camera2Session;

    move-result-object v3

    aput-object v3, v0, v4

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    if-nez v3, :cond_11

    return-void

    :cond_11
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/camera/Camera2Session;->setRecordingVideo(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->previewSize:[Lorg/telegram/messenger/camera/Size;

    new-instance v3, Lorg/telegram/messenger/camera/Size;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView;->camera2SessionCurrent:Lorg/telegram/messenger/camera/Camera2Session;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/Camera2Session;->getPreviewHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    aput-object v3, v0, v1

    :cond_12
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/InstantCameraView$9;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView;->textureView:Landroid/view/TextureView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView;->updateTextureViewSize:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/InstantCameraView;->setVisibilityFromPause:Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->setVisibility(I)V

    invoke-virtual {p0, v2, p1}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    return-void
.end method

.method public startAnimation(ZZ)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v6

    if-eqz v6, :cond_1

    xor-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->showTemporary(Z)V

    :cond_1
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    iget-boolean v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->opened:Z

    if-nez v8, :cond_3

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    if-eqz v2, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    :goto_0
    iput v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->animationTranslationY:F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateTranslationY()V

    :cond_3
    iput-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->opened:Z

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->parentView:Landroid/view/View;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->blurBehindDrawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->show(Z)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_5

    iget-wide v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const-wide/16 v10, 0x12c

    cmp-long v12, v8, v10

    if-lez v12, :cond_5

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    sub-float/2addr v8, v9

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    if-eqz v1, :cond_6

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_2
    if-eqz v1, :cond_7

    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_3
    new-array v11, v3, [F

    aput v9, v11, v4

    aput v10, v11, v5

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0, v2}, Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Z)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v10, v0, Lorg/telegram/ui/Components/InstantCameraView;->switchCameraButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v1, :cond_8

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    new-array v13, v5, [F

    aput v12, v13, v4

    invoke-static {v10, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/Components/InstantCameraView;->flashButton:Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;

    if-eqz v1, :cond_9

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_5
    new-array v14, v5, [F

    aput v13, v14, v4

    invoke-static {v12, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/InstantCameraView;->muteImageView:Landroid/widget/ImageView;

    new-array v14, v5, [F

    aput v7, v14, v4

    invoke-static {v13, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView;->paint:Landroid/graphics/Paint;

    sget-object v15, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    if-eqz v1, :cond_a

    const/16 v16, 0xff

    goto :goto_6

    :cond_a
    const/16 v16, 0x0

    :goto_6
    filled-new-array/range {v16 .. v16}, [I

    move-result-object v6

    invoke-static {v14, v15, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    if-eqz v1, :cond_b

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    :goto_7
    new-array v7, v5, [F

    aput v15, v7, v4

    invoke-static {v14, v11, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    sget-object v15, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const v18, 0x3dcccccd    # 0.1f

    if-eqz v1, :cond_c

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_c
    const v19, 0x3dcccccd    # 0.1f

    :goto_8
    new-array v3, v5, [F

    aput v19, v3, v4

    invoke-static {v14, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    move-object/from16 p2, v2

    if-eqz v1, :cond_d

    const/high16 v20, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_d
    const v20, 0x3dcccccd    # 0.1f

    :goto_9
    new-array v2, v5, [F

    const/16 v19, 0x0

    aput v20, v2, v19

    invoke-static {v14, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraContainer:Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    move-object/from16 v20, v9

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v21, v2

    new-array v2, v5, [F

    aput v8, v2, v19

    invoke-static {v14, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v14, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v23, v2

    if-eqz v1, :cond_e

    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_e
    const/16 v22, 0x0

    :goto_a
    new-array v2, v5, [F

    aput v22, v2, v19

    invoke-static {v14, v11, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v22, v2

    if-eqz v1, :cond_f

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_f
    const v14, 0x3dcccccd    # 0.1f

    :goto_b
    new-array v2, v5, [F

    aput v14, v2, v19

    invoke-static {v11, v15, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v1, :cond_10

    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_10
    const v17, 0x3dcccccd    # 0.1f

    :goto_c
    new-array v14, v5, [F

    aput v17, v14, v19

    invoke-static {v11, v4, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView;->textureOverlayView:Lorg/telegram/ui/Components/BackupImageView;

    new-array v14, v5, [F

    aput v8, v14, v19

    invoke-static {v11, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/16 v9, 0xd

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v10, v9, v19

    aput-object v12, v9, v5

    const/4 v5, 0x2

    aput-object v13, v9, v5

    const/4 v5, 0x3

    aput-object v6, v9, v5

    const/4 v5, 0x4

    aput-object v7, v9, v5

    const/4 v5, 0x5

    aput-object v3, v9, v5

    const/4 v3, 0x6

    aput-object v21, v9, v3

    const/4 v3, 0x7

    aput-object v23, v9, v3

    const/16 v3, 0x8

    aput-object v22, v9, v3

    const/16 v3, 0x9

    aput-object v2, v9, v3

    const/16 v2, 0xa

    aput-object v4, v9, v2

    const/16 v2, 0xb

    aput-object v8, v9, v2

    const/16 v2, 0xc

    aput-object v20, v9, v2

    move-object/from16 v2, p2

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-nez v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$10;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/InstantCameraView$10;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_d

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public togglePause()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    iget-wide v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    const-wide/16 v9, 0x320

    cmp-long v2, v7, v9

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    iput-boolean v6, v0, Lorg/telegram/ui/Components/InstantCameraView;->recording:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView;->updateFlash()V

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    if-eqz v2, :cond_4

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v7, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    iget v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v9, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_1

    :cond_1
    const/4 v9, 0x2

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v6

    aput-object v9, v10, v5

    invoke-virtual {v2, v7, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/InstantCameraView;->saveLastCameraBitmap()V

    iget-object v11, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v2, :cond_2

    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    const/4 v12, 0x2

    :goto_2
    if-eqz v2, :cond_3

    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    const/4 v2, -0x2

    const/4 v15, -0x2

    :goto_3
    const-wide/16 v16, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v17}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->shutdown(IZIIJ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->cameraThread:Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    :cond_4
    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->cancelled:Z

    if-eqz v2, :cond_5

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioRecordTooShort:I

    iget v7, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordingGuid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/Components/InstantCameraView;->recordedTime:J

    long-to-int v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v1, v5

    aput-object v8, v1, v4

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MediaController;->requestRecordAudioFocus(Z)V

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->pause()V

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->resume()V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/InstantCameraView;->hideCamera(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    iput-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_7
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/InstantCameraView;->showCamera(Z)V

    :try_start_0
    invoke-virtual {v0, v1, v4}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->delegate:Lorg/telegram/ui/Components/InstantCameraView$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/InstantCameraView$Delegate;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordResumed:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    return-void
.end method
