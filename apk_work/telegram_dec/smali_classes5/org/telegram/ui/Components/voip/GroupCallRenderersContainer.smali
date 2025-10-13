.class public abstract Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private animateSpeakingOnNextDraw:Z

.field private attachedPeerIds:Lorg/telegram/messenger/support/LongSparseIntArray;

.field private final attachedRenderers:Ljava/util/ArrayList;

.field private final backButton:Landroid/widget/ImageView;

.field call:Lorg/telegram/messenger/ChatObject$Call;

.field private canZoomGesture:Z

.field private drawFirst:Z

.field private drawRenderesOnly:Z

.field fullscreenAnimator:Landroid/animation/ValueAnimator;

.field private final fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

.field public fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

.field public fullscreenPeerId:J

.field public fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

.field groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

.field public hasPinnedVideo:Z

.field hideUiRunnable:Ljava/lang/Runnable;

.field hideUiRunnableIsScheduled:Z

.field public inFullscreenMode:Z

.field public inLayout:Z

.field private isInPinchToZoomTouchMode:Z

.field private isTablet:Z

.field public lastUpdateTime:J

.field lastUpdateTooltipTime:J

.field private final listView:Landroidx/recyclerview/widget/RecyclerView;

.field public listWidth:I

.field maybeSwipeToBackGesture:Z

.field private notDrawRenderes:Z

.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

.field private final pinButton:Landroid/widget/ImageView;

.field pinContainer:Landroid/view/View;

.field pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

.field pinTextView:Landroid/widget/TextView;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field pinchScale:F

.field private pinchStartCenterX:F

.field private pinchStartCenterY:F

.field private pinchStartDistance:F

.field private pinchTranslationX:F

.field private pinchTranslationY:F

.field public pipView:Landroid/widget/ImageView;

.field private pointerId1:I

.field private pointerId2:I

.field public progressToFullscreenMode:F

.field progressToHideUi:F

.field public progressToScrimView:F

.field replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

.field rightShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final rightShadowView:Landroid/view/View;

.field private showSpeakingMembersToast:Z

.field private showSpeakingMembersToastProgress:F

.field private final speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

.field private final speakingMembersText:Landroid/widget/TextView;

.field private final speakingMembersToast:Landroid/widget/FrameLayout;

.field private speakingMembersToastChangeProgress:F

.field private speakingMembersToastFromLeft:F

.field private speakingMembersToastFromRight:F

.field private speakingMembersToastFromTextLeft:F

.field private speakingToastPeerId:J

.field swipeToBackAnimator:Landroid/animation/ValueAnimator;

.field swipeToBackDy:F

.field swipeToBackGesture:Z

.field public swipedBack:Z

.field tapGesture:Z

.field tapTime:J

.field tapX:F

.field tapY:F

.field topShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final topShadowView:Landroid/view/View;

.field private final touchSlop:I

.field uiVisible:Z

.field public undoView:[Lorg/telegram/ui/Components/UndoView;

.field unpinTextView:Landroid/widget/TextView;

.field updateTooltipRunnbale:Ljava/lang/Runnable;

.field zoomBackAnimator:Landroid/animation/ValueAnimator;

.field private zoomStarted:Z


# direct methods
.method public static synthetic $r8$lambda$4Tbd7XdLXeFyXq2hXizmB8rz4sw(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$requestFullscreen$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8f6kmP8gatedbyjXTeZsG9MC3jU(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/GroupCallActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$new$2(Lorg/telegram/ui/GroupCallActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AbKeKg9tBuzfCJWPA-gs-SLga9Y(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$requestFullscreen$3(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AsrohwPlJPNUUTMbO8Mnudur0fc(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$requestFullscreen$4(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MRxzrm_cbRTagd4jXxziCqVaiCI(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z7lym2OwUnGJyM2aqVo4ZHGw2HI(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$animateSwipeToBack$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_DMzcQbqAigJHMlvwX-xev8CyjA(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$finishZoom$8(FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gKDQPbVSGoiBi1PKREuRicd1neE(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hwWltsWY41AKdVCTBydX7V4DUDY(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$setVisibleParticipant$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$qUw210iTLThJI8wvw1UBh1YqPX4(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lambda$requestFullscreen$5(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v4}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedPeerIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    new-instance v4, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v4}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->animateSpeakingOnNextDraw:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$1;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    iput v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    const/4 v6, 0x2

    new-array v7, v6, [Lorg/telegram/ui/Components/UndoView;

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    move-object/from16 v7, p2

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v7, p3

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v7, p4

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    new-instance v7, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$2;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$2;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    new-instance v8, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v7, v11, v9, v12, v9}, Landroid/view/View;->setPadding(IIII)V

    const/16 v11, 0x37

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v12, Landroid/view/View;

    invoke-direct {v12, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowView:Landroid/view/View;

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    sget-object v14, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v15, -0x1000000

    const/16 v6, 0x72

    invoke-static {v15, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    filled-new-array {v9, v11}, [I

    move-result-object v11

    invoke-direct {v13, v14, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v11, 0x42f00000    # 120.0f

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/view/View;

    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowView:Landroid/view/View;

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    sget-object v13, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v15, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    filled-new-array {v9, v6}, [I

    move-result-object v6

    invoke-direct {v12, v13, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v6, 0x8

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0xa0

    const/4 v12, 0x5

    invoke-static {v2, v10, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x38

    const/16 v11, 0x33

    invoke-static {v2, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$3;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$3;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/16 v13, 0x64

    invoke-static {v10, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    invoke-static {v12, v9, v13}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;

    invoke-direct {v13, v0, v1, v12}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    new-instance v14, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda2;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v12, Lorg/telegram/ui/Components/CrossOutDrawable;

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_pin_filled:I

    invoke-direct {v12, v1, v13, v10}, Lorg/telegram/ui/Components/CrossOutDrawable;-><init>(Landroid/content/Context;II)V

    iput-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v12, v13, v14, v4}, Lorg/telegram/ui/Components/CrossOutDrawable;->setOffsets(FFF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v7, v4, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v2, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->CallVideoPin:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->CallVideoUnpin:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    const/4 v4, -0x2

    invoke-static {v4, v4, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-static {v4, v4, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    sget v7, Lorg/telegram/messenger/R$drawable;->ic_goinline:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    sget v7, Lorg/telegram/messenger/R$string;->AccDescrPipMode:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    const/16 v7, 0x37

    invoke-static {v10, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    new-instance v7, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v3}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/GroupCallActivity;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    const/high16 v22, 0x41400000    # 12.0f

    const/high16 v23, 0x41400000    # 12.0f

    const/16 v17, 0x20

    const/high16 v18, 0x42000000    # 32.0f

    const/16 v19, 0x35

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x41400000    # 12.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/16 v7, 0xcc

    invoke-static {v3, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {v2, v1, v5}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v17, 0x64

    const/16 v19, 0x10

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v5, 0x10

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, -0x2

    const/high16 v18, 0x42100000    # 36.0f

    const/16 v19, 0x1

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->touchSlop:I

    const/4 v2, 0x2

    :goto_1
    if-ge v9, v2, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    new-instance v4, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$6;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$6;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;)V

    aput-object v4, v3, v9

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v9

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/UndoView;->setHideAnimationType(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v9

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UndoView;->setAdditionalTranslationY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v9

    const/4 v15, 0x0

    const/high16 v16, 0x41000000    # 8.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x50

    const/high16 v13, 0x41800000    # 16.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setIsTablet(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setUiVisible(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    return p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Lorg/telegram/ui/Components/AvatarsImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromLeft:F

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromTextLeft:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromRight:F

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->clearCurrentFullscreenTextureView()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method private animateSwipeToBack(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    const/4 v2, 0x0

    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    new-array v1, v1, [F

    if-eqz p1, :cond_0

    aput v4, v1, v3

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_0
    aput v4, v1, v3

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$15;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v4, 0x15e

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0xc8

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->synchOrRunAnimation(Landroid/animation/Animator;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTime:J

    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    return-void
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
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId1:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId2:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method private clearCurrentFullscreenTextureView()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setSwipeToBack(ZF)V

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setZoom(ZFFFFF)V

    :cond_0
    return-void
.end method

.method private finishZoom()V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    iget v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    new-instance v5, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v2, v3, v4}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;FFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$16;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTime:J

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canZoomGesture:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isRtmpStream()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$animateSwipeToBack$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$finishZoom$8(FFFLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    mul-float p1, p1, p4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p4

    mul-float v1, v1, v0

    add-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    mul-float p2, p2, p4

    iput p2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    mul-float p3, p3, p4

    iput p3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/CrossOutDrawable;->setCrossOut(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/GroupCallActivity;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getParentActivity()Lorg/telegram/ui/LaunchActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/pip/utils/PipUtils;->checkAnyPipPermissions(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getParentActivity()Lorg/telegram/ui/LaunchActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->show(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->dismiss()V

    goto :goto_0

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getParentActivity()Lorg/telegram/ui/LaunchActivity;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayPermissionDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getParentActivity()Lorg/telegram/ui/LaunchActivity;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->checkInlinePermissions(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->clearForce()V

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->dismiss()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawOverlayGroupCallPermissionDialog(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :goto_1
    return-void
.end method

.method private synthetic lambda$requestFullscreen$3(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$9;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$10;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$10;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$requestFullscreen$4(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$11;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$requestFullscreen$5(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$requestFullscreen$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getMenuItemsContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->invalidateActionBarAlpha()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->invalidateScrollOffsetY()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->update()V

    return-void
.end method

.method private synthetic lambda$setVisibleParticipant$9()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->updateTooltipRunnbale:Ljava/lang/Runnable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setVisibleParticipant(Z)V

    return-void
.end method

.method private setUiVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->onUiVisibilityChanged()V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method


# virtual methods
.method public attach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedPeerIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    return-void
.end method

.method public autoPinEnabled()Z
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected canHideUI()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    return v0
.end method

.method public delayHideUi()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    return-void
.end method

.method public detach(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedPeerIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawRenderesOnly:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iput-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawRenderesOnly:Z

    :cond_0
    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawFirst:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iput-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawFirst:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v1, :cond_e

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget-boolean v4, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v4, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v5, :cond_2

    iget-boolean v6, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetached:Z

    if-nez v6, :cond_2

    iget-object v5, v5, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v5, :cond_2

    sub-float v4, v14, v3

    mul-float v1, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v2, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v8, v13, v1, v5, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v8, v10, v10, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_3
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_5

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    const/16 v3, 0x1f

    invoke-virtual {v8, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_a

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-boolean v4, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v4, :cond_9

    sget-boolean v4, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v4, 0x0

    :goto_5
    sub-int/2addr v3, v4

    invoke-virtual {v8, v10, v10, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setSwipeToBack(ZF)V

    iget-object v15, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    if-nez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/16 v16, 0x1

    :goto_7
    iget v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    iget v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterX:F

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterY:F

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    iget v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual/range {v15 .. v21}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setZoom(ZFFFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    const/4 v15, 0x0

    :goto_8
    const/4 v1, 0x2

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v16, 0x40000000    # 2.0f

    if-ge v15, v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_9

    :cond_f
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float v3, v14, v3

    mul-float v1, v1, v3

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    goto :goto_a

    :cond_10
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_a
    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v1

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v8, v13, v13, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-eqz v3, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_c

    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sget-boolean v4, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    goto :goto_b

    :cond_12
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_b
    int-to-float v4, v4

    sub-float/2addr v2, v4

    add-float/2addr v2, v1

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float v1, v1, v12

    float-to-int v6, v1

    const/4 v3, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_d

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v16

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v4, v4, v15

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v15

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    :cond_15
    iget v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float v3, v14, v3

    mul-float v1, v1, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v3, :cond_19

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v4, :cond_19

    iget-boolean v3, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    iget-boolean v5, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eq v3, v5, :cond_17

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v3

    if-nez v5, :cond_16

    sub-float v3, v14, v3

    :cond_16
    mul-float v3, v3, v1

    goto :goto_e

    :cond_17
    if-nez v5, :cond_18

    const/4 v3, 0x0

    goto :goto_e

    :cond_18
    move v3, v1

    :goto_e
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v3, v3, v12

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_10

    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v3, :cond_1a

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v12, v12, v1

    iget v3, v3, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    sub-float v3, v14, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget v4, v4, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->progressToNoVideoStub:F

    sub-float v4, v14, v4

    mul-float v12, v12, v4

    float-to-int v4, v12

    :goto_f
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_10

    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v12, v12, v1

    float-to-int v4, v12

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_f

    :goto_10
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    const/high16 v4, 0x42900000    # 72.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float v5, v14, v5

    mul-float v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_11

    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v3, v13}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_11

    :cond_1c
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v3, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pipView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v5, v5, v16

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/CrossOutDrawable;->getProgress()F

    move-result v6

    mul-float v4, v4, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/CrossOutDrawable;->getProgress()F

    move-result v6

    sub-float v6, v14, v6

    mul-float v3, v3, v6

    add-float/2addr v4, v3

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v3, :cond_1d

    const/high16 v3, 0x43a40000    # 328.0f

    :goto_12
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_13
    int-to-float v3, v3

    sub-float/2addr v4, v3

    goto :goto_14

    :cond_1d
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v3, :cond_1e

    const/high16 v3, 0x43340000    # 180.0f

    goto :goto_12

    :cond_1e
    const/4 v3, 0x0

    goto :goto_13

    :goto_14
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v4, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v5, v5, v16

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setAlpha(F)V

    goto :goto_15

    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CrossOutDrawable;->getProgress()F

    move-result v4

    sub-float v4, v14, v4

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CrossOutDrawable;->getProgress()F

    move-result v4

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_15
    iget v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    cmpl-float v3, v1, v14

    if-eqz v3, :cond_21

    const v3, 0x3d94f209

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_20

    iput v14, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    goto :goto_16

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_16
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_21
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    const v3, 0x3dda740e

    if-eqz v1, :cond_22

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    cmpl-float v5, v4, v14

    if-eqz v5, :cond_22

    add-float/2addr v4, v3

    iput v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    cmpl-float v1, v4, v14

    if-lez v1, :cond_23

    iput v14, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    goto :goto_17

    :cond_22
    if-nez v1, :cond_24

    iget v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    cmpl-float v4, v1, v13

    if-eqz v4, :cond_24

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    cmpg-float v1, v1, v13

    if-gez v1, :cond_23

    iput v13, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    goto :goto_17

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_24
    :goto_17
    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v1, :cond_25

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_18

    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    sub-float/2addr v14, v4

    mul-float v3, v3, v14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    mul-float v2, v2, v4

    add-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_18
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    iget v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    iget v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    iget v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    iget v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    mul-float v2, v2, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    sget-boolean v1, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v1, :cond_26

    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->notDrawRenderes:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iput-boolean v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->notDrawRenderes:Z

    goto :goto_19

    :cond_26
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_19
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_28

    :goto_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v10, v1, :cond_28

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v16

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->drawOverlays(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_27
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_28
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawFirst:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    instance-of v0, p2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    if-eq p2, v4, :cond_a

    aget-object v0, v0, v2

    if-ne p2, v0, :cond_2

    goto/16 :goto_2

    :cond_2
    instance-of v0, p2, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eq v0, v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eq v0, v4, :cond_7

    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->notDrawRenderes:Z

    if-nez v4, :cond_7

    iget-boolean v4, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->drawFirst:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v0, :cond_4

    const/4 v4, 0x0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v4

    mul-float v2, v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v4

    add-float/2addr v3, v0

    invoke-virtual {p1, v1, v2, v5, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    :cond_5
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_0

    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    return v2

    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawRenderesOnly:Z

    if-eqz v0, :cond_9

    return v2

    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_a
    :goto_2
    return v2
.end method

.method public getUndoView()Lorg/telegram/ui/Components/UndoView;
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    aput-object v4, v0, v1

    aput-object v2, v0, v3

    const/4 v0, 0x2

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUiVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    return v0
.end method

.method public isVisible(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)Z
    .locals 2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedPeerIds:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract onBackPressed()V
.end method

.method protected abstract onFullScreenModeChanged(Z)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x43a40000    # 328.0f

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_0
    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isRtmpStream()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/high16 v2, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->topShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->rightShadowView:Landroid/view/View;

    sget-boolean v2, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    goto :goto_5

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    goto :goto_4

    :goto_5
    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-boolean v2, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    :goto_6
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v0, 0x0

    :goto_7
    const/4 v2, 0x2

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-eqz v3, :cond_6

    const/high16 v3, 0x43ac0000    # 344.0f

    :goto_8
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_9
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_a

    :cond_6
    sget-boolean v3, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v3, :cond_7

    const/high16 v3, 0x43340000    # 180.0f

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    goto :goto_9

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupCallActivity;->fullscreenFor(Lorg/telegram/messenger/ChatObject$VideoParticipant;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->animateSwipeToBack(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canZoomGesture:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-nez v0, :cond_6

    goto/16 :goto_11

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_7

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canZoomGesture:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v5, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    sub-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    return v4

    :cond_9
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->isInsideStopScreenButton(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez v0, :cond_d

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sget-boolean v9, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-eqz v9, :cond_b

    iget-boolean v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    if-eqz v9, :cond_b

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    goto :goto_2

    :cond_b
    const/4 v9, 0x0

    :goto_2
    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sget-boolean v10, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v10, :cond_c

    iget-boolean v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    if-eqz v10, :cond_c

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    neg-int v10, v10

    goto :goto_3

    :cond_c
    const/4 v10, 0x0

    :goto_3
    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapTime:J

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    goto/16 :goto_5

    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    if-eqz v0, :cond_13

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_13

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->touchSlop:I

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->touchSlop:I

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_10

    :cond_f
    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    if-nez v0, :cond_11

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->touchSlop:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    goto :goto_4

    :cond_11
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapY:F

    sub-float/2addr v0, v7

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_12
    :goto_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->touchSlop:I

    mul-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_13

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    :cond_13
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0xc8

    cmp-long v0, v7, v9

    if-gez v0, :cond_19

    iput-boolean v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    if-eqz v0, :cond_16

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v7, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v9, v9, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_15

    iget-wide v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingToastPeerId:J

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v11, v11, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v11, v11, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-nez v13, :cond_14

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    iget-object v8, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v8, v8, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/GroupCallActivity;->fullscreenFor(Lorg/telegram/messenger/ChatObject$VideoParticipant;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    if-nez v7, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    iget-wide v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingToastPeerId:J

    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    new-instance v8, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-direct {v8, v0, v4, v4}, Lorg/telegram/messenger/ChatObject$VideoParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/GroupCallActivity;->fullscreenFor(Lorg/telegram/messenger/ChatObject$VideoParticipant;)V

    const/4 v8, 0x1

    goto :goto_7

    :cond_16
    const/4 v8, 0x0

    :cond_17
    :goto_7
    if-nez v8, :cond_18

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->uiVisible:Z

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setUiVisible(Z)V

    :cond_18
    iput v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackDy:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->hasVideo:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-eqz v0, :cond_1a

    goto/16 :goto_f

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v9, 0x5

    if-ne v0, v9, :cond_1b

    goto/16 :goto_b

    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    if-eqz v0, :cond_22

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v5, -0x1

    :goto_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v1, v9, :cond_1e

    iget v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_1c

    move v2, v1

    :cond_1c
    iget v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_1d

    move v5, v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1e
    if-eq v2, v0, :cond_21

    if-ne v5, v0, :cond_1f

    goto/16 :goto_9

    :cond_1f
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartDistance:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    const v1, 0x3f80a3d7    # 1.005f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    if-nez v0, :cond_20

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartDistance:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterX:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterY:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterY:F

    iput v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    iput v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    iput v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->zoomStarted:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    :cond_20
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v1, p1

    div-float/2addr v1, v8

    iget p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterX:F

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterY:F

    sub-float/2addr v0, v1

    neg-float p1, p1

    iget v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    div-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationX:F

    neg-float p1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchTranslationY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_d

    :cond_21
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    return p1

    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_23

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_28

    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    goto/16 :goto_d

    :cond_25
    :goto_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {v2, v6, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v9, v9, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    mul-float v6, v6, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v6, v9

    div-float/2addr v6, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget v10, v10, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    mul-float v9, v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v9, v0

    div-float/2addr v9, v8

    invoke-virtual {v2, v6, v9}, Landroid/graphics/RectF;->inset(FF)V

    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez v0, :cond_26

    iget v0, v2, Landroid/graphics/RectF;->top:F

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->top:F

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_c

    :cond_26
    iget v0, v2, Landroid/graphics/RectF;->top:F

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->top:F

    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    :goto_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v0, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canZoomGesture:Z

    if-nez v0, :cond_27

    goto/16 :goto_a

    :cond_27
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_28

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartDistance:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterX:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterX:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchCenterY:F

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchStartCenterY:F

    iput v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinchScale:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pointerId2:I

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isInPinchToZoomTouchMode:Z

    :cond_28
    :goto_d
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canZoomGesture:Z

    if-nez p1, :cond_2a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    if-nez p1, :cond_2a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-eqz p1, :cond_29

    goto :goto_e

    :cond_29
    const/4 v3, 0x0

    :cond_2a
    :goto_e
    return v3

    :cond_2b
    :goto_f
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->tapGesture:Z

    if-nez p1, :cond_2d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    if-nez p1, :cond_2d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->maybeSwipeToBackGesture:Z

    if-eqz p1, :cond_2c

    goto :goto_10

    :cond_2c
    const/4 v3, 0x0

    :cond_2d
    :goto_10
    return v3

    :cond_2e
    :goto_11
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->finishZoom()V

    return v4
.end method

.method protected abstract onUiVisibilityChanged()V
.end method

.method public requestFullscreen(Lorg/telegram/messenger/ChatObject$VideoParticipant;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p1, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez p1, :cond_3

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->runDelayedAnimations()V

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v6, :cond_6

    iget-object v7, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v6, v6, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v5, v7, v0, v6}, Lorg/telegram/messenger/voip/VoIPService;->requestFullScreen(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V

    :cond_6
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v5, :cond_7

    if-eqz p1, :cond_7

    iget-object v6, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v7, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    invoke-virtual {v5, v6, v1, v7}, Lorg/telegram/messenger/voip/VoIPService;->requestFullScreen(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V

    :cond_7
    iput-wide v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenPeerId:J

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTime:J

    const-wide/16 v4, 0x15e

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v9, :cond_9

    iget-object v9, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v9, :cond_9

    iget-object v9, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v9, :cond_a

    :cond_9
    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v9, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean p1, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-static {v9, p1, v10}, Lorg/telegram/messenger/ChatObject$Call;->videoIsActive(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/telegram/messenger/ChatObject$Call;)Z

    move-result p1

    if-nez p1, :cond_e

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetach(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v9, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$7;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$7;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    :cond_f
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    goto/16 :goto_b

    :cond_10
    const/4 v9, 0x0

    :goto_2
    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_12

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v10, v10, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    invoke-virtual {v10, p1}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    goto :goto_3

    :cond_11
    add-int/2addr v9, v1

    goto :goto_2

    :cond_12
    move-object v9, v6

    :goto_3
    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v9, :cond_1d

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_13
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez p1, :cond_14

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->clearCurrentFullscreenTextureView()V

    iput-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v9, v1, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    iget-boolean v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    invoke-virtual {p1, v6, v0}, Lorg/telegram/ui/Components/CrossOutDrawable;->setCrossOut(ZZ)V

    goto/16 :goto_a

    :cond_14
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hasPinnedVideo:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/CrossOutDrawable;->setCrossOut(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetach(Z)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetach(Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v11, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v11, :cond_15

    iget-object v11, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-nez v11, :cond_15

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz p1, :cond_18

    :cond_15
    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v12, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {v6, p0, p1, v11, v12}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v11, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    iget-object v12, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    invoke-virtual {v6, v11, v12, p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setViews(Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {v6, p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz p1, :cond_16

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz p1, :cond_17

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz p1, :cond_18

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_18
    new-instance p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iget-object v12, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v13, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p1, p0, v11, v12, v13}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    iget-object v11, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iput-object v11, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v11, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    iget-object v12, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    iget-object v13, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    invoke-virtual {p1, v11, v12, v13}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setViews(Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V

    iget-boolean v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {p1, v11, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    iget-object v11, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v11, v11, Lorg/telegram/ui/Components/voip/VoIPTextureView;->renderer:Lorg/webrtc/TextureViewRenderer;

    invoke-virtual {v11, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v11, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v11, v11, Lorg/telegram/ui/Components/voip/VoIPTextureView;->blurRenderer:Landroid/view/TextureView;

    invoke-virtual {v11, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v11, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v11, :cond_19

    invoke-virtual {v11, p1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_19
    iget-object v11, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v11, :cond_1a

    invoke-virtual {v11, p1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_1a
    iget-object v11, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v11, :cond_1b

    invoke-virtual {v11, p1}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_1b
    iput-boolean v1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iput-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v2, [F

    fill-array-data v12, :array_0

    invoke-static {p1, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iput-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v12, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$8;

    invoke-direct {v12, p0, p1, v9}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$8;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v11, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v6, :cond_1c

    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleY(F)V

    iput-boolean v1, v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    :cond_1c
    new-instance v10, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda6;

    invoke-direct {v10, p0, v9, v6}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {p1, v10}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->runOnFrameRendered(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->clearCurrentFullscreenTextureView()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->update()V

    goto/16 :goto_a

    :cond_1d
    iget-boolean v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v6, :cond_25

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-nez v9, :cond_21

    iget-object v9, v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v9, :cond_1e

    const/4 v9, 0x1

    goto :goto_6

    :cond_1e
    const/4 v9, 0x0

    :goto_6
    iget-object v11, v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v11, :cond_1f

    const/4 v11, 0x1

    goto :goto_7

    :cond_1f
    const/4 v11, 0x0

    :goto_7
    or-int/2addr v9, v11

    if-eqz v9, :cond_20

    goto :goto_8

    :cond_20
    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetach(Z)V

    goto :goto_9

    :cond_21
    :goto_8
    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->forceDetach(Z)V

    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v12, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {v6, p0, v9, v11, v12}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v11, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    iget-object v12, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    iget-object v9, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    invoke-virtual {v6, v11, v12, v9}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setViews(Lorg/telegram/ui/Components/voip/GroupCallGridCell;Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;Lorg/telegram/ui/Components/voip/GroupCallGridCell;)V

    iget-boolean v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {v6, v9, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->primaryView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v9, :cond_22

    invoke-virtual {v9, v6}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_22
    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->secondaryView:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    if-eqz v9, :cond_23

    invoke-virtual {v9, v6}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_23
    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, v9, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->tabletGridView:Lorg/telegram/ui/Components/voip/GroupCallGridCell;

    if-eqz v9, :cond_24

    invoke-virtual {v9, v6}, Lorg/telegram/ui/Components/voip/GroupCallGridCell;->setRenderer(Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    :cond_24
    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setScaleY(F)V

    iput-boolean v1, v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    new-instance v9, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda7;

    invoke-direct {v9, p0, v6}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->runOnFrameRendered(Ljava/lang/Runnable;)V

    :goto_9
    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {v6, p0, v9, v10, v11}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    iput-object p1, v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {v6, p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    invoke-virtual {v6, v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    iput-boolean v1, v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateEnter:Z

    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->outFullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    new-array p1, v2, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda8;

    invoke-direct {v9, p0, v6}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {p1, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$12;

    invoke-direct {v9, p0, v6}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$12;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {p1, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->clearCurrentFullscreenTextureView()V

    iput-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {v6, v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->updateAttachState(Z)V

    goto/16 :goto_5

    :cond_25
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->clearCurrentFullscreenTextureView()V

    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v9, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v11, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {v6, p0, v9, v10, v11}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iput-object p1, v6, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    invoke-virtual {v6, p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setFullscreenMode(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setShowingInFullscreen(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v2, [F

    fill-array-data v9, :array_2

    invoke-static {p1, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$13;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$13;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {p1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->replaceFullscreenViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_4

    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_b
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eq v3, p1, :cond_29

    if-nez p1, :cond_26

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setUiVisible(Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    if-eqz p1, :cond_27

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnableIsScheduled:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->hideUiRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_c

    :cond_26
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_27
    :goto_c
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->onFullScreenModeChanged(Z)V

    iget p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz v3, :cond_28

    goto :goto_d

    :cond_28
    const/4 v7, 0x0

    :goto_d
    new-array v2, v2, [F

    aput p1, v2, v0

    aput v7, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iput-boolean v1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->animateToFullscreen:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipeToBackGesture:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->swipedBack:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$14;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$14;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->textureView:Lorg/telegram/ui/Components/voip/VoIPTextureView;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/voip/VoIPTextureView;->synchOrRunAnimation(Landroid/animation/Animator;)V

    :cond_29
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-nez p1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->animateSwipeToBack(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAmplitude(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;F)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->participant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->attachedRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    float-to-double v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->setAmplitude(D)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupCall(Lorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    return-void
.end method

.method public setIsTablet(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-eq v0, p1, :cond_4

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 v1, 0x55

    goto :goto_0

    :cond_0
    const/16 v1, 0x33

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/high16 v2, 0x43a40000    # 328.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eqz p1, :cond_2

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_calls_minimize:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    new-instance p1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {p1, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public setProgressToHideUi(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToHideUi:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenTextureView:Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVisibleParticipant(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isTablet:Z

    if-nez v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->groupCallActivity:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTooltipTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->updateTooltipRunnbale:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    new-instance v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->updateTooltipRunnbale:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTooltipTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->lastUpdateTooltipTime:J

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v10, v10, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10}, Landroidx/collection/LongSparseArray;->size()I

    move-result v10

    const/4 v11, 0x3

    if-ge v5, v10, :cond_10

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v10, v10, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v10, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v10, v10, Lorg/telegram/messenger/ChatObject$Call;->currentSpeakingPeers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v10, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v12, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-nez v12, :cond_3

    iget-boolean v12, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted_by_you:Z

    if-nez v12, :cond_3

    iget-object v12, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->fullscreenParticipant:Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-object v12, v12, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-nez v16, :cond_4

    :cond_3
    move/from16 v17, v5

    goto/16 :goto_5

    :cond_4
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move/from16 v17, v5

    iget-wide v4, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->lastSpeakTime:J

    sub-long/2addr v14, v4

    cmp-long v4, v14, v6

    if-gez v4, :cond_f

    if-nez v8, :cond_5

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    :cond_5
    if-nez v9, :cond_6

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingToastPeerId:J

    :cond_6
    if-ge v9, v11, :cond_e

    const-wide/16 v4, 0x0

    cmp-long v14, v12, v4

    if-lez v14, :cond_7

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v14

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    :goto_1
    cmp-long v15, v12, v4

    if-gtz v15, :cond_8

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    if-nez v14, :cond_9

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v5, v9, v1, v10}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    if-eqz v9, :cond_a

    const-string v5, ", "

    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_a
    const/16 v5, 0x15

    if-eqz v14, :cond_d

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_b

    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    :goto_3
    invoke-static {v8, v4, v5, v3}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    :cond_b
    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    :cond_c
    invoke-virtual {v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    :cond_d
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-lt v10, v5, :cond_c

    new-instance v5, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_e
    :goto_4
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v11, :cond_f

    goto :goto_6

    :cond_f
    :goto_5
    add-int/lit8 v5, v17, 0x1

    goto/16 :goto_0

    :cond_10
    :goto_6
    const/4 v4, 0x1

    if-nez v9, :cond_11

    const/4 v5, 0x0

    goto :goto_7

    :cond_11
    const/4 v5, 0x1

    :goto_7
    iget-boolean v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    if-nez v6, :cond_12

    if-eqz v5, :cond_12

    const/4 v2, 0x0

    goto :goto_8

    :cond_12
    if-nez v5, :cond_13

    if-eqz v6, :cond_13

    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_13
    if-eqz v6, :cond_14

    if-eqz v5, :cond_14

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromLeft:F

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToast:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromRight:F

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastFromTextLeft:F

    iput v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersToastChangeProgress:F

    :cond_14
    move/from16 v2, p1

    :goto_8
    if-nez v5, :cond_15

    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_15
    const-string v6, "MembersAreSpeakingToast"

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "un1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/lit8 v6, v7, 0x3

    invoke-virtual {v10, v7, v6, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v9, :cond_16

    goto :goto_a

    :cond_16
    if-ne v9, v4, :cond_17

    const/high16 v3, 0x42200000    # 40.0f

    :goto_9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_a

    :cond_17
    const/4 v3, 0x2

    if-ne v9, v3, :cond_18

    const/high16 v3, 0x42800000    # 64.0f

    goto :goto_9

    :cond_18
    const/high16 v3, 0x42b00000    # 88.0f

    goto :goto_9

    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput-boolean v5, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_b
    if-ge v9, v11, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v1, v4}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->speakingMembersAvatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    return-void

    :cond_1a
    :goto_c
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    if-eqz v1, :cond_1b

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToast:Z

    iput v2, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->showSpeakingMembersToastProgress:F

    :cond_1b
    return-void
.end method

.method protected update()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
