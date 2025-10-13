.class public Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;
    }
.end annotation


# instance fields
.field activity:Lorg/telegram/ui/GroupCallActivity;

.field animateEnter:Z

.field animateToColor:I

.field public animateToFullscreen:Z

.field public animateToScrimView:Z

.field attached:Z

.field attachedRenderers:Ljava/util/ArrayList;

.field blurredFlippingStub:Landroid/widget/ImageView;

.field call:Lorg/telegram/messenger/ChatObject$Call;

.field private castingScreenDrawable:Landroid/graphics/drawable/Drawable;

.field private checkScale:Z

.field collapseSize:I

.field colorAnimator:Landroid/animation/ValueAnimator;

.field currentAccount:I

.field public drawFirst:Z

.field flipAnimator:Landroid/animation/ValueAnimator;

.field flipHalfReached:Z

.field public forceDetached:Z

.field fullSize:I

.field gradientPaint:Landroid/graphics/Paint;

.field gradientShader:Landroid/graphics/LinearGradient;

.field gridItemsCount:I

.field public hasVideo:Z

.field private hideRunnable:Ljava/lang/Runnable;

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field inPinchToZoom:Z

.field infoContainer:Landroid/widget/FrameLayout;

.field private invalidateFromChild:Z

.field isFullscreenMode:Z

.field lastIconColor:I

.field private lastLandscapeMode:Z

.field private lastSize:I

.field lastSpeakingFrameColor:I

.field private final micIconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private final nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private noRtmpStreamCallback:Ljava/lang/Runnable;

.field private noRtmpStreamTextView:Landroid/widget/TextView;

.field noVideoStubAnimator:Landroid/animation/ValueAnimator;

.field private noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

.field onFirstFrameRunnables:Ljava/util/ArrayList;

.field overlayIconAlpha:F

.field parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

.field public participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

.field private pausedVideoDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

.field pinchCenterX:F

.field pinchCenterY:F

.field pinchScale:F

.field pinchTranslationX:F

.field pinchTranslationY:F

.field private postedNoRtmpStreamCallback:Z

.field public primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

.field private progressToBackground:F

.field public progressToNoVideoStub:F

.field progressToSpeaking:F

.field private rect:Landroid/graphics/Rect;

.field private final screencastIcon:Landroid/widget/ImageView;

.field public secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

.field private showingAsScrimView:Z

.field public showingInFullscreen:Z

.field spanCount:F

.field speakingPaint:Landroid/graphics/Paint;

.field private statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

.field private stopSharingTextView:Landroid/widget/TextView;

.field private swipeToBack:Z

.field private swipeToBackDy:F

.field public tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

.field public textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

.field thumb:Landroid/graphics/Bitmap;

.field thumbPaint:Landroid/graphics/Paint;

.field private updateNextLayoutAnimated:Z

.field useSpanSize:Z

.field private videoIsPaused:Z

.field private videoIsPausedProgress:F


# direct methods
.method public static synthetic $r8$lambda$9VF_aMMj22oMzPoDWEAYWT8zBbM(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$saveThumb$5(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cua88UCZwnyso-5wOKQnm_z2ycY(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$startFlipAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G8sfTidlQ0_-Km-G95jyWktF-bM(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HzKCJRFXcH6qrRMe7k0BSvKQ-0I(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$saveThumb$4(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M7omZyxOdGvvLaoWj9kPVU8zshg(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$updateAttachState$2(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WkvRvnobl25LRdS4s1OwqWIMLi4(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$updateAttachState$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8w45sCeMZn9__fUkOVxQOfs4RQ(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$gp4EJojynBToFB-TyNDV6akzEq4(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lambda$updateIconColor$6(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V
    .locals 30

    move-object/from16 v4, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p3

    move-object/from16 v15, p4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda6;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    iput-object v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamCallback:Ljava/lang/Runnable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->rect:Landroid/graphics/Rect;

    iput-object v0, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual/range {p4 .. p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result v2

    iput v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->calls_video:I

    const/4 v13, -0x1

    invoke-direct {v2, v5, v6, v13}, Lorg/telegram/ui/Components/CrossOutDrawable;-><init>(Landroid/content/Context;II)V

    iput-object v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pausedVideoDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lorg/telegram/ui/Components/CrossOutDrawable;->setCrossOut(ZZ)V

    iget-object v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pausedVideoDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    const/high16 v18, 0x40800000    # 4.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v5, v10, v9}, Lorg/telegram/ui/Components/CrossOutDrawable;->setOffsets(FFF)V

    iget-object v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pausedVideoDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    const v5, 0x4059999a    # 3.4f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/CrossOutDrawable;->setStrokeWidth(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$drawable;->screencast_big:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->castingScreenDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/text/TextPaint;

    move-object v9, v2

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/text/TextPaint;

    move-object v11, v5

    invoke-direct {v5, v3}, Landroid/text/TextPaint;-><init>(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    sget v10, Lorg/telegram/messenger/R$string;->VoipVideoOnPause:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    new-instance v19, Landroid/text/StaticLayout;

    move-object/from16 v14, v19

    sget v17, Lorg/telegram/messenger/R$string;->VoipVideoScreenSharingTwoLines:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/high16 v17, 0x43c80000    # 400.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v22

    sget-object v27, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v21, v2

    move-object/from16 v23, v27

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget v12, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    move-object/from16 v28, v14

    iget-wide v13, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v14

    iget v0, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->groupCallVideoMaxParticipants:I

    new-array v12, v6, [Ljava/lang/Object;

    const-string v13, "Participants"

    invoke-static {v13, v0, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v19, Landroid/text/StaticLayout;

    move-object v13, v10

    move-object/from16 v10, v19

    sget v12, Lorg/telegram/messenger/R$string;->VoipVideoNotAvailable:I

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v0, "VoipVideoNotAvailable"

    invoke-static {v0, v12, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v22

    invoke-direct/range {v19 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    sget v0, Lorg/telegram/messenger/R$string;->VoipVideoScreenSharing:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v4, 0x41700000    # 15.0f

    move-object v12, v0

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    const/4 v5, -0x1

    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;

    move-object v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v29, v2

    move-object/from16 v2, v19

    const/16 v19, 0x1

    move/from16 v5, v19

    move/from16 v6, v19

    const/16 v19, 0x0

    move/from16 v3, v19

    move/from16 v4, v19

    move-object/from16 p3, v14

    move-object/from16 v14, v28

    invoke-direct/range {v0 .. v17}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$1;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/content/Context;ZZZZLorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/text/TextPaint;Landroid/text/StaticLayout;Landroid/text/TextPaint;Ljava/lang/String;FLandroid/text/StaticLayout;Lorg/telegram/ui/GroupCallActivity;Ljava/lang/String;F)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v2, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/webrtc/RendererCommon$ScalingType;

    invoke-virtual {v1, v2}, Lorg/webrtc/TextureViewRenderer;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-object/from16 v2, p2

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attachedRenderers:Ljava/util/ArrayList;

    move-object/from16 v2, p4

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VideoCapturerDevice;->getEglBase()Lorg/webrtc/EglBase;

    move-result-object v3

    invoke-interface {v3}, Lorg/webrtc/EglBase;->getEglBaseContext()Lorg/webrtc/EglBase$Context;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$2;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v2, v3, v4}, Lorg/webrtc/TextureViewRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->attachBackgroundRenderer()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    const/16 v5, 0xe5

    const/4 v6, -0x1

    invoke-static {v6, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullTextMaxLines(I)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setBuildFullLayout(Z)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    const/high16 v14, 0x41000000    # 8.0f

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x13

    const/high16 v12, 0x42000000    # 32.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v13, 0x40800000    # 4.0f

    const/4 v14, 0x0

    const/16 v8, 0x18

    const/high16 v9, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->voicechat_screencast:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/16 v7, 0x64

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-static {v3, v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v7, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$3;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$3;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/messenger/R$string;->VoipVideoScreenStopSharing:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41a80000    # 21.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v7, v10, v2, v11, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda7;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/16 v11, 0x26

    const/16 v12, 0x33

    invoke-static {v10, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v1, v6, v2, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoRtmpStreamFromAppOwner:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->NoRtmpStreamFromAppViewer:I

    move-object/from16 v4, p3

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v2, "NoRtmpStreamFromAppViewer"

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-static {v10, v10, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPaused:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToBackground:F

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToBackground:F

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->postedNoRtmpStreamCallback:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->postedNoRtmpStreamCallback:Z

    return p1
.end method

.method static synthetic access$116(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToBackground:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToBackground:F

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->castingScreenDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPausedProgress:F

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPausedProgress:F

    return p1
.end method

.method static synthetic access$716(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPausedProgress:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPausedProgress:F

    return v0
.end method

.method static synthetic access$724(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPausedProgress:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPausedProgress:F

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/CrossOutDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pausedVideoDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidateFromChild:Z

    return p1
.end method

.method public static getOrCreate(Ljava/util/ArrayList;Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/messenger/ChatObject$VideoParticipant;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-virtual {p5, v1}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_1
    if-nez p5, :cond_2

    new-instance p5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-direct {p5, p1, p0, p6, p7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p5, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setPrimaryView(Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p5, p3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setSecondaryView(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;)V

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p5, p4}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setTabletGridView(Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V

    :cond_5
    return-object p5
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->stopScreenCapture()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$saveThumb$4(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->thumbs:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v2, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$saveThumb$5(Landroid/graphics/Bitmap;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int/lit16 p2, p2, 0xb4

    const/4 v0, 0x7

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    new-instance p2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startFlipAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipHalfReached:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipHalfReached:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->clearImage()V

    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    mul-float p1, p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/TextureViewRenderer;->setRotationY(F)V

    return-void
.end method

.method private synthetic lambda$updateAttachState$2(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$updateAttachState$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateIconColor$6(IIIILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    invoke-static {p1, p2, p5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastIconColor:I

    invoke-static {p3, p4, p5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSpeakingFrameColor:I

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    :cond_0
    return-void
.end method

.method private loadThumb()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumb:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->thumbs:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v3, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v3, :cond_1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumb:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setThumb(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->thumb:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v4, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v4, :cond_2

    iget-boolean v3, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    if-eqz v3, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v8, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const v6, -0xd8baa8

    const/4 v7, 0x1

    const v3, -0xded1c6

    const v4, -0xd4a4b3

    const v5, -0xdba79d

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_2
    const-wide/16 v3, 0x0

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, -0x1

    const/4 v7, 0x1

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, -0x1000000

    cmp-long v10, v1, v3

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    if-lez v10, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v15

    invoke-static {v15, v7}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    if-eqz v15, :cond_3

    iget-wide v1, v15, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(J)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-static {v9, v6, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    :goto_1
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v1, v9, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-static {v1, v9, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    filled-new-array {v3, v1}, [I

    move-result-object v1

    invoke-direct {v13, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v12, "50_50_b"

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_4

    :cond_4
    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    invoke-static {v15, v7}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    if-eqz v15, :cond_5

    iget-wide v1, v15, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorForId(J)I

    move-result v1

    goto :goto_3

    :cond_5
    invoke-static {v9, v6, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    :goto_3
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v1, v9, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-static {v1, v9, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    filled-new-array {v3, v1}, [I

    move-result-object v1

    invoke-direct {v13, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method private updateIconColor(Z)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isMutedByMe()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_mutedByAdminIcon:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/4 v1, -0x1

    move v1, v0

    const/4 v0, -0x1

    :goto_1
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToColor:I

    if-ne v2, v0, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->colorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->colorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    iput v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSpeakingFrameColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_5
    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastIconColor:I

    iget v6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSpeakingFrameColor:I

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToColor:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->colorAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda4;

    move-object v2, v8

    move-object v3, p0

    move v5, v0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;IIII)V

    invoke-virtual {p1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->colorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$7;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;II)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->colorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v3, v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    add-float/2addr v0, v3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToScrimView:Z

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    :goto_0
    sub-float v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_2
    :goto_1
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v3, :cond_3

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v5, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    mul-float v3, v3, v5

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float v4, v2, v4

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    sub-float v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    goto :goto_0

    :goto_3
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullAlpha(F)V

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullAlpha(F)V

    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v6, v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    mul-float v6, v6, v4

    sub-float/2addr v5, v6

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v5, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v5, v2, v5

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    sub-float v4, v2, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    mul-float v3, v3, v4

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->isSpeaking:Z

    const v3, 0x3d5a740e

    if-eqz v0, :cond_a

    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_a

    add-float/2addr v4, v3

    iput v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    cmpl-float v0, v4, v2

    if-lez v0, :cond_b

    iput v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    goto :goto_7

    :cond_a
    if-nez v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_c

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    iput v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    :cond_c
    :goto_7
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToSpeaking:F

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget v4, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    sub-float v4, v2, v4

    mul-float v4, v4, v0

    iget v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToScrimView:F

    sub-float v3, v2, v3

    mul-float v4, v4, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v2

    const v2, 0x3f666666    # 0.9f

    add-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v5, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    add-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v6, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    add-float/2addr v4, v6

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v7, v6, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipHorizontal:F

    sub-float/2addr v5, v7

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v7, v7, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentClipVertical:F

    sub-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->roundRadius:F

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->speakingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBack:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    if-ne p2, v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    const v2, 0x3f666666    # 0.9f

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public forceDetach(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetached:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->detach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->saveThumb()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {p1}, Lorg/webrtc/TextureViewRenderer;->release()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryView()Lorg/telegram/ui/Components/voip/GroupCallGridCell;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    return-object v0
.end method

.method public getRenderBufferBitmap(Lorg/webrtc/GlGenericDrawer$TextureCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0, p1}, Lorg/webrtc/TextureViewRenderer;->getRenderBufferBitmap(Lorg/webrtc/GlGenericDrawer$TextureCallback;)V

    return-void
.end method

.method public hasImage()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->stubVisibleProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidateFromChild:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity;->getScrimView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public isAttached()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    return v0
.end method

.method public isFullyVisible()Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isInsideStopScreenButton(FF)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->stopSharingTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->rect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastLandscapeMode:Z

    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    iput-boolean v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastLandscapeMode:Z

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateNextLayoutAnimated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateNextLayoutAnimated:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateSize(I)V

    iput v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x43a40000    # 328.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_2
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/16 :goto_d

    :cond_3
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/high16 v1, 0x42b80000    # 92.0f

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v3, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_3
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/16 :goto_d

    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v3, :cond_6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_6
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_2

    :cond_7
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v8, 0x2

    if-eqz v1, :cond_8

    iput v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_3

    :cond_8
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->useSpanSize:Z

    if-eqz v1, :cond_12

    iput v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v1, :cond_a

    :goto_4
    const/4 v1, 0x6

    goto :goto_5

    :cond_a
    const/4 v1, 0x2

    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v3, :cond_b

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v3, 0x43ac0000    # 344.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    :goto_6
    int-to-float v0, v0

    goto :goto_7

    :cond_b
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v3, :cond_c

    const/high16 v0, 0x43a00000    # 320.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_6

    :cond_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    sget-boolean v7, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v7, :cond_d

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    :cond_d
    add-int/2addr v3, v0

    int-to-float v0, v3

    :goto_7
    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->spanCount:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    mul-float v3, v3, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getItemHeight()F

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_8
    int-to-float v1, v1

    sub-float/2addr v3, v1

    goto :goto_b

    :cond_e
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v1, :cond_f

    div-float/2addr v0, v4

    goto :goto_a

    :cond_f
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x3

    goto :goto_9

    :cond_10
    const/4 v1, 0x2

    :goto_9
    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_a
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_8

    :goto_b
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->infoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_11

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    goto :goto_c

    :cond_11
    move v5, v3

    :goto_c
    float-to-int v7, v5

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateSize(I)V

    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    float-to-int v1, v3

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    float-to-int v0, v0

    goto/16 :goto_3

    :cond_12
    iput v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->overlayIconAlpha:F

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_d
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr p2, p1

    iget p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSize:I

    if-eq p1, p2, :cond_13

    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->lastSize:I

    new-instance p1, Landroid/graphics/LinearGradient;

    const/high16 p2, 0x42f00000    # 120.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float v9, p2

    const/high16 p2, -0x1000000

    const/16 v0, 0x78

    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->gradientShader:Landroid/graphics/LinearGradient;

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v4

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public onStatusChanged()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateIconColor(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->access$1400(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;Z)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->release()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v2, Lorg/telegram/ui/GroupCallActivity;->statusIconPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setCallback(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setImageView(Lorg/telegram/ui/Components/RLottieImageView;)V

    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    return-void
.end method

.method public runDelayedAnimations()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public runOnFrameRendered(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->onFirstFrameRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public saveThumb()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->getRenderBufferBitmap(Lorg/webrtc/GlGenericDrawer$TextureCallback;)V

    :cond_0
    return-void
.end method

.method public setAmplitude(D)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setAmplitude(D)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->setAmplitude(D)V

    return-void
.end method

.method public setFullscreenMode(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isFullscreenMode:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isFullscreenMode:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    :cond_2
    return-void
.end method

.method public setPrimaryView(Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    :cond_0
    return-void
.end method

.method public setSecondaryView(Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    :cond_0
    return-void
.end method

.method public setShowingAsScrimView(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    return-void
.end method

.method public setShowingInFullscreen(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    :cond_0
    return-void
.end method

.method public setSwipeToBack(ZF)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBack:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBack:Z

    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->swipeToBackDy:F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTabletGridView(Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    :cond_0
    return-void
.end method

.method public setViews(Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    iput-object p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setZoom(ZFFFFF)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchScale:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchCenterX:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchCenterY:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchTranslationX:F

    cmpl-float v0, v0, p5

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchTranslationY:F

    cmpl-float v0, v0, p6

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->inPinchToZoom:Z

    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchScale:F

    iput p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchCenterX:F

    iput p4, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchCenterY:F

    iput p5, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchTranslationX:F

    iput p6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->pinchTranslationY:F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public startFlipAnimation()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipHalfReached:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v0}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->blurredFlippingStub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$8;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->flipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateAttachState(Z)V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetached:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x42100000    # 36.0f

    goto :goto_0

    :cond_1
    const/high16 v4, 0x41a80000    # 21.0f

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-nez v4, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v4, :cond_3

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v5, :cond_3

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v5, :cond_6

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v4, :cond_5

    :goto_1
    invoke-virtual {v4}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v4

    :goto_2
    iput-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    goto :goto_3

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getVideoParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v4

    goto :goto_2

    :cond_6
    :goto_3
    iget-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v4, :cond_14

    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v10, :cond_14

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->paused:Z

    if-nez v10, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v10, :cond_8

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v11, :cond_9

    iget-object v11, v10, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v10, v10, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-static {v11, v10, v12}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-boolean v11, v10, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-nez v11, :cond_9

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v10, v10, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eq v11, v10, :cond_9

    :cond_8
    const/4 v4, 0x1

    :cond_9
    if-nez v4, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v10, :cond_24

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v10, :cond_24

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v10, :cond_24

    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    if-nez v10, :cond_24

    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToScrimView:Z

    if-nez v10, :cond_24

    :cond_a
    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->saveThumb()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v10

    if-gtz v10, :cond_b

    const/4 v10, 0x1

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    :goto_5
    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v11, v11, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    if-nez v11, :cond_d

    if-eqz v4, :cond_d

    if-eqz v10, :cond_c

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->detach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;

    invoke-direct {v6, v0, v0, v10}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$4;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Z)V

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v10, 0x96

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_7

    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-boolean v6, v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inLayout:Z

    if-eqz v6, :cond_f

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    :cond_e
    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v10, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;ZLandroid/view/View;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_f
    if-eqz v10, :cond_10

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_10
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setVisibility(I)V

    :goto_6
    if-eqz v10, :cond_11

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->detach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->release()V

    :cond_11
    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v4, :cond_12

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v6, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v4, v7, v6}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    goto :goto_8

    :cond_12
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v10, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v6, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v4, v10, v6}, Lorg/telegram/messenger/voip/VoIPService;->removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    :cond_13
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    goto/16 :goto_14

    :cond_14
    if-nez v4, :cond_24

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    if-nez v4, :cond_15

    return-void

    :cond_15
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v4, :cond_16

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v10, :cond_16

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v10, :cond_16

    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eqz v10, :cond_24

    :cond_16
    if-eqz v4, :cond_17

    goto :goto_a

    :cond_17
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->getVideoParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v4

    :goto_9
    iput-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    goto :goto_b

    :cond_18
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v4, :cond_19

    :goto_a
    invoke-virtual {v4}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->getParticipant()Lorg/telegram/messenger/ChatObject$VideoParticipant;

    move-result-object v4

    goto :goto_9

    :cond_19
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v10, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v11, :cond_1a

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v10, v10, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/voip/VoIPService;->getVideoState(Z)I

    move-result v4

    if-ne v4, v1, :cond_1c

    goto :goto_c

    :cond_1a
    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-boolean v12, v11, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-nez v12, :cond_1b

    iget-object v12, v11, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-ne v4, v12, :cond_1c

    :cond_1b
    iget-boolean v4, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-static {v10, v4, v11}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :goto_c
    const/4 v4, 0x1

    goto :goto_d

    :cond_1c
    const/4 v4, 0x0

    :goto_d
    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v10, :cond_1d

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v12, v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v11, v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v10, v12, v11}, Lorg/telegram/messenger/voip/VoIPService;->isFullscreen(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)Z

    move-result v10

    if-nez v10, :cond_24

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v12, v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v11, v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v10, v12, v11}, Lorg/telegram/messenger/voip/VoIPService;->isFullscreen(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)Z

    move-result v10

    if-nez v10, :cond_24

    if-eqz v4, :cond_24

    :cond_1d
    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v4, Lorg/telegram/ui/GroupCallActivity;->statusIconPool:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1e

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->activity:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v4, Lorg/telegram/ui/GroupCallActivity;->statusIconPool:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    :goto_e
    iput-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    goto :goto_f

    :cond_1e
    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-direct {v4}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;-><init>()V

    goto :goto_e

    :goto_f
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setCallback(Lorg/telegram/ui/Components/voip/GroupCallStatusIcon$Callback;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setImageView(Lorg/telegram/ui/Components/RLottieImageView;)V

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateIconColor(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_1f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hideRunnable:Ljava/lang/Runnable;

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_20

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    const/16 v10, 0x33

    const/16 v11, 0x2e

    invoke-static {v11, v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :goto_10
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setVisibility(I)V

    goto :goto_11

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_21

    goto :goto_10

    :cond_21
    :goto_11
    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v4, v4, Lorg/telegram/ui/Components/voip/VoIPTextureView;->currentAnimation:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_22

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v4, :cond_22

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v4, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasImage()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$5;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$5;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v10, 0x64

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    goto :goto_12

    :cond_22
    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    :goto_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->loadThumb()V

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->screencastIcon:Landroid/widget/ImageView;

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v6, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    if-eqz v6, :cond_23

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v6, :cond_23

    const/4 v6, 0x0

    goto :goto_13

    :cond_23
    const/16 v6, 0x8

    :goto_13
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_15

    :cond_24
    :goto_14
    move/from16 v4, p1

    const/4 v6, 0x0

    :goto_15
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v11, v11, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-ne v10, v11, :cond_25

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_26

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    :cond_25
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_26

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->micIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    :goto_16
    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz v10, :cond_53

    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v10, :cond_28

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-boolean v10, v10, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v10, :cond_27

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v10, :cond_28

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v10, :cond_28

    :cond_27
    const/4 v10, 0x1

    goto :goto_17

    :cond_28
    const/4 v10, 0x0

    :goto_17
    iget-boolean v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    const/4 v12, -0x1

    if-eqz v11, :cond_29

    goto :goto_18

    :cond_29
    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v11, :cond_2a

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v13, :cond_2a

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-boolean v13, v13, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v13, :cond_2a

    goto :goto_1c

    :cond_2a
    iget-boolean v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    if-eqz v13, :cond_2b

    :goto_18
    const/4 v10, -0x1

    :goto_19
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_1d

    :cond_2b
    if-eqz v11, :cond_2c

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v13, :cond_2c

    goto :goto_1b

    :cond_2c
    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v13, :cond_2d

    if-eqz v10, :cond_2d

    iget v10, v13, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->spanCount:I

    int-to-float v10, v10

    iget-object v11, v13, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->gridAdapter:Lorg/telegram/ui/GroupCallTabletGridAdapter;

    invoke-virtual {v11}, Lorg/telegram/ui/GroupCallTabletGridAdapter;->getItemCount()I

    move-result v11

    move v13, v11

    const/4 v14, 0x1

    move v11, v10

    const/4 v10, -0x1

    goto :goto_1d

    :cond_2d
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v10, :cond_2e

    if-eqz v11, :cond_2f

    :cond_2e
    iget-boolean v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isFullscreenMode:Z

    if-nez v11, :cond_31

    :cond_2f
    if-eqz v10, :cond_30

    iget v10, v10, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->spanCount:I

    int-to-float v10, v10

    move v11, v10

    const/4 v10, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_1d

    :cond_30
    const/high16 v10, 0x42380000    # 46.0f

    :goto_1a
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_19

    :cond_31
    if-eqz v10, :cond_32

    :goto_1b
    const/high16 v10, 0x42a00000    # 80.0f

    goto :goto_1a

    :cond_32
    :goto_1c
    const/4 v10, 0x0

    goto :goto_19

    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_37

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v10, :cond_34

    if-nez v6, :cond_34

    iget-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->useSpanSize:Z

    if-ne v5, v14, :cond_34

    if-eqz v14, :cond_33

    iget v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->spanCount:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_34

    :cond_33
    iget v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->gridItemsCount:I

    if-eq v5, v13, :cond_37

    :cond_34
    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v14, :cond_35

    goto :goto_1e

    :cond_35
    move v12, v10

    :goto_1e
    iput v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v14, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->useSpanSize:Z

    iput v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->spanCount:F

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->checkScale:Z

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    if-eqz v4, :cond_36

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->animateToLayout()V

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateNextLayoutAnimated:Z

    goto :goto_1f

    :cond_36
    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->requestLayout()V

    :goto_1f
    new-instance v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    :cond_37
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v6, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v6, :cond_38

    iget-boolean v5, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    if-nez v5, :cond_38

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    if-eqz v5, :cond_38

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera()Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v5, v2}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v5, v2}, Lorg/webrtc/TextureViewRenderer;->setUseCameraRotation(Z)V

    goto :goto_20

    :cond_38
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v5, v3}, Lorg/webrtc/TextureViewRenderer;->setMirror(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v5, v2}, Lorg/webrtc/TextureViewRenderer;->setRotateTextureWithScreen(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v5, v3}, Lorg/webrtc/TextureViewRenderer;->setUseCameraRotation(Z)V

    :goto_20
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->updateRotation()V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v5, :cond_39

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    const/16 v6, 0x2d0

    invoke-virtual {v5, v6}, Lorg/webrtc/TextureViewRenderer;->setMaxTextureSize(I)V

    goto :goto_21

    :cond_39
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v5, v3}, Lorg/webrtc/TextureViewRenderer;->setMaxTextureSize(I)V

    :goto_21
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v6, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v5, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-static {v6, v5, v10}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-boolean v6, v5, Lorg/telegram/messenger/ChatObject$Call;->canStreamVideo:Z

    if-nez v6, :cond_3a

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->videoNotAvailableParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eq v6, v5, :cond_3a

    goto :goto_22

    :cond_3a
    const/4 v5, 0x1

    goto/16 :goto_25

    :cond_3b
    :goto_22
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v10

    if-eqz v10, :cond_3c

    iget v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v6, v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-virtual {v6, v10, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v5, v3}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    invoke-static {v5, v2}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    goto :goto_23

    :cond_3c
    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v6, v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-virtual {v6, v10, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v5, v3}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    invoke-static {v5, v2}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    :goto_23
    iget-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v11, v11, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v10, :cond_3d

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v12

    iget-object v10, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    const-string v13, "50_50"

    invoke-virtual {v12, v10, v7, v13}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    if-eqz v10, :cond_3d

    move-object/from16 v19, v10

    goto :goto_24

    :cond_3d
    move-object/from16 v19, v11

    :goto_24
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->avatarImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v6

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const-string v18, "50_50_b"

    move-object/from16 v16, v10

    move-object/from16 v19, v11

    invoke-virtual/range {v16 .. v22}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 v5, 0x0

    :goto_25
    if-eqz v4, :cond_3e

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v6, :cond_3e

    iget-boolean v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez v6, :cond_3e

    if-nez v5, :cond_3e

    const/4 v6, 0x1

    goto :goto_26

    :cond_3e
    const/4 v6, 0x0

    :goto_26
    iget-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eq v5, v10, :cond_45

    if-nez v6, :cond_45

    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3f
    if-eqz v4, :cond_42

    iget-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-nez v5, :cond_40

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_40

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_40
    iget v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    iget-boolean v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eqz v6, :cond_41

    const/4 v6, 0x0

    goto :goto_27

    :cond_41
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_27
    new-array v1, v1, [F

    aput v5, v1, v3

    aput v6, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$6;-><init>(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2a

    :cond_42
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eqz v1, :cond_43

    const/4 v5, 0x0

    goto :goto_28

    :cond_43
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_28
    iput v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    if-eqz v1, :cond_44

    const/16 v1, 0x8

    goto :goto_29

    :cond_44
    const/4 v1, 0x0

    :goto_29
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    iget v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_2a
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eqz v1, :cond_45

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->access$1400(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;Z)V

    :cond_45
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v1, :cond_46

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v6, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    :cond_46
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->statusIcon:Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    invoke-virtual {v1, v5, v4}, Lorg/telegram/ui/Components/voip/GroupCallStatusIcon;->setParticipant(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noVideoStubLayout:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;->access$1400(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView$NoVideoStubLayout;Z)V

    :cond_47
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v4, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v4, :cond_48

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v1, :cond_49

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    if-eqz v1, :cond_49

    goto :goto_2b

    :cond_48
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v1, :cond_49

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->paused:Z

    if-eqz v1, :cond_49

    :goto_2b
    const/4 v3, 0x1

    :cond_49
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPaused:Z

    if-eq v1, v3, :cond_4b

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPaused:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->videoIsPaused:Z

    if-eqz v3, :cond_4a

    const/4 v9, 0x0

    :cond_4a
    invoke-virtual {v1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_4b
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->paused:Z

    if-nez v1, :cond_4f

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-nez v1, :cond_4c

    goto/16 :goto_2c

    :cond_4c
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->loadThumb()V

    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v1, :cond_4e

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v4, v4, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    goto/16 :goto_2e

    :cond_4e
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v4, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v3, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v4, v3, v5, v7}, Lorg/telegram/messenger/voip/VoIPService;->addRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v4, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v3, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v4, v3, v5, v7}, Lorg/telegram/messenger/voip/VoIPService;->addRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_52

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_52

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v1

    if-nez v1, :cond_52

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->postedNoRtmpStreamCallback:Z

    if-nez v1, :cond_52

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->noRtmpStreamCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3a98

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->postedNoRtmpStreamCallback:Z

    goto :goto_2e

    :cond_4f
    :goto_2c
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v1, :cond_50

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v3, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v7, v3}, Lorg/telegram/messenger/voip/VoIPService;->setLocalSink(Lorg/webrtc/VideoSink;Z)V

    goto :goto_2d

    :cond_50
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v4, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v3, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v4, v3}, Lorg/telegram/messenger/voip/VoIPService;->removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v4, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v3, v3, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v1, v4, v3}, Lorg/telegram/messenger/voip/VoIPService;->removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V

    :cond_51
    :goto_2d
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->paused:Z

    if-eqz v1, :cond_52

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Lorg/webrtc/TextureViewRenderer;->isFirstFrameRendered()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->saveThumb()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1}, Lorg/webrtc/TextureViewRenderer;->clearFirstFrame()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_52
    :goto_2e
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateIconColor(Z)V

    :cond_53
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateInfo()V

    return-void
.end method

.method public updateInfo()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public updatePosition(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingAsScrimView:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToScrimView:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetached:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    iget v1, p4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-eqz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->isRemoving(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setAlpha(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setAlpha(F)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    if-nez p1, :cond_5

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v5, v1

    mul-float p1, p1, v5

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v5

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    goto/16 :goto_7

    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p3, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v2, :cond_15

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    const/4 v6, 0x1

    if-eqz v2, :cond_a

    if-eqz p3, :cond_a

    sget-boolean v7, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-boolean v7, v7, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v7, :cond_8

    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_9

    move-object p3, v2

    :cond_9
    if-eqz v0, :cond_c

    goto :goto_1

    :cond_a
    if-eqz v2, :cond_b

    move-object p3, v2

    :cond_b
    if-eqz v2, :cond_c

    :goto_1
    move-object p1, p2

    :cond_c
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->attached:Z

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    if-nez p1, :cond_15

    sget-boolean p1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez p1, :cond_d

    iput-boolean v6, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    sub-float/2addr v5, v1

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p1

    mul-float v5, v5, p1

    :goto_2
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p1, :cond_15

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p1

    mul-float v1, v1, p1

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    :cond_e
    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    const/4 v0, 0x0

    if-nez p3, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v2, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_6

    :cond_10
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v2, :cond_11

    move-object p3, v2

    :cond_11
    if-eqz v2, :cond_12

    move-object p1, p2

    :cond_12
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p3, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p3, p1

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p3, p1

    sub-float p1, v5, v1

    mul-float p2, p2, p1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    mul-float p3, p3, p1

    add-float/2addr p3, v0

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->setRoundCorners(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz p1, :cond_13

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setAlpha(F)V

    :cond_13
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->showingInFullscreen:Z

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez p1, :cond_14

    goto :goto_3

    :cond_14
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    if-nez p1, :cond_15

    goto/16 :goto_2

    :cond_15
    :goto_7
    return-void
.end method

.method public updateSize(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->parentContainer:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->collapseSize:I

    if-eq v1, p1, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->fullSize:I

    if-eq v1, v0, :cond_4

    if-lez v0, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->collapseSize:I

    :cond_2
    if-eqz v0, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->fullSize:I

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->nameView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setFullLayoutAdditionalWidth(II)V

    :cond_4
    return-void
.end method
