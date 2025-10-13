.class public Lorg/telegram/ui/Components/GroupCallPipButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;
    }
.end annotation


# instance fields
.field amplitude:F

.field animateAmplitudeDiff:F

.field animateToAmplitude:F

.field private bigMicDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

.field blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

.field private final currentAccount:I

.field currentState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

.field lastStubUpdateAmplitude:J

.field matrix:Landroid/graphics/Matrix;

.field private muteButton:Lorg/telegram/ui/Components/RLottieImageView;

.field overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field paint:Landroid/graphics/Paint;

.field pinnedProgress:F

.field prepareToRemove:Z

.field private final prepareToRemoveShader:Landroid/graphics/LinearGradient;

.field pressedProgress:F

.field pressedState:Z

.field previousState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

.field progressToPrepareRemove:F

.field progressToState:F

.field random:Ljava/util/Random;

.field removeAngle:F

.field public removed:Z

.field states:[Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

.field private stub:Z

.field wavesEnter:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    new-instance v0, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToState:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->random:Ljava/util/Random;

    const/4 v0, 0x4

    new-array v2, v0, [Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    iput-object v2, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->states:[Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->stub:Z

    iput p2, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentAccount:I

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->states:[Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    new-instance v4, Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;-><init>(I)V

    aput-object v4, v3, v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v1, 0x42140000    # 37.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->voice_outlined:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->bigMicDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->bigMicDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/LinearGradient;

    const/high16 v0, 0x43af0000    # 350.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const v0, -0x2abebf

    const v1, -0x89182

    filled-new-array {v0, v1, p2}, [I

    move-result-object v5

    const/4 v0, 0x3

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->prepareToRemoveShader:Landroid/graphics/LinearGradient;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/GroupCallPipButton;->setState(I)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setAmplitude(D)V
    .locals 2

    const-wide v0, 0x40c09a0000000000L    # 8500.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->animateToAmplitude:F

    iget p2, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    sub-float/2addr p1, p2

    sget p2, Lorg/telegram/ui/Components/BlobDrawable;->AMPLITUDE_SPEED:F

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float p2, p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    add-float/2addr p2, v0

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->animateAmplitudeDiff:F

    return-void
.end method

.method private updateButtonState()V
    .locals 9

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v4, 0x6

    if-eq v1, v4, :cond_3

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/GroupCallPipButton;->setState(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/GroupCallPipButton;->setState(I)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/GroupCallPipButton;->setState(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x457a0000    # 4000.0f

    mul-float p1, p1, p2

    float-to-double p1, p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupCallPipButton;->setAmplitude(D)V

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallPipButton;->updateButtonState()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->stub:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/GroupCallPipButton;->setAmplitude(D)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->bigMicDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto :goto_1

    :cond_2
    const/16 v0, 0x18

    :goto_1
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->bigMicDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallPipButton;->updateButtonState()V

    :cond_3
    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->bigMicDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    const/16 v3, 0xd

    goto :goto_1

    :cond_1
    const/16 v3, 0x18

    :goto_1
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->bigMicDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->bigMicDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v1, 0xc

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallPipButton;->updateButtonState()V

    return-void
.end method

.method public synthetic onCameraFirstFrameAvailable()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraFirstFrameAvailable(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    return-void
.end method

.method public synthetic onCameraSwitch(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraSwitch(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->stub:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v4, 0x1

    shr-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    shr-int/2addr v5, v4

    int-to-float v5, v5

    iget-boolean v6, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->pressedState:Z

    const v7, 0x3dda740e

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v6, :cond_1

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->pressedProgress:F

    cmpl-float v10, v9, v8

    if-eqz v10, :cond_1

    add-float/2addr v9, v7

    iput v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->pressedProgress:F

    cmpl-float v6, v9, v8

    if-lez v6, :cond_2

    iput v8, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->pressedProgress:F

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    iget v6, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->pressedProgress:F

    cmpl-float v9, v6, v3

    if-eqz v9, :cond_2

    sub-float/2addr v6, v7

    iput v6, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->pressedProgress:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_2

    iput v3, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->pressedProgress:F

    :cond_2
    :goto_0
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->pressedProgress:F

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const v9, 0x3dcccccd    # 0.1f

    mul-float v6, v6, v9

    add-float v10, v6, v8

    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleY(F)V

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleX(F)V

    iget-boolean v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->stub:Z

    if-eqz v7, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->lastStubUpdateAmplitude:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x3e8

    cmp-long v7, v13, v15

    if-lez v7, :cond_3

    iput-wide v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->lastStubUpdateAmplitude:J

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    rem-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v7, v7, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v7, v12

    add-float/2addr v7, v11

    iput v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->animateToAmplitude:F

    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    sub-float/2addr v7, v11

    sget v11, Lorg/telegram/ui/Components/BlobDrawable;->AMPLITUDE_SPEED:F

    const v13, 0x44bb8000    # 1500.0f

    mul-float v11, v11, v13

    add-float/2addr v11, v12

    div-float/2addr v7, v11

    iput v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->animateAmplitudeDiff:F

    :cond_3
    iget v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->animateToAmplitude:F

    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    cmpl-float v12, v7, v11

    if-eqz v12, :cond_5

    iget v12, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->animateAmplitudeDiff:F

    const/high16 v13, 0x41800000    # 16.0f

    mul-float v13, v13, v12

    add-float/2addr v11, v13

    iput v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    cmpl-float v12, v12, v3

    if-lez v12, :cond_4

    cmpl-float v11, v11, v7

    if-lez v11, :cond_5

    goto :goto_1

    :cond_4
    cmpg-float v11, v11, v7

    if-gez v11, :cond_5

    :goto_1
    iput v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->previousState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    if-eqz v7, :cond_6

    iget v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToState:F

    const v11, 0x3d83126f    # 0.064f

    add-float/2addr v7, v11

    iput v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToState:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    iput v8, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToState:F

    const/4 v7, 0x0

    iput-object v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->previousState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    :cond_6
    iget-boolean v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->prepareToRemove:Z

    const v11, 0x3d3b3ee7

    if-eqz v7, :cond_8

    iget v12, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    cmpl-float v13, v12, v8

    if-eqz v13, :cond_8

    add-float/2addr v12, v11

    iput v12, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    cmpl-float v7, v12, v8

    if-lez v7, :cond_7

    iput v8, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    :cond_7
    iget-boolean v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->removed:Z

    if-eqz v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_8
    if-nez v7, :cond_9

    iget v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    cmpl-float v12, v7, v3

    if-eqz v12, :cond_9

    sub-float/2addr v7, v11

    iput v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    cmpg-float v7, v7, v3

    if-gez v7, :cond_9

    iput v3, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    :cond_9
    :goto_2
    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    invoke-static {v7}, Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;->access$000(Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;)I

    move-result v7

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v7, v13, :cond_b

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    invoke-static {v7}, Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;->access$000(Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;)I

    move-result v7

    if-ne v7, v14, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x1

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_c

    iget v15, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    cmpl-float v16, v15, v8

    if-eqz v16, :cond_c

    add-float/2addr v15, v11

    iput v15, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    cmpl-float v7, v15, v8

    if-lez v7, :cond_d

    iput v8, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    goto :goto_5

    :cond_c
    if-nez v7, :cond_d

    iget v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    cmpl-float v15, v7, v3

    if-eqz v15, :cond_d

    sub-float/2addr v7, v11

    iput v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    cmpg-float v7, v7, v3

    if-gez v7, :cond_d

    iput v3, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    :cond_d
    :goto_5
    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    invoke-virtual {v7, v11}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v7

    const v11, 0x3eb33333    # 0.35f

    mul-float v7, v7, v11

    const v11, 0x3f266666    # 0.65f

    add-float/2addr v7, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v15, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    iget-boolean v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->stub:Z

    const v17, 0x3f4ccccd    # 0.8f

    if-eqz v9, :cond_e

    const v9, 0x3dcccccd    # 0.1f

    goto :goto_6

    :cond_e
    const v9, 0x3f4ccccd    # 0.8f

    :goto_6
    invoke-virtual {v11, v15, v9}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    iget-boolean v15, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->stub:Z

    if-eqz v15, :cond_f

    const v15, 0x3dcccccd    # 0.1f

    goto :goto_7

    :cond_f
    const v15, 0x3f4ccccd    # 0.8f

    :goto_7
    invoke-virtual {v9, v11, v15}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    :goto_8
    if-ge v12, v13, :cond_1c

    if-nez v12, :cond_10

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->previousState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    if-nez v9, :cond_10

    :goto_9
    const/4 v11, 0x2

    goto/16 :goto_10

    :cond_10
    const-wide/16 v13, 0x10

    if-nez v12, :cond_12

    iget v15, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    cmpl-float v15, v15, v8

    if-nez v15, :cond_11

    goto :goto_9

    :cond_11
    iget v15, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToState:F

    sub-float v15, v8, v15

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->previousState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    invoke-virtual {v9, v13, v14, v11}, Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;->update(JF)V

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->previousState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    :goto_a
    iget-object v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;->setToPaint(Landroid/graphics/Paint;)V

    goto :goto_c

    :cond_12
    if-ne v12, v4, :cond_16

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    if-nez v9, :cond_13

    return-void

    :cond_13
    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    cmpl-float v11, v11, v8

    if-nez v11, :cond_14

    goto :goto_9

    :cond_14
    iget-object v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->previousState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    if-eqz v11, :cond_15

    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToState:F

    move v15, v11

    goto :goto_b

    :cond_15
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_b
    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    invoke-virtual {v9, v13, v14, v11}, Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;->update(JF)V

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    goto :goto_a

    :cond_16
    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    cmpl-float v9, v9, v3

    if-nez v9, :cond_17

    goto :goto_9

    :cond_17
    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    const/high16 v11, -0x10000

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->matrix:Landroid/graphics/Matrix;

    const/high16 v11, 0x437a0000    # 250.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    iget v13, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    sub-float v13, v8, v13

    mul-float v11, v11, v13

    invoke-virtual {v9, v11, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->matrix:Landroid/graphics/Matrix;

    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->removeAngle:F

    invoke-virtual {v9, v11, v2, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->prepareToRemoveShader:Landroid/graphics/LinearGradient;

    iget-object v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v11}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    iget-object v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->prepareToRemoveShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_c
    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iput v11, v9, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v13, 0x42000000    # 32.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iput v11, v9, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v11, 0x42180000    # 38.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iput v11, v9, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v11, 0x42040000    # 33.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iput v11, v9, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    const/high16 v9, 0x42980000    # 76.0f

    const/4 v11, 0x2

    if-eq v12, v11, :cond_18

    iget-object v14, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    mul-float v9, v9, v15

    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    sub-float v11, v8, v11

    mul-float v9, v9, v11

    float-to-int v9, v9

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_d

    :cond_18
    iget-object v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    mul-float v9, v9, v15

    iget v14, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    mul-float v9, v9, v14

    float-to-int v9, v9

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_d
    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    cmpl-float v9, v9, v3

    if-eqz v9, :cond_19

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    const v11, 0x3e99999a    # 0.3f

    mul-float v9, v9, v11

    add-float/2addr v9, v8

    add-float/2addr v9, v6

    iget v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->pinnedProgress:F

    sub-float v11, v8, v11

    mul-float v9, v9, v11

    const v11, 0x3fa66666    # 1.3f

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float v9, v9, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v9, v9, v2, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v14, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v5, v1, v14}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->amplitude:F

    const v14, 0x3e851eb8    # 0.26f

    mul-float v9, v9, v14

    add-float/2addr v9, v8

    add-float/2addr v9, v6

    iget v14, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->pinnedProgress:F

    sub-float v14, v8, v14

    mul-float v9, v9, v14

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float v9, v9, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v9, v9, v2, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->blobDrawable2:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v11, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v5, v1, v11}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_19
    const/high16 v9, 0x437f0000    # 255.0f

    const/4 v11, 0x2

    if-ne v12, v11, :cond_1a

    iget-object v14, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    iget v15, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToPrepareRemove:F

    :goto_e
    mul-float v15, v15, v9

    float-to-int v9, v15

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_f

    :cond_1a
    if-ne v12, v4, :cond_1b

    iget-object v14, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    goto :goto_e

    :cond_1b
    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    const/16 v14, 0xff

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v10, v10, v2, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget-object v13, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v9, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_10
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x2

    goto/16 :goto_8

    :cond_1c
    iget-boolean v1, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->removed:Z

    if-nez v1, :cond_1d

    iget v1, v0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_1d
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->getInstance()Lorg/telegram/ui/Components/GroupCallPip;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->getInstance()Lorg/telegram/ui/Components/GroupCallPip;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->showAlert:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->AccDescrCloseMenu:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrOpenMenu2:I

    goto :goto_0

    :goto_1
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {p1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$$ExternalSyntheticApiModelOutline7;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public synthetic onMediaStateUpdated(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onMediaStateUpdated(Lorg/telegram/messenger/voip/VoIPService$StateListener;II)V

    return-void
.end method

.method public synthetic onScreenOnChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onScreenOnChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public synthetic onSignalBarsCountChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onSignalBarsCountChanged(Lorg/telegram/messenger/voip/VoIPService$StateListener;I)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallPipButton;->updateButtonState()V

    return-void
.end method

.method public synthetic onVideoAvailableChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onVideoAvailableChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public prepareToRemove(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->prepareToRemove:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->prepareToRemove:Z

    return-void
.end method

.method public setPinnedProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->pinnedProgress:F

    return-void
.end method

.method public setPressedState(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->pressedState:Z

    return-void
.end method

.method public setRemoveAngle(D)V
    .locals 0

    double-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->removeAngle:F

    return-void
.end method

.method public setState(I)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;->access$000(Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->previousState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->states:[Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    aget-object v1, v1, p1

    iput-object v1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iput v4, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToState:F

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->progressToState:F

    invoke-static {v1}, Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;->access$000(Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;)I

    move-result v1

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->currentState:Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;

    invoke-static {v1}, Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;->access$000(Lorg/telegram/ui/Components/GroupCallPipButton$WeavingState;)I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    :cond_3
    :goto_0
    iput v4, p0, Lorg/telegram/ui/Components/GroupCallPipButton;->wavesEnter:F

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->VoipChannelVoiceChat:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVoiceChat:I

    goto :goto_2

    :goto_3
    const-string v1, ", "

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->VoipTapToMute:I

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    if-ne p1, v2, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->Connecting:I

    goto :goto_4

    :cond_6
    if-ne p1, v3, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/R$string;->VoipMutedByAdmin:I

    goto :goto_4

    :cond_7
    :goto_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
