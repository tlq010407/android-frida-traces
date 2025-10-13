.class public Lorg/telegram/ui/Components/voip/VoIPTextureView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static SCALE_TYPE_ADAPTIVE:I = 0x2

.field public static SCALE_TYPE_FILL:I = 0x0

.field public static SCALE_TYPE_FIT:I = 0x1

.field public static SCALE_TYPE_NONE:I = 0x3


# instance fields
.field animateFromHeight:I

.field animateFromRendererH:F

.field animateFromRendererW:F

.field animateFromThumbScale:F

.field animateFromWidth:I

.field animateFromX:F

.field animateFromY:F

.field animateNextDuration:J

.field animateOnNextLayout:Z

.field animateOnNextLayoutAnimations:Ljava/util/ArrayList;

.field animateWithParent:Z

.field public animationProgress:F

.field aninateFromScale:F

.field aninateFromScaleBlur:F

.field final applyRotation:Z

.field public backgroundView:Landroid/view/View;

.field public blurRenderer:Landroid/view/TextureView;

.field public cameraLastBitmap:Landroid/graphics/Bitmap;

.field clipHorizontal:F

.field clipToTexture:Z

.field clipVertical:F

.field currentAnimation:Landroid/animation/ValueAnimator;

.field currentClipHorizontal:F

.field currentClipVertical:F

.field currentThumbScale:F

.field ignoreLayout:Z

.field public final imageView:Landroid/widget/ImageView;

.field final isCamera:Z

.field private placeholderView:Landroid/view/View;

.field public final renderer:Lorg/webrtc/TextureViewRenderer;

.field roundRadius:F

.field public scaleTextureToFill:F

.field private scaleTextureToFillBlur:F

.field private scaleThumb:F

.field public scaleType:I

.field private screencast:Z

.field private screencastImage:Landroid/widget/ImageView;

.field private screencastText:Landroid/widget/TextView;

.field private screencastView:Landroid/widget/FrameLayout;

.field public stubVisibleProgress:F

.field private thumb:Landroid/graphics/Bitmap;


# direct methods
.method public static synthetic $r8$lambda$TtSAUHTrBh5tiBw7S2DlHP_v1Zs(Lorg/telegram/ui/Components/voip/VoIPTextureView;FFFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->lambda$onLayout$0(FFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 6

    .line 0
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;-><init>(Landroid/content/Context;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZZ)V
    .locals 20

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->stubVisibleProgress:F

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayoutAnimations:Ljava/util/ArrayList;

    iput v4, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScale:F

    iput v4, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScaleBlur:F

    iput v4, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromThumbScale:F

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->isCamera:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->applyRotation:Z

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    new-instance v6, Lorg/telegram/ui/Components/voip/VoIPTextureView$1;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/voip/VoIPTextureView$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPTextureView;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {v6, v7}, Lorg/webrtc/TextureViewRenderer;->setFpsReduction(F)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/TextureView;->setOpaque(Z)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/webrtc/TextureViewRenderer;->setEnableHardwareScaler(Z)V

    xor-int/lit8 v9, v3, 0x1

    invoke-virtual {v6, v9}, Lorg/webrtc/TextureViewRenderer;->setIsCamera(Z)V

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x2

    const/16 v11, 0x11

    const/4 v12, -0x1

    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    new-instance v13, Landroid/view/View;

    invoke-direct {v13, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->backgroundView:Landroid/view/View;

    const v14, -0xe4e0dd

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->backgroundView:Landroid/view/View;

    invoke-static {v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_0

    new-instance v13, Landroid/view/TextureView;

    invoke-direct {v13, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-static {v12, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    sget-object v1, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v6, v1}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    :cond_1
    :goto_0
    invoke-static {v12, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    if-eqz p5, :cond_1

    new-instance v13, Landroid/view/TextureView;

    invoke-direct {v13, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-static {v12, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    new-instance v13, Landroid/view/TextureView;

    invoke-direct {v13, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-static {v12, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v7}, Landroid/view/TextureView;->setOpaque(Z)V

    :cond_5
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastView:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const v17, -0xd8baa8

    const/16 v18, 0x1

    const v14, -0xded1c6

    const v15, -0xd4a4b3

    const v16, -0xdba79d

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastView:Landroid/widget/FrameLayout;

    invoke-static {v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastView:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastImage:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastImage:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->screencast_big:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastView:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastImage:Landroid/widget/ImageView;

    const/16 v18, 0x0

    const/high16 v19, 0x42700000    # 60.0f

    const/16 v13, 0x52

    const/high16 v14, 0x42a40000    # 82.0f

    const/16 v15, 0x11

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastText:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->VoipVideoScreenSharing:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastText:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastText:Landroid/widget/TextView;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v6, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastText:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v1, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastText:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastView:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastText:Landroid/widget/TextView;

    const/high16 v14, 0x41a80000    # 21.0f

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x11

    const/high16 v12, 0x41a80000    # 21.0f

    const/high16 v13, 0x41e00000    # 28.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_6

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPTextureView$2;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/voip/VoIPTextureView$2;-><init>(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    invoke-static {v0, v8}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_6
    if-eqz v2, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->cameraLastBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v4, "voip_icthumb.jpg"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->cameraLastBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v4, "icthumb.jpg"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->cameraLastBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :catchall_0
    nop

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->cameraLastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_3
    if-nez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/webrtc/TextureViewRenderer;->setScreenRotation(I)V

    :cond_9
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/VoIPTextureView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFillBlur:F

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/VoIPTextureView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleThumb:F

    return p0
.end method

.method private synthetic lambda$onLayout$0(FFFFFLandroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p6

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animationProgress:F

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipVertical:F

    mul-float v1, v1, p6

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipHorizontal:F

    mul-float v1, v1, p6

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    mul-float p1, p1, p6

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    mul-float v1, v1, v0

    add-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    mul-float p2, p2, p6

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFillBlur:F

    mul-float p1, p1, v0

    add-float/2addr p2, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    mul-float p3, p3, p6

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationX(F)V

    mul-float p4, p4, p6

    invoke-virtual {p0, p4}, Landroid/view/View;->setTranslationY(F)V

    mul-float p5, p5, p6

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleThumb:F

    mul-float p1, p1, v0

    add-float/2addr p5, p1

    iput p5, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentThumbScale:F

    return-void
.end method


# virtual methods
.method public animateToLayout()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayout:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromWidth:I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateWithParent:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromY:F

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromX:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromY:F

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScale:F

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFillBlur:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScaleBlur:F

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleThumb:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromThumbScale:F

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromRendererW:F

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromRendererH:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayout:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->requestLayout()V

    :cond_2
    :goto_2
    return-void
.end method

.method public attachBackgroundRenderer()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v0}, Lorg/webrtc/TextureViewRenderer;->setBackgroundRenderer(Landroid/view/TextureView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayout:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateNextDuration:J

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->stubVisibleProgress:F

    const v0, 0x3dda740e

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->stubVisibleProgress:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_4

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->stubVisibleProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->stubVisibleProgress:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getPlaceholderView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->placeholderView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->placeholderView:Landroid/view/View;

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMatchParent()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->placeholderView:Landroid/view/View;

    return-object v0
.end method

.method public isInAnimation()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFirstFrameRendered()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const-wide/16 v1, 0x12c

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFillBlur:F

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->applyRotation:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->updateRotation()V

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    sget p2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_NONE:I

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFillBlur:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFillBlur:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/16 p2, 0x15

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    const/high16 p5, 0x40000000    # 2.0f

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_3

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleType:I

    sget v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FILL:I

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    sget v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_ADAPTIVE:I

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p3, 0x3ca3d70a    # 0.02f

    cmpg-float p1, p1, p3

    if-gez p1, :cond_6

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    if-le p1, p3, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    if-le p1, p3, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p5

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_2

    :cond_8
    sget p3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->SCALE_TYPE_FIT:I

    if-ne p1, p3, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipToTexture:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateWithParent:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayout:Z

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p5

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p5

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_a

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    goto :goto_4

    :cond_9
    :goto_3
    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayout:Z

    if-nez p1, :cond_a

    iput p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    iput p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->thumb:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleThumb:F

    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayout:Z

    if-eqz p1, :cond_14

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScale:F

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromRendererW:F

    div-float/2addr p3, v0

    div-float/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScale:F

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScaleBlur:F

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromRendererW:F

    div-float/2addr p3, v0

    div-float/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScaleBlur:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayout:Z

    iget-boolean p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateWithParent:Z

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromY:F

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromX:F

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr v1, p3

    goto :goto_5

    :cond_c
    iget p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromY:F

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p3, v0

    iget p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromX:F

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    :goto_5
    iput p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipVertical:F

    iput p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipHorizontal:F

    iget p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    if-eq p3, p4, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromHeight:I

    sub-int/2addr p3, p4

    int-to-float p3, p3

    div-float/2addr p3, p5

    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipVertical:F

    sub-float/2addr v0, p3

    :cond_d
    move v7, v0

    iget p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    if-eq p3, p4, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromWidth:I

    sub-int/2addr p3, p4

    int-to-float p3, p3

    div-float/2addr p3, p5

    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipHorizontal:F

    sub-float/2addr v1, p3

    :cond_e
    move v6, v1

    invoke-virtual {p0, v7}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setTranslationX(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScale:F

    invoke-virtual {p3, p4}, Landroid/view/View;->setScaleX(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScale:F

    invoke-virtual {p3, p4}, Landroid/view/View;->setScaleY(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz p3, :cond_10

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScaleBlur:F

    invoke-virtual {p3, p4}, Landroid/view/View;->setScaleX(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScaleBlur:F

    invoke-virtual {p3, p4}, Landroid/view/View;->setScaleY(F)V

    :cond_10
    iget p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipVertical:F

    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    iget p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->clipHorizontal:F

    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, p2, :cond_11

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScale:F

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->aninateFromScaleBlur:F

    iget v8, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateFromThumbScale:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/Components/voip/VoIPTextureView$$ExternalSyntheticLambda0;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/voip/VoIPTextureView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPTextureView;FFFFF)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-wide p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateNextDuration:J

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_6

    :cond_12
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/Components/voip/VoIPTextureView$3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/voip/VoIPTextureView$3;-><init>(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayoutAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_13

    :goto_7
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayoutAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_13

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayoutAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayoutAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-wide p4, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateNextDuration:J

    goto :goto_8

    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz p1, :cond_15

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFillBlur:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFillBlur:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_15
    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleThumb:F

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentThumbScale:F

    :cond_16
    :goto_8
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->applyRotation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->ignoreLayout:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/webrtc/TextureViewRenderer;->setScreenRotation(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->ignoreLayout:Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->updateRendererSize()V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->updateRotation()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public saveCameraLastBitmap()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string v3, "voip_icthumb.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public setAnimateNextDuration(J)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateNextDuration:J

    return-void
.end method

.method public setAnimateWithParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateWithParent:Z

    return-void
.end method

.method public setIsScreencast(Z)V
    .locals 3

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencast:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencast:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setRoundCorners(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->roundRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->roundRadius:F

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScreenshareMiniProgress(FZ)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencast:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p1

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x3ecccccd    # 0.4f

    if-nez p2, :cond_1

    div-float/2addr v2, v0

    div-float/2addr v1, v0

    mul-float v1, v1, p1

    :goto_0
    sub-float/2addr v2, v1

    goto :goto_1

    :cond_1
    mul-float v1, v1, p1

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencastImage:Landroid/widget/ImageView;

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setStub(Lorg/telegram/ui/Components/voip/VoIPTextureView;)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->screencast:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->stubVisibleProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->thumb:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synchOrRunAnimation(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateOnNextLayoutAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method protected updateRendererSize()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->applyRotation:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    :cond_0
    return-void
.end method
