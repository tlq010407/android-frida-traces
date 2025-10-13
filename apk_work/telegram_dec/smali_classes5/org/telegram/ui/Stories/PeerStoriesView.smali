.class public abstract Lorg/telegram/ui/Stories/PeerStoriesView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;,
        Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;,
        Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;,
        Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;,
        Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;
    }
.end annotation


# static fields
.field public static DISABLE_STORY_REPOSTING:Z = false

.field private static activeCount:I


# instance fields
.field private BIG_SCREEN:Z

.field private allowDrawSurface:Z

.field allowDrawSurfaceRunnable:Ljava/lang/Runnable;

.field private allowRepost:Z

.field private allowShare:Z

.field private allowShareLink:Z

.field private alpha:F

.field animateKeyboardOpening:Z

.field private animatingKeyboardHeight:F

.field private attachedToWindow:Z

.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private final bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private final bottomActionsLinearLayout:Landroid/widget/LinearLayout;

.field private canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

.field private cancellableViews:Ljava/lang/Runnable;

.field private changeBoundAnimator:Landroid/animation/ValueAnimator;

.field chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field checkBlackoutMode:Z

.field private classGuid:I

.field count:I

.field private currentAccount:I

.field private currentImageTime:J

.field public final currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

.field day:Ljava/util/ArrayList;

.field delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

.field private deletedPeer:Z

.field private dialogId:J

.field documentsToPrepare:Ljava/util/ArrayList;

.field private drawAnimatedEmojiAsMovingReaction:Z

.field private drawReactionEffect:Z

.field public editOpened:Z

.field editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private editedPrivacy:Z

.field private emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

.field private emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

.field private enterViewBottomOffset:I

.field private failView:Lorg/telegram/ui/Stories/StoryFailView;

.field private failViewAnimator:Landroid/view/ViewPropertyAnimator;

.field public forceUpdateOffsets:Z

.field headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

.field private imageChanged:Z

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field inBlackoutMode:Z

.field inputBackgroundPaint:Landroid/graphics/Paint;

.field private instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

.field isActive:Z

.field private isCaptionPartVisible:Z

.field isChannel:Z

.field private isEditing:Z

.field private isFailed:Z

.field isGroup:Z

.field private isLongPressed:Z

.field isPremiumBlocked:Z

.field private isRecording:Z

.field isSelf:Z

.field private isUploading:Z

.field private isVisible:Z

.field keyboardAnimator:Landroid/animation/ValueAnimator;

.field public keyboardVisible:Z

.field lastAnimatingKeyboardHeight:F

.field private lastDrawTime:J

.field lastKeyboardHeight:I

.field private lastNoThumb:Z

.field lastOpenedKeyboardHeight:I

.field private final leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final likeButtonContainer:Landroid/widget/FrameLayout;

.field private likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private likesReactionShowProgress:F

.field private likesReactionShowing:Z

.field private linesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private linesCount:I

.field private linesPosition:I

.field private listPosition:I

.field private mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

.field private mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

.field private messageSent:Z

.field private movingReaction:Z

.field private movingReactionFromSize:I

.field private movingReactionFromX:I

.field private movingReactionFromY:I

.field private movingReactionProgress:F

.field private final muteIconContainer:Landroid/widget/FrameLayout;

.field private final muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private muteIconViewAlpha:F

.field private final noSoundIconView:Landroid/widget/ImageView;

.field final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private onImageReceiverThumbLoaded:Ljava/lang/Runnable;

.field private final optionsIconView:Landroid/widget/ImageView;

.field private outAnimator:Landroid/animation/ValueAnimator;

.field private outT:F

.field outlineProvider:Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

.field private paused:Z

.field public pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

.field final playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

.field popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

.field private final preloadReactionHolders:Ljava/util/ArrayList;

.field private premiumBlockedText:Landroid/widget/LinearLayout;

.field private premiumBlockedText1:Landroid/widget/TextView;

.field private premiumBlockedText2:Landroid/widget/TextView;

.field private prevToHideProgress:F

.field private previousSelectedPotision:I

.field private final privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

.field private privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field progressToDismiss:F

.field private progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToKeyboard:F

.field progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToReply:F

.field progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

.field private reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private reactionsContainerIndex:I

.field reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field private reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private reactionsCounterVisible:Z

.field private reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private reactionsTooltipRunnable:Ljava/lang/Runnable;

.field private realKeyboardHeight:I

.field private replyDisabledTextView:Landroid/widget/TextView;

.field private repostButton:Landroid/widget/ImageView;

.field private repostButtonContainer:Landroid/widget/FrameLayout;

.field private repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private repostCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private repostCounterVisible:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private selectedPosition:I

.field private selfAvatarsContainer:Landroid/view/View;

.field private selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

.field private selfStatusView:Landroid/widget/TextView;

.field private selfView:Landroid/widget/FrameLayout;

.field public shareAlert:Lorg/telegram/ui/Components/ShareAlert;

.field private final shareButton:Landroid/widget/ImageView;

.field final sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

.field private shiftDp:I

.field private final showTapToSoundHint:Ljava/lang/Runnable;

.field showViewsProgress:Z

.field private soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private speedLayout:Lorg/telegram/ui/ChooseSpeedLayout;

.field starsPriceBlocked:J

.field private stealthModeIsActive:Z

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;

.field private storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

.field private storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

.field private final storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

.field public storyContainer:Landroid/widget/FrameLayout;

.field private storyEditCaptionView:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

.field final storyItems:Ljava/util/ArrayList;

.field private final storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

.field private storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

.field private final storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field private switchEventSent:Z

.field private totalStoriesCount:I

.field public unsupported:Z

.field private unsupportedContainer:Landroid/widget/FrameLayout;

.field updateStealthModeTimer:Ljava/lang/Runnable;

.field final uploadingStories:Ljava/util/ArrayList;

.field uriesToPrepare:Ljava/util/ArrayList;

.field private userCanSeeViews:Z

.field userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

.field public videoDuration:J

.field private viewsThumbAlpha:F

.field private viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

.field private viewsThumbPivotY:F

.field private viewsThumbScale:F

.field private wasBigScreen:Z


# direct methods
.method public static synthetic $r8$lambda$-8LUI-RqTMedh0VAnxBPiA8MV4s(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$deleteStory$36(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$-XPKatogrndELVUKR_WpxwmcrQo(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createSelfPeerView$34(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0ybDyca88N9KtVlzwuRJyfgnlNo(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1DCFxQkivacfa4my84cacCQ4HO4(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createQualityItem$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1rVmqb9-jUloVbtSTtJyicHtxSg(Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$openRepostStory$30(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$5_Rd0S3d1QYTxSfV-qT8DTrltrs(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6d4FaqYCUAz2LjRkKx7E6ZC8zV8(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$42()V

    return-void
.end method

.method public static synthetic $r8$lambda$7fMOMmWZefBO1nNjDS6p4CeusaE(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$7vMACBCsVriIw7Qxk6JE1fUe_q8(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$9psJImkwLdYiaWH1XzgzTCC-h4w(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BDlXmEovtA75FJ6-oBqFdCVGKAI(Lorg/telegram/ui/Stories/PeerStoriesView;JLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$39(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Brq-4WIEzQ0PhffOLRIJOL_wpzc(Lorg/telegram/ui/Stories/PeerStoriesView;ZLandroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$saveToGallery$26(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dp0UEDQ7yTfEZlSn5Xy6PoabMaE(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$Euoshi_w6T5ZQBLCHlVx68ywuY4(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$showPremiumBlockedToast$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$Fig_zKb5BQTuwdkbKcwnV7LUzmI(Lorg/telegram/ui/Stories/PeerStoriesView;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$checkRecordLocked$48(ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GLDqLcWrE3IPgxoS9BJOptuXcH0(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createStealthModeItem$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GpbtxGpI7segUcw35m74SBhYVo0(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createFailView$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GsatqvX2ad95rJoUa5zZ7zbUpyE(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$IhrqvJEE3r8ZpbWoER-S2uxTbMY(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$45(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J99gS3_5GjmKDqqlAkmDMeDuc9o(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$applyMessageToChat$24(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LfiL7xHAPzgBu2-b1YDTy1OkXnc(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$openRepostStory$32(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O-KntNnMNsjqoT6_zMO5GcGlxLQ(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$showPremiumBlockedToast$21(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OYQoWSVjZix4jlaUClwJ8byrGm8(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$animateOut$49(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PGN7rbWGbTLb_KygrR7xBgg75Dw(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Long;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$openRepostStory$28(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Long;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TNMyu7DvcuTU6_97fyWzZqIqt3Q(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openChat()V

    return-void
.end method

.method public static synthetic $r8$lambda$TnKl_XtUIRaYwB2OKRF1Fv1WvBk(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$deleteStory$35(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uzu4iriZb0W4tzvdjdr9ZPTL4Zo(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$5(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$a9U0719A15z-N4bahTAFaKgDA30(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$onMeasure$43(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aGLAOFA5fKBbQV5wpH77_7nMzcg(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$46(Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bmD9lfJ7zWjzOgo-ERQ1aZOGwbc(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dBKmKkm7EBqwpYHmFt6REKAVdBA(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createStealthModeItem$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUfr-07gIAvWpbgV4gOIncZVCqM(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$openRepostStory$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$dsLIYjO1FoFSztwHouHD0ONIKhY(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$fuYRl7DePxUL51zu40gUcbY6akU(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$10(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gIELHR5oKFz6fkU2t83Wk9ayRiU(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$needEnterText$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$hbE3cklTyesL4Ez2nPkP7qaQ5yY(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$showPremiumBlockedToast$22(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iDtVFmu2DDKwFfTiDhlMdl5ILQg(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$toggleArchiveForStory$17(Lorg/telegram/messenger/MessagesController;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$iLnfwuE-lRiyb9o3V-uWbFlBxsg(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$updatePosition$38(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jR00T5OmQpVeDzMqC5466hFMv2s(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$toggleArchiveForStory$18(Lorg/telegram/messenger/MessagesController;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$k2fZPzdV3MYa2I2CSxrXwGoD_w4(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$openRepostStory$29(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kyzTHuxx4v-e9oylZqvO4zECMJc(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$7(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lxKg92QZAn3CGVuSy018jqTJqd8(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYX7QIlDEA2YFJuxafujAkWeG-c(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$applyMessageToChat$25(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pv6a5I-d9M4alOzwW-AZCLN_LAA(Lorg/telegram/ui/Stories/PeerStoriesView;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createQualityItem$13(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qzHDEdSRBhKjrPpz_1pEgcGaYgo(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$new$6(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r6dHw6agi13rr3Z2NfCzMSZsyxI(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openRepostStory()V

    return-void
.end method

.method public static synthetic $r8$lambda$rM3w7hQjcixV0tBIRPsWot1pR7c(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$openRepostStory$31(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$snG2mXTqRnDmmDq7sVbHk7VGYKs(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createUnsupportedContainer$33(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vXPIMVs0avHtpVbOkSXVvnv84to(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$editPrivacy$47(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yV_z1p0ZDL4ClIBoSwXN2naqEYE(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$showLikesReaction$16(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXjtvYhT2s7Q5HHKFyvBiKqM4Wk(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$toggleArchiveForStory$19(Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z9Ccdo2q6Q92wZQgJHLGIEoDlvo(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->lambda$createQualityItem$14(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    iput-boolean v10, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    const/4 v0, -0x5

    iput v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->alpha:F

    const/4 v11, -0x1

    iput v11, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->previousSelectedPotision:I

    new-instance v12, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-direct {v12, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v12, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    const/high16 v13, -0x40800000    # -1.0f

    iput v13, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iput v13, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    iput v13, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v1

    iput v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->linesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v1, Lorg/telegram/ui/PinchToZoomHelper;

    invoke-direct {v1}, Lorg/telegram/ui/PinchToZoomHelper;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    iput v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStealthModeTimer:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda7;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->showTapToSoundHint:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$31;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$31;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$1;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PinchToZoomHelper;->setCallback(Lorg/telegram/ui/PinchToZoomHelper$Callback;)V

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/ui/Stories/PeerStoriesView$2;

    invoke-direct {v14, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v14, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    invoke-virtual {v14, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iput-boolean v10, v14, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v10, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-boolean v10, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iput-boolean v10, v0, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    invoke-virtual {v0, v15}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iput-boolean v10, v1, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    invoke-virtual {v1, v15}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    const/4 v4, 0x2

    new-array v2, v4, [Lorg/telegram/messenger/ImageReceiver;

    aput-object v0, v2, v15

    aput-object v1, v2, v10

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/telegram/messenger/ImageReceiver;->setPreloadingReceivers(Ljava/util/List;)V

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iput-object v8, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object v9, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v0, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$100(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p4

    iput-object v3, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$3;

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    move-object v0, v2

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object v10, v2

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$3;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v10, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;

    invoke-direct {v0, v6, v7, v9, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$4;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v0, Lorg/telegram/ui/EmojiAnimationsOverlay;

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay;-><init>(Landroid/widget/FrameLayout;I)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    invoke-static {v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Stories/PeerStoriesView$5;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v8, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$5;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v10, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v10, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda8;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v13, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    iget-object v0, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->shareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v13, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda9;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v13}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    sget-boolean v2, Lorg/telegram/ui/Stories/PeerStoriesView;->DISABLE_STORY_REPOSTING:Z

    if-nez v2, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButton:Landroid/widget/ImageView;

    iget-object v3, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->repostDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$6;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$6;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v15}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda10;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$7;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$7;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v5, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    invoke-virtual {v5, v15}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda11;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda12;

    invoke-direct {v2, v6, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v2, Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-direct {v2, v7, v9}, Lorg/telegram/ui/Stories/StoriesLikeButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    iput-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    const/16 v2, 0x28

    const/4 v3, 0x3

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    iget-object v4, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButton:Landroid/widget/ImageView;

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const v1, 0x3e99999a    # 0.3f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v5, v1, v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    iget-object v4, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    invoke-static {v4, v1, v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v14, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_5

    new-instance v1, Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lorg/telegram/ui/Stories/RoundRectOutlineProvider;-><init>(I)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->outlineProvider:Lorg/telegram/ui/Stories/RoundRectOutlineProvider;

    iget-object v3, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {v3, v1}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    :cond_5
    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-direct {v1, v7, v12}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda13;

    invoke-direct {v3, v6, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v19, -0x1

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x41880000    # 17.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const/4 v1, 0x5

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_6

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v21, 0x40800000    # 4.0f

    const/16 v22, 0x0

    const/16 v16, -0x2

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v18, 0x5

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    iget-object v1, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->optionsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v12, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/high16 v21, 0x40000000    # 2.0f

    const/16 v16, 0x28

    const/high16 v17, 0x42200000    # 40.0f

    const/16 v18, 0x35

    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x41700000    # 15.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v26, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    invoke-virtual {v12, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/high16 v21, 0x42280000    # 42.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v1, v3, v4, v5, v14}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v9, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->noSoundDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/StoryPrivacyButton;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda5;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v16, 0x3c

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda6;

    invoke-direct {v1, v6, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Stories/StoryLinesDrawable;

    invoke-direct {v1, v6, v9}, Lorg/telegram/ui/Stories/StoryLinesDrawable;-><init>(Landroid/view/View;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/16 v21, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x42800000    # 64.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v2, v15, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v0, v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v0, v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v0, v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v2, v26

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v1, v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v0, v10, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    iget-object v0, v10, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$9;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$9;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V

    iget-object v0, v10, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/PeerStoriesView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    return p0
.end method

.method static synthetic access$10002(Lorg/telegram/ui/Stories/PeerStoriesView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromX:I

    return p1
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    return p1
.end method

.method static synthetic access$10102(Lorg/telegram/ui/Stories/PeerStoriesView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromY:I

    return p1
.end method

.method static synthetic access$10202(Lorg/telegram/ui/Stories/PeerStoriesView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromSize:I

    return p1
.end method

.method static synthetic access$10300(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    return p0
.end method

.method static synthetic access$10302(Lorg/telegram/ui/Stories/PeerStoriesView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    return p1
.end method

.method static synthetic access$10402(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    return p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return-void
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    return p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPrivacyButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result p0

    return p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ChooseSpeedLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedLayout:Lorg/telegram/ui/ChooseSpeedLayout;

    return-object p0
.end method

.method static synthetic access$11202(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ChooseSpeedLayout;)Lorg/telegram/ui/ChooseSpeedLayout;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedLayout:Lorg/telegram/ui/ChooseSpeedLayout;

    return-object p1
.end method

.method static synthetic access$11300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static synthetic access$11302(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p1
.end method

.method static synthetic access$11400(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSpeedItem(Z)V

    return-void
.end method

.method static synthetic access$11500(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result p0

    return p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditBotsPreview()Z

    move-result p0

    return p0
.end method

.method static synthetic access$11700(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->createStealthModeItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    return-void
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    return p0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->createQualityItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    return-void
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    return p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAnimatedEmojiSets(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->shareStory(Z)V

    return-void
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->saveToGallery()V

    return-void
.end method

.method static synthetic access$12400(Lorg/telegram/ui/Stories/PeerStoriesView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->toggleArchiveForStory(J)V

    return-void
.end method

.method static synthetic access$12500(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->deleteStory()V

    return-void
.end method

.method static synthetic access$12600(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showDownloadAlert()V

    return-void
.end method

.method static synthetic access$12700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    return p0
.end method

.method static synthetic access$12802(Lorg/telegram/ui/Stories/PeerStoriesView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    return p1
.end method

.method static synthetic access$12900(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    return p0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->hideCaptionWithInterface()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbAlpha:F

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbScale:F

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    return-wide v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Stories/PeerStoriesView;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-wide v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Stories/PeerStoriesView;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-wide p1
.end method

.method static synthetic access$2714(Lorg/telegram/ui/Stories/PeerStoriesView;J)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    return-wide v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPositionView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryPositionView;)Lorg/telegram/ui/Stories/StoryPositionView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyPositionView:Lorg/telegram/ui/Stories/StoryPositionView;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->alpha:F

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/PeerStoriesView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Stories/PeerStoriesView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryLinesDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyLines:Lorg/telegram/ui/Stories/StoryLinesDrawable;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->drawLinesAsCounter()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ReactionsContainerLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    return-object p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Stories/PeerStoriesView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    return p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/app/Activity;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->findActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryViewer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showPremiumBlockedToast()V

    return-void
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->applyMessageToChat(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->afterMessageSend(Z)V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/MentionsContainerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createMentionsContainer()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/PeerStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    return p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openAttachMenu()V

    return-void
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkInstantCameraView()V

    return-void
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/InstantCameraView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    return-object p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/HintView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    return-object p0
.end method

.method static synthetic access$7402(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/HintView;)Lorg/telegram/ui/Components/HintView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    return-object p1
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/AccountInstance;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->tryToOpenRepostStory()V

    return-void
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->onLinkCopied()V

    return-void
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$8502(Lorg/telegram/ui/Stories/PeerStoriesView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    return p1
.end method

.method static synthetic access$8900(Lorg/telegram/ui/Stories/PeerStoriesView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    return-object p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->openChat()V

    return-void
.end method

.method static synthetic access$9102(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReaction:Z

    return p1
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    return-object p0
.end method

.method static synthetic access$9202(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoriesLikeButton;)Lorg/telegram/ui/Stories/StoriesLikeButton;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    return-object p1
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    return-object p0
.end method

.method static synthetic access$9402(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    return-object p1
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    return-object p0
.end method

.method static synthetic access$9502(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    return-object p1
.end method

.method static synthetic access$9602(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    return p1
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    return-void
.end method

.method private afterMessageSend(Z)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->resetCameraFile()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->cancel(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Stories/StoryViewer;->clearDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->closeKeyboardOrEmoji()Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v3, Lorg/telegram/messenger/R$raw;->forward:I

    sget p1, Lorg/telegram/messenger/R$string;->MessageSent:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p1, Lorg/telegram/messenger/R$string;->ViewInChat:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda20;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    const/16 v6, 0x1388

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v3, v1, v0}, Lorg/telegram/messenger/MessagesController;->ensureMessagesLoaded(JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)Ljava/lang/Runnable;

    return-void
.end method

.method private animateLikeButton()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$14;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$14;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    new-instance v1, Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Stories/StoriesLikeButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    const/16 v2, 0x28

    const/4 v3, 0x3

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    return-void
.end method

.method private applyMessageToChat(Ljava/lang/Runnable;)Z
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return v1

    :cond_0
    sget v0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    if-lez v0, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    if-eqz v2, :cond_1

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->updateStealthModeSendMessageConfirm(I)V

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->StealthModeConfirmTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget v2, Lorg/telegram/messenger/R$string;->StealthModeConfirmMessage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget v2, Lorg/telegram/messenger/R$string;->Proceed:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda14;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V

    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return v1
.end method

.method private bindInternal(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->userCanSeeViews:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/16 v6, 0xff

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    cmp-long v11, v4, v9

    if-ltz v11, :cond_6

    iget v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    cmp-long v13, v4, v11

    if-nez v13, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v5, v11, v12}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v5

    iget v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    iput-boolean v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v11

    iput-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v5, v11, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v4, v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v5, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v5, Lorg/telegram/messenger/R$string;->SelfStoryTitle:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto/16 :goto_5

    :cond_3
    if-eqz v4, :cond_4

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v11, Lorg/telegram/messenger/R$drawable;->verified_profile:I

    invoke-static {v5, v11}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v6, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v6, v5, v8}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    :goto_2
    if-eqz v4, :cond_5

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_5

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto/16 :goto_5

    :cond_6
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v11, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->canEditStories(J)Z

    move-result v4

    if-nez v4, :cond_7

    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v4, :cond_8

    :cond_7
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->userCanSeeViews:Z

    :cond_8
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    xor-int/2addr v5, v3

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v5, :cond_9

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v11, v11

    invoke-virtual {v5, v11, v12}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    if-nez v5, :cond_9

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v11

    iget-wide v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v12, v12

    new-instance v15, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v15, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v11 .. v17}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    :cond_9
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v5, :cond_a

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v5, v11, v12}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v11

    iput-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v5, v11, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v4, v11}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v4, :cond_b

    const-string v11, ""

    goto :goto_4

    :cond_b
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->removeDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    if-eqz v4, :cond_2

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->verified_profile:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v5, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v5, v4, v8}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    :goto_5
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v4, :cond_d

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v4, :cond_c

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v4, :cond_d

    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v4, v5, v6, v3}, Lorg/telegram/ui/Stories/StoriesController;->pollViewsForSelfStories(JZ)V

    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-gez v1, :cond_e

    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    :cond_e
    iput-wide v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    iput-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iput-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    const/4 v5, -0x1

    const/16 v6, 0x8

    if-eqz v4, :cond_17

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createSelfPeerView()V

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v3, :cond_f

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_12

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v7

    if-nez v7, :cond_11

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v7, :cond_11

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPossibleRemoveChatRestrictionsByBoosts(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    const/4 v6, 0x0

    :cond_11
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v6, v9, v10, v7}, Lorg/telegram/ui/Stories/StoryViewer;->getDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-wide v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v4, v6, v7, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDialogId(JI)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4, v3, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordButton(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v4, 0x41600000    # 14.0f

    if-nez v3, :cond_13

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-interface {v6, v7}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    :cond_13
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-nez v3, :cond_14

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-interface {v6, v7}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    :cond_14
    if-ne v1, v5, :cond_15

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    :cond_16
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_f

    :cond_17
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v4, :cond_20

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createSelfPeerView()V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v4, :cond_18

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    :cond_18
    if-ne v1, v5, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1a

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_19

    const/4 v1, 0x0

    goto :goto_7

    :cond_19
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :cond_1a
    :goto_7
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1b
    :goto_8
    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_a

    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_8

    :cond_1d
    const/4 v1, 0x0

    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z

    if-nez v3, :cond_1b

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v4

    if-le v3, v4, :cond_1e

    goto :goto_8

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    goto/16 :goto_6

    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v3, :cond_21

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    :cond_21
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v3, :cond_22

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-nez v3, :cond_22

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createPremiumBlockedText()V

    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_25

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v3, :cond_23

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePremiumBlockedText()V

    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v4, :cond_24

    const/4 v4, 0x0

    goto :goto_b

    :cond_24
    const/16 v4, 0x8

    :goto_b
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    if-eqz v3, :cond_26

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    if-ne v1, v5, :cond_27

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_2b

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v3

    if-nez v3, :cond_29

    iget-wide v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_c

    :cond_28
    const/4 v3, 0x0

    goto :goto_d

    :cond_29
    :goto_c
    const/16 v3, 0x8

    :goto_d
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v3, v4, v5, v7}, Lorg/telegram/ui/Stories/StoryViewer;->getDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDialogId(JI)V

    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3, v8, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordButton(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    goto :goto_e

    :cond_2a
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    invoke-virtual {v3, v1, v4, v2}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    :cond_2b
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :goto_f
    invoke-direct {v0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    return-void
.end method

.method private cancelWaiting()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->cancellableViews:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->cancellableViews:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->showViewsProgress:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsWaiting(Z)V

    :cond_1
    return-void
.end method

.method private checkInstantCameraView()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$33;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$33;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/InstantCameraView;->drawBlur:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCircle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v2, 0x33

    const/4 v3, -0x1

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkStealthMode(Z)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStealthModeTimer:Ljava/lang/Runnable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoriesController;->getStealthMode()Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateSendButtonPaid()V

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v4, :cond_1

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v1, " "

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_3

    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v3, Lorg/telegram/messenger/R$string;->TypeMessageForStars:I

    iget-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    const/16 v6, 0x2c

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->active_until_date:I

    if-ge v4, v3, :cond_4

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    sget v5, Lorg/telegram/messenger/R$string;->StealthModeActiveHintShort:I

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v7, 0x63

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v8, v9, v2

    aput-object v7, v9, v1

    const-string v7, "%02d:%02d"

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v8, v9, v2

    const-string v8, "StealthModeActiveHint"

    invoke-static {v8, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v10, v1}, Landroid/view/View;->setEnabled(Z)V

    int-to-float v9, v9

    const v10, 0x3f99999a    # 1.2f

    mul-float v9, v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_3

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-array v9, v1, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v9, v2

    const-string v10, "StealthModeActiveHintShort"

    invoke-static {v10, v5, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    aput-object v3, v0, v1

    invoke-static {v6, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v9, Lorg/telegram/messenger/R$string;->StealthModeActiveHint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    aput-object v3, v0, v1

    invoke-static {v6, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v8, v9, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideHint(Ljava/lang/CharSequence;Z)V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStealthModeTimer:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v1, :cond_5

    sget v1, Lorg/telegram/messenger/R$string;->ReplyToGroupStory:I

    goto :goto_2

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->ReplyPrivately:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private createChatAttachView()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$21;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Stories/PeerStoriesView$21;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$22;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowEnterCaption(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$23;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDocumentsDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private createEnterView()V
    .locals 10

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$16;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$16;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/PeerStoriesView$17;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->useAnimatedTextDrawable()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setOverrideKeyboardAnimation(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$18;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$18;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDelegate(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawBackground:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawRecordedAudioPanelInParent:Z

    invoke-virtual {v0, v1, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateColors()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStories:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->classGuid:I

    iput v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingGuid:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onResume()V

    :cond_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerIndex:I

    return-void
.end method

.method private createFailView()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/StoryFailView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryFailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createMentionsContainer()V
    .locals 11

    new-instance v10, Lorg/telegram/ui/Stories/PeerStoriesView$19;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-wide/16 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Stories/PeerStoriesView$19;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$20;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v1, -0x1

    const/16 v2, 0x53

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createPremiumBlockedText()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createEnterView()V

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v2, 0x3faccccd    # 1.35f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    sget v2, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const v4, -0x7a7a7b

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v3, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->StoryGroupRepliesLocked:I

    goto :goto_0

    :cond_2
    sget v3, Lorg/telegram/messenger/R$string;->StoryRepliesLocked:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const v5, 0x1affffff

    const v6, 0x32ffffff

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->StoryRepliesLockedButton:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v5, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/16 v6, 0x10

    const/16 v7, 0xc

    const/4 v8, 0x1

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    const/16 v2, 0x10

    const/4 v4, -0x2

    invoke-static {v4, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/16 v5, 0x13

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createQualityItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->storyQualityFull:Z

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_quality_sd:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$drawable;->menu_quality_hd:I

    :goto_0
    if-eqz v0, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->StoryQualityDecrease:I

    goto :goto_1

    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->StoryQualityIncrease:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1, v3, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_gallery_locked2:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x1000000

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, -0x1

    invoke-static {v5, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$11;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->menu_quality_hd2:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$11;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconOffset(II)V

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_quality_hd:I

    sget v3, Lorg/telegram/messenger/R$string;->StoryQualityIncrease:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v3, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method private createReplyDisabledView()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$30;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$30;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x1000000

    invoke-static {v3, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->StoryReplyDisabled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v3, 0x3

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createSelfPeerView()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$28;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$28;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/high16 v7, 0x43080000    # 136.0f

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$29;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$29;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x42000000    # 32.0f

    const/4 v5, 0x0

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/HwAvatarsImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/HwAvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x41e00000    # 28.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41500000    # 13.0f

    const/high16 v8, 0x41500000    # 13.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/high16 v10, 0x41100000    # 9.0f

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/4 v7, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/16 v5, 0x78

    invoke-static {v1, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-static {v4, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createCircleSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private createStealthModeItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 6

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_stories_stealth2:I

    sget v2, Lorg/telegram/messenger/R$string;->StealthModeButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v2, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_gallery_locked2:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x1000000

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, -0x1

    invoke-static {v5, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$10;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_stealth_locked:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$10;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_stories_stealth2:I

    sget v3, Lorg/telegram/messenger/R$string;->StealthModeButton:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v3, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private createUnsupportedContainer()V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v5, Lorg/telegram/messenger/R$string;->StoryUnsupported:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    sget v6, Lorg/telegram/messenger/R$string;->AppUpdate:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v7, v9, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v5, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-static {v2, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v11, 0x42900000    # 72.0f

    const/4 v12, 0x0

    const/high16 v7, -0x40000000    # -2.0f

    const/16 v8, 0x11

    const/high16 v9, 0x42900000    # 72.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private deleteStory()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DeleteBotPreviewTitle:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->DeleteStoryTitle:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->DeleteBotPreviewSubtitle:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->DeleteStorySubtitle:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda36;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda36;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    return-void
.end method

.method private drawLinesAsCounter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-eqz v3, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    iget v3, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    iget v4, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    sub-int/2addr v3, v4

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setValue(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->enableSharing(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedRules(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private findActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_1
    return-object v0
.end method

.method private fragmentForLimit()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$15;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-object v0
.end method

.method private getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    return-object v0
.end method

.method private getAnimatedEmojiSets(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;
    .locals 7

    if-eqz p1, :cond_15

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    instance-of v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v5, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v5, :cond_3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_2
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_14

    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_6

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    :cond_6
    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v2, :cond_14

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_14

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    :goto_4
    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    iget-object v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-byte v5, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v6, 0x4

    if-ne v5, v6, :cond_d

    iget-object v4, v4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v5, :cond_d

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_c
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    instance-of v2, p1, Landroid/text/Spanned;

    if-nez v2, :cond_f

    return-object v1

    :cond_f
    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v2, v3, p1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez p1, :cond_10

    return-object v1

    :cond_10
    :goto_6
    array-length v2, p1

    if-ge v3, v2, :cond_14

    aget-object v2, p1, v3

    iget-object v4, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v4, :cond_11

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-wide v5, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    :cond_11
    if-nez v4, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_7

    :cond_13
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    return-object v1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHideInterfaceAlpha()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryViewer;->getProgressToSelfViews()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    return v0
.end method

.method public static getStoryId(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I
    .locals 0

    if-eqz p0, :cond_0

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz p0, :cond_1

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryId:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private hideCaptionWithInterface()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    cmpg-float p1, p2, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isBotsPreview()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEditBotsPreview()Z
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-wide v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic lambda$animateOut$49(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v3, v2, v3

    mul-float v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float v1, v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->getProgressToDismiss()F

    move-result p1

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    sub-float v3, v2, p1

    mul-float v3, v3, v0

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v4, v2, v4

    mul-float v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    sub-float v3, v2, p1

    mul-float v3, v3, v0

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v4, v2, v4

    mul-float v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    sub-float p1, v2, p1

    mul-float v0, v0, p1

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float p1, v2, p1

    mul-float v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_6

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$applyMessageToChat$24(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$applyMessageToChat$25(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$checkRecordLocked$48(ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelRecordingAudioVideo()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createFailView$20(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->tryAgain()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createQualityItem$13(ZLandroid/view/View;)V
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->setStoryQuality(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    if-eqz p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->StoryQualityIncreasedTitle:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->StoryQualityDecreasedTitle:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->StoryQualityIncreasedMessage:I

    goto :goto_1

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->StoryQualityDecreasedMessage:I

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createQualityItem$14(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 4

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-interface {p2, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createQualityItem$15(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v6, v4, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    iget v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    const-string v7, "\ud83d\ude0e"

    const-string v8, "150_150"

    const-string v9, "tg_superplaceholders_android_2"

    invoke-virtual {v6, v5, v9, v7, v8}, Lorg/telegram/messenger/MediaDataController;->setPlaceholderImage(Lorg/telegram/ui/Components/BackupImageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v10, 0x96

    const/16 v11, 0x96

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x10

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v5, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v7, Lorg/telegram/messenger/R$string;->StoryQualityPremium:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x1

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v6, Lorg/telegram/messenger/R$string;->StoryQualityPremiumText:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v12, 0x20

    const/16 v13, 0x13

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/4 v9, 0x1

    const/16 v10, 0x20

    const/16 v11, 0x9

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v6, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v6, Lorg/telegram/messenger/R$string;->StoryQualityIncrease:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance v6, Landroid/text/SpannableStringBuilder;

    const-string v7, "l"

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v8, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-direct {v7, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    const/16 v8, 0x21

    invoke-virtual {v6, v7, v4, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->OptionPremiumRequiredTitle:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    const/4 v4, -0x1

    const/16 v6, 0x30

    invoke-static {v4, v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda48;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createSelfPeerView$34(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showUserViewsDialog()V

    return-void
.end method

.method private synthetic lambda$createStealthModeItem$11(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->stealthModeIsActive:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/ui/Stories/StealthModeAlert;->showStealthModeEnabledBulletin()V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/StealthModeAlert;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v3, v2}, Lorg/telegram/ui/Stories/StealthModeAlert;-><init>(Landroid/content/Context;FILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createStealthModeItem$12(Landroid/view/View;)V
    .locals 4

    new-instance p1, Lorg/telegram/ui/Stories/StealthModeAlert;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v3, v2}, Lorg/telegram/ui/Stories/StealthModeAlert;-><init>(Landroid/content/Context;FILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createUnsupportedContainer$33(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isStandaloneBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/LaunchActivity;->checkAppUpdate(ZLorg/telegram/messenger/browser/Browser$Progress;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isHuaweiStoreApp()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/BuildVars;->HUAWEI_STORE_URL:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$deleteStory$35(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->cancelOrDelete()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->switchToNextAndRemoveCurrentPeer()V

    return-void

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->checkSelfStoriesView()V

    :cond_3
    return-void
.end method

.method private static synthetic lambda$deleteStory$36(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$editPrivacy$45(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "STORY_NOT_MODIFIED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_8

    :cond_2
    :goto_2
    iput-object p4, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    invoke-virtual {p4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toValue()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    iget p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v3

    iget-wide v4, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Stories/StoriesController;->updateStoryItem(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;ZZ)V

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    iget p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 p3, 0x4

    if-ne p1, p3, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string p3, "StorySharedToEveryone"

    :goto_6
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_6
    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string p3, "StorySharedToCloseFriends"

    goto :goto_6

    :cond_7
    if-ne p1, v1, :cond_9

    iget-object p1, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string p3, "StorySharedToAllContacts"

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->contact_check:I

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "StorySharedToAllContactsExcluded"

    invoke-static {v0, p4, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto/16 :goto_1

    :cond_9
    if-ne p1, v2, :cond_b

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object p3, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIds:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p3, p4, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->selectedUserIdsByGroup:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_a
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "StorySharedToContacts"

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto/16 :goto_1

    :cond_b
    :goto_8
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$editPrivacy$46(Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    new-instance p4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda1;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$editPrivacy$47(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZLorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/Runnable;)V
    .locals 2

    new-instance p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;-><init>()V

    iget p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p4, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    iput-object p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget p4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->id:I

    iget p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    or-int/lit8 p4, p4, 0x4

    iput p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->flags:I

    iget-object p4, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->rules:Ljava/util/ArrayList;

    iput-object p4, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_editStory;->privacy_rules:Ljava/util/ArrayList;

    iget p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance p5, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0, p6, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;)V

    invoke-virtual {p4, p3, p5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$needEnterText$44()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestAdjust(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->expanded:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->checkCancelTextSelection()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryCaptionView;->expand()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->shareStory(Z)V

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->toggleSilentMode()V

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "taptostorysoundhint"

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showNoSoundHint(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->tryToOpenRepostStory()V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method

.method private synthetic lambda$new$37()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda32;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->applyMessageToChat(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$42()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showNoSoundHint(Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "taptostorysoundhint"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)Z
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 p2, 0x1

    invoke-static {p2}, Lorg/telegram/messenger/SharedConfig;->setStoriesReactionsLongPressHintUsed(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayoutForLike()V

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return p2
.end method

.method private synthetic lambda$new$6(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 4

    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v0, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-string v2, "dialog_id"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p2, v2, v0

    if-lez p2, :cond_1

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 16

    move-object/from16 v13, p0

    iget-object v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    const/4 v0, 0x0

    iput-object v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v14, 0x0

    new-array v12, v1, [Z

    aput-boolean v14, v12, v14

    iget-boolean v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_0

    iget v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->loadBlocklistAtFirst()V

    iget v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->loadSendAs()V

    iget v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->load()V

    :cond_0
    iget-boolean v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v0, :cond_2

    iget v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v2, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoriesController;->canEditStory(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v9, 0x1

    :goto_1
    iget-boolean v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v0, :cond_5

    iget-boolean v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v8, 0x1

    :goto_3
    iget-object v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$800(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v7

    new-instance v15, Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move v4, v7

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Stories/PeerStoriesView$8;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;ZZZLandroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;[Z)V

    iput-object v15, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    iget-object v0, v13, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    neg-int v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v15, v0, v14, v1}, Lorg/telegram/ui/Components/CustomPopupMenu;->show(Landroid/view/View;II)V

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsHintVisible(Z)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 12

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v2, :cond_1

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(ILjava/util/ArrayList;)V

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->editPrivacy(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x41000000    # 8.0f

    if-nez v2, :cond_2

    new-instance v2, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda27;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v4, p1, v5, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x42700000    # 60.0f

    const/16 v7, 0x37

    const/4 v8, 0x0

    const/high16 v9, 0x42500000    # 52.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v2, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iget-boolean v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    const/high16 v5, 0x41700000    # 15.0f

    if-eqz v4, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1, v5, v3, v5, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v1, Lorg/telegram/messenger/R$string;->StoryCloseFriendsHint:I

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, p1

    const-string v2, "StoryCloseFriendsHint"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->contacts:Z

    if-eqz v4, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x40e00000    # 7.0f

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v1, v5, v3, v5, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v1, Lorg/telegram/messenger/R$string;->StoryContactsHint:I

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, p1

    const-string v2, "StoryContactsHint"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->selected_contacts:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1, v5, v3, v5, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v1, Lorg/telegram/messenger/R$string;->StorySelectedContactsHint:I

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, p1

    const-string v2, "StorySelectedContactsHint"

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v1, v3, p1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->getCenterX()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsHintVisible(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_9
    :goto_3
    return-void
.end method

.method private synthetic lambda$onMeasure$43(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$openRepostStory$27()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    return-void
.end method

.method private static synthetic lambda$openRepostStory$28(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Long;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V
    .locals 2

    if-nez p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->findStoryCell(J)Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p0

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->replaceSourceView(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$openRepostStory$29(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$openRepostStory$30(Ljava/lang/Runnable;J)V
    .locals 2

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x20

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$openRepostStory$31(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v6, p3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-wide/16 v2, 0x190

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v4

    :goto_0
    if-ltz v10, :cond_3

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v11, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v11, :cond_2

    check-cast v4, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->closeSearching()V

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v4, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lorg/telegram/ui/Stories/DialogStoriesCell;->findStoryCell(J)Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    move-result-object v7

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_1

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-interface {v1, v10}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object v8, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_3
    move-object v8, v7

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearSheets()V

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->instantClose()V

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    if-eqz v8, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lorg/telegram/ui/Stories/DialogStoriesCell;->scrollTo(J)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v9, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda45;

    move-object v1, v9

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Long;Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v1

    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->replaceSourceView(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_3
    return-void

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v1, :cond_8

    iget-object v9, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-nez v9, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda46;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda46;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_7
    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_8
    iget-object v9, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iput-boolean v5, v9, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    iput-boolean v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda47;

    invoke-direct {v1, v6, v7, v8}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda47;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v9, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setOnReadyListener(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v1, :cond_9

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    :cond_9
    iget-wide v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    const-wide/16 v13, 0x578

    sub-long/2addr v11, v13

    cmp-long v1, v7, v11

    if-lez v1, :cond_a

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_4

    :cond_a
    move-object/from16 v1, p2

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(JZ)V

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_b
    return-void
.end method

.method private synthetic lambda$openRepostStory$32(Landroid/app/Activity;)V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->repostStoryItem(Ljava/io/File;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryViewer(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openForward(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JZ)V

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setOnFullyOpenListener(Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setOnPrepareCloseListener(Lorg/telegram/messenger/Utilities$Callback4;)V

    return-void
.end method

.method private synthetic lambda$saveToGallery$26(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$showLikesReaction$16(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    return-void
.end method

.method private synthetic lambda$showPremiumBlockedToast$21(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 6

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->fragmentForLimit()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->openBoostsForRemoveRestrictions(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;JZ)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->setOverlayVisible(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPremiumBlockedToast$22(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 4

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setOverlayVisible(Z)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private synthetic lambda$showPremiumBlockedToast$23()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "noncontacts"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$toggleArchiveForStory$17(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    xor-int/lit8 v3, p3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    return-void
.end method

.method private static synthetic lambda$toggleArchiveForStory$18(Lorg/telegram/messenger/MessagesController;JZ)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    return-void
.end method

.method private synthetic lambda$toggleArchiveForStory$19(Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    new-instance v2, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;

    invoke-direct {v2}, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;-><init>()V

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda50;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/messenger/MessagesController;JZ)V

    iput-object v3, v2, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onUndo:Ljava/lang/Runnable;

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda51;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/messenger/MessagesController;JZ)V

    iput-object v3, v2, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onAction:Ljava/lang/Runnable;

    const/16 p1, 0xa

    const/4 p2, 0x0

    if-nez p4, :cond_0

    sget p3, Lorg/telegram/messenger/R$string;->StoriesMovedToDialogs:I

    invoke-static {p5, p2, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p1, p4, v0

    const-string p1, "StoriesMovedToDialogs"

    invoke-static {p1, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget p3, Lorg/telegram/messenger/R$string;->StoriesMovedToContacts:I

    invoke-static {p5, p2, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p1, p4, v0

    const-string p1, "StoriesMovedToContacts"

    invoke-static {p1, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    new-array p4, v1, [Lorg/telegram/tgnet/TLObject;

    aput-object p6, p4, v0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p3, p4, p1, p2, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setTag(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$updatePosition$38(Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Landroid/view/View;)V
    .locals 5

    iget-object p2, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    if-eqz p2, :cond_2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-ltz v4, :cond_0

    const-string v2, "user_id"

    :goto_0
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_0
    neg-long v0, v0

    const-string v2, "chat_id"

    goto :goto_0

    :goto_1
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->isRepostMessage:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->messageId:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "message_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    :goto_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v0, Lorg/telegram/messenger/R$string;->StoryHidAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setTag(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :goto_3
    return-void
.end method

.method private synthetic lambda$updatePosition$39(JLandroid/view/View;)V
    .locals 3

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "user_id"

    :goto_0
    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_0
    neg-long p1, p1

    const-string v0, "chat_id"

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$updatePosition$40()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updatePosition$41()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v1, -0x3e500000    # -22.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, -0x1

    const v3, 0x3e051eb8    # 0.13f

    const/high16 v4, -0x1000000

    invoke-static {v4, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    const/16 v3, 0xf0

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBgColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBounce(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v3, Lorg/telegram/messenger/R$string;->ReactionLongTapHint:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const/high16 v2, 0x42600000    # 56.0f

    const/high16 v9, 0x42600000    # 56.0f

    :goto_0
    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsLongpressTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setStoriesReactionsLongPressHintUsed(Z)V

    return-void
.end method

.method private likeStory(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->animateLikeButton()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {p1, v5, v6, v7, v4}, Lorg/telegram/ui/Stories/StoriesController;->setStoryReaction(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_3

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object p1

    const-string v5, "\u2764"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v8

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    invoke-virtual {v5, v1, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v5, v6, v7, v8, p1}, Lorg/telegram/ui/Stories/StoriesController;->setStoryReaction(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->animateLikeButton()V

    goto :goto_2

    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    const/4 p1, 0x3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    :goto_4
    const/4 p1, 0x1

    goto :goto_6

    :cond_8
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    const/4 p1, 0x0

    :goto_6
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v4, :cond_9

    new-instance v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_7

    :cond_a
    const/4 p1, -0x1

    :goto_7
    add-int/2addr v4, p1

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-gez v4, :cond_b

    iput v1, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->applyForStoryViews(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/tl/TL_stories$StoryViews;)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    return-void
.end method

.method private onLinkCopied()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;->id:I

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_exportStoryLink;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$27;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private openAttachMenu()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDialogId(J)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private openChat()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    neg-long v1, v1

    const-string v3, "chat_id"

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_0
    const-string v3, "user_id"

    goto :goto_0

    :goto_1
    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDialog(J)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->top_message:I

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private openRepostStory()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/app/Activity;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->releasePlayer(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x50

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private requestVideoPlayer(J)V
    .locals 11

    const-string v0, "UTF-8"

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    const-string v3, "PeerStoriesView.requestVideoPlayer("

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "StoryViewer requestVideoPlayer("

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "): playing from attachPath "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    move-object v6, v0

    move-object v5, v2

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_3

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v6, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    :try_start_0
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v7, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    if-nez v7, :cond_1

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v7

    iput v7, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    goto :goto_0

    :catch_0
    nop

    goto/16 :goto_2

    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?account="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&hash="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&dc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&mime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&rid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reference="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-array v0, v4, [B

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&sid="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&did="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v7, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tg://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "): playing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentDuration(Lorg/telegram/tgnet/TLRPC$Document;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v6

    double-to-long v4, v4

    iput-wide v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v0

    move-object v5, v1

    goto :goto_3

    :catch_1
    nop

    move-object v1, v2

    :goto_2
    move-object v5, v1

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object v5, v2

    move-object v6, v5

    :goto_3
    if-nez v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "): playing from null?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    move-wide v7, p1

    invoke-interface/range {v4 .. v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestPlayer(Lorg/telegram/tgnet/TLRPC$Document;Landroid/net/Uri;JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "): null, not a video"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v5 .. v10}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestPlayer(Lorg/telegram/tgnet/TLRPC$Document;Landroid/net/Uri;JLorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iput-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    iput-boolean v4, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iput-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    :goto_4
    return-void
.end method

.method private saveToGallery()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v1, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v2, :cond_0

    return-void

    :cond_0
    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda38;

    invoke-direct {v7, p0, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showDownloadAlert()V

    :goto_0
    return-void
.end method

.method private sendUriAsDocument(Landroid/net/Uri;)V
    .locals 21

    move-object/from16 v1, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v12, :cond_7

    instance-of v0, v12, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "/1/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    const-string v2, "/ACTUAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    move-object/from16 v5, p1

    :goto_0
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-nez v2, :cond_3

    move-object v4, v0

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-static {v5, v2}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    return-void

    :cond_4
    move-object v4, v0

    move-object v0, v2

    goto :goto_1

    :cond_5
    move-object v4, v0

    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-wide v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    invoke-static/range {v2 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Lorg/telegram/messenger/MessageObject;ZILandroidx/core/view/inputmethod/InputContentInfoCompat;Ljava/lang/String;IZ)V

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v0

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method private setStoryImage(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p3

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3, v12}, Lorg/telegram/ui/Stories/StoriesController;->findEditingStory(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    move-result-object v1

    move-object/from16 v2, p2

    if-eqz v1, :cond_0

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    const-string v4, "_pframe"

    if-eqz v3, :cond_4

    iget-object v6, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v6, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-wide v9, v10

    move-object v11, v14

    :goto_1
    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_4

    :cond_3
    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p2

    move-object v2, v3

    move-object/from16 v3, p3

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move-object v9, v12

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_4

    :cond_4
    if-eqz v1, :cond_5

    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x3e8

    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iget-object v3, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    :goto_2
    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-wide v9, v14

    move-object/from16 v12, p1

    goto :goto_1

    :cond_5
    iget-object v1, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    const v4, 0x7fffffff

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v6, 0x320

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p2

    move-object v2, v3

    move-object v3, v6

    goto :goto_2

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_4
    return-void
.end method

.method private setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V
    .locals 14

    .line 0
    move-object v0, p1

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method private shareStory(Z)V
    .locals 19

    move-object/from16 v15, p0

    iget-object v0, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_5

    iget-object v1, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->createLink()Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_4

    new-instance v14, Lorg/telegram/ui/Stories/PeerStoriesView$24;

    iget-object v0, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v14, v15, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$24;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v0, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v0, :cond_0

    iget v0, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lorg/telegram/ui/Stories/PeerStoriesView;->DISABLE_STORY_REPOSTING:Z

    const/4 v13, 0x1

    if-nez v1, :cond_3

    iget v1, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v1, :cond_1

    iget-wide v1, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_1
    new-instance v11, Lorg/telegram/ui/Stories/PeerStoriesView$25;

    iget-object v0, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v5, v8

    move-object/from16 v18, v11

    move/from16 v11, v16

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Stories/PeerStoriesView$25;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v0, v18

    iput-object v0, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ShareAlert;->forceDarkThemeForHint:Z

    iget-object v1, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v2, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->setStoryToShare(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iget-object v0, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$26;

    invoke-direct {v1, v15}, Lorg/telegram/ui/Stories/PeerStoriesView$26;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->setDelegate(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V

    iget-object v0, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v1, v15, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    sget v2, Lorg/telegram/messenger/R$string;->StickersShare:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private showAttachmentError()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UnsupportedAttachment:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private showDownloadAlert()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private showLikesReaction(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowing:Z

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowing:Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setStoryItem(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsLikesReaction(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$12;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$13;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_0
    return-void
.end method

.method private showPremiumBlockedToast()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->fragmentForLimit()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->canApplyBoost:Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    iget-wide v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->openBoostsForRemoveRestrictions(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;JZ)Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->setOverlayVisible(Z)V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    neg-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shiftDp:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    sget-object v2, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v2}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    iget-wide v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, ""

    :goto_0
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v5, Lorg/telegram/messenger/R$string;->UserBlockedRepliesNonPremium:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v5, Lorg/telegram/messenger/R$string;->UserBlockedRepliesNonPremium:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UserBlockedNonPremiumButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v3, v4, v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private showUserViewsDialog()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->openViews()V

    return-void
.end method

.method private toggleArchiveForStory(J)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-lez v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    :goto_0
    move-object v10, v0

    move-object v9, v1

    goto :goto_1

    :cond_0
    neg-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden:Z

    goto :goto_0

    :goto_1
    xor-int/lit8 v8, v2, 0x1

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda37;

    move-object v3, v0

    move-object v4, p0

    move-wide v6, p1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/messenger/MessagesController;JZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    const-wide/16 p1, 0xc8

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private tryToOpenRepostStory()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    const-wide/16 v1, 0x78

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showDownloadAlert()V

    :goto_0
    return-void
.end method

.method private updatePosition(Z)V
    .locals 44

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->getStoryImageFilter()Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastNoThumb:Z

    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    iget v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iget-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    iget-boolean v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    iget-boolean v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v9, 0x4

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v4, :cond_3

    iget v4, v4, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->type:I

    if-ne v4, v9, :cond_3

    if-ltz v14, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    goto :goto_0

    :cond_1
    move-object v4, v8

    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v5, v14, v5

    if-ltz v5, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :goto_1
    move-object v7, v4

    move-object v6, v5

    goto :goto_3

    :cond_2
    move-object v7, v4

    move-object v6, v8

    goto :goto_3

    :cond_3
    if-ltz v14, :cond_4

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_4

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object v5, v4

    goto :goto_2

    :cond_4
    move-object v5, v8

    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v4, v14, v4

    if-ltz v4, :cond_5

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    goto :goto_1

    :cond_5
    move-object v6, v5

    move-object v7, v8

    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iput-object v8, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/16 v4, 0x96

    if-eqz v7, :cond_9

    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    iget-boolean v5, v7, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    xor-int/2addr v5, v1

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v15}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    iget-object v4, v7, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v21

    const/16 v17, 0x3

    const/16 v18, 0x1

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v21}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v16, v5

    goto :goto_4

    :cond_6
    move-object/from16 v16, v8

    :goto_4
    iget-boolean v4, v7, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->isVideo:Z

    if-nez v4, :cond_7

    iget-boolean v4, v7, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->hadFailed:Z

    if-eqz v4, :cond_8

    :cond_7
    move-object v1, v7

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    const/16 v17, 0x4

    goto :goto_6

    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v7, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move-object v1, v7

    move-object/from16 v7, v17

    move-object v8, v10

    const/16 v17, 0x4

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v25, v11

    move-object/from16 v11, v16

    move/from16 v26, v12

    move/from16 v27, v13

    move-wide/from16 v12, v22

    move/from16 v28, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v18

    move/from16 v16, v19

    :goto_5
    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_7

    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v8, v10

    move-object v10, v11

    move-object/from16 v11, v16

    move/from16 v16, v18

    goto :goto_5

    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->getMediaAreasFor(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v1, v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    :goto_8
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    move/from16 v43, v27

    goto/16 :goto_1e

    :cond_9
    move-object v15, v8

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    const/4 v1, 0x0

    const/16 v17, 0x4

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    if-nez v6, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void

    :cond_a
    const/4 v5, 0x1

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v7, v8, v9, v6}, Lorg/telegram/ui/Stories/StoriesController;->findEditingStory(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    move-result-object v14

    if-eqz v14, :cond_c

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->onImageReceiverThumbLoaded:Ljava/lang/Runnable;

    if-nez v7, :cond_b

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v14, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const/16 v18, 0x0

    move-object v1, v6

    move-object v6, v8

    move-object v8, v10

    move-wide v10, v11

    move-object/from16 v12, v18

    move-object v15, v14

    move/from16 v14, v16

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v15}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    iget-object v5, v15, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->getMediaAreasFor(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5, v6}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iput-object v1, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_8

    :cond_c
    move-object v1, v6

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v15, 0x1

    goto :goto_a

    :cond_d
    const/4 v15, 0x0

    :goto_a
    iget-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move/from16 v14, v27

    invoke-virtual {v5, v14}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeDuration(I)V

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    move/from16 v43, v14

    goto/16 :goto_15

    :cond_e
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    const-string v6, "_pframe"

    if-eqz v5, :cond_16

    if-nez v4, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    :cond_f
    if-eqz v15, :cond_12

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v36, v4

    goto :goto_b

    :cond_10
    const/16 v36, 0x0

    :goto_b
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    if-eqz v4, :cond_11

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v15, 0x0

    invoke-virtual {v7, v15, v15, v8}, Lorg/telegram/messenger/ImageLocation;->getKey(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/16 v19, 0x0

    move-object v8, v10

    move-object v10, v11

    move-object/from16 v11, v36

    move/from16 v42, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v16

    move/from16 v16, v18

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_c
    move/from16 v43, v42

    goto/16 :goto_15

    :cond_11
    move/from16 v42, v14

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v41}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_c

    :cond_12
    move/from16 v42, v14

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_13

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_d

    :cond_13
    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_14

    iget-object v4, v8, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v9, v4

    move/from16 v15, v42

    goto :goto_e

    :cond_14
    move/from16 v15, v42

    const/4 v9, 0x0

    :goto_e
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    if-eqz v15, :cond_15

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->firstFramePath:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v11, 0x0

    const/16 v16, 0x0

    move-object v6, v10

    move-object v8, v10

    :goto_f
    move-wide v10, v11

    move-object/from16 v12, v16

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    move/from16 v43, v15

    goto/16 :goto_15

    :cond_15
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    const/16 v16, 0x0

    move-object v6, v10

    goto :goto_f

    :cond_16
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v5, :cond_17

    iget-boolean v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v5, :cond_18

    :cond_17
    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v4, :cond_18

    iget-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v5, :cond_18

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyId:I

    iget v7, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v4, v7, :cond_18

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_10

    :cond_18
    const/4 v8, 0x0

    :goto_10
    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    if-eqz v15, :cond_1a

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v4}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    if-nez v8, :cond_19

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v11, v5

    goto :goto_11

    :cond_19
    move-object v11, v8

    :goto_11
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v7}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const-wide/16 v18, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v12

    move-wide/from16 v12, v18

    move/from16 v43, v14

    move-object v14, v15

    :goto_12
    move-object v15, v1

    invoke-virtual/range {v4 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_15

    :cond_1a
    move/from16 v43, v14

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_1b

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_13

    :cond_1b
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_1d

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v5, :cond_1d

    if-nez v8, :cond_1c

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v11, v5

    goto :goto_14

    :cond_1c
    move-object v11, v8

    :goto_14
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const v6, 0x7fffffff

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v7, 0x320

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5, v4}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v18, 0x0

    move-object v4, v6

    move-object v6, v8

    move-object v8, v10

    move-object v10, v12

    move-wide/from16 v12, v18

    goto :goto_12

    :cond_1d
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_15
    iget-wide v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v4, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    if-eqz p1, :cond_1e

    const/4 v8, 0x0

    goto :goto_16

    :cond_1e
    move-object v8, v1

    :goto_16
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v4, v8, v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v4, :cond_1f

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v4, :cond_1f

    instance-of v5, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-nez v5, :cond_1f

    instance-of v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-nez v4, :cond_1f

    const/4 v15, 0x1

    goto :goto_17

    :cond_1f
    const/4 v15, 0x0

    :goto_17
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v15, :cond_21

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->allowScreenshots()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    if-eqz v4, :cond_20

    const/4 v15, 0x1

    goto :goto_18

    :cond_20
    const/4 v15, 0x0

    :goto_18
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    :cond_21
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v4, :cond_24

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-nez v5, :cond_23

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v5, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->isExpired(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_19

    :cond_22
    const/4 v15, 0x0

    goto :goto_1a

    :cond_23
    :goto_19
    const/4 v15, 0x1

    :goto_1a
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    :cond_24
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    if-eqz v4, :cond_26

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v4, :cond_26

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v15, 0x1

    goto :goto_1b

    :cond_25
    const/4 v15, 0x0

    :goto_1b
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    :cond_26
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    if-eqz v4, :cond_29

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v4, :cond_27

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    goto :goto_1c

    :cond_27
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->isPublic:Z

    if-eqz v4, :cond_28

    :goto_1c
    const/4 v15, 0x1

    goto :goto_1d

    :cond_28
    const/4 v15, 0x0

    :goto_1d
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    :cond_29
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    iget-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v4, v5, v6, v1}, Lorg/telegram/messenger/NotificationsController;->processReadStories(JI)V

    :goto_1e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_2a

    if-nez p1, :cond_2a

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v1, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->checkAllowScreenshots()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageChanged:Z

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v1, :cond_2b

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_2c

    :cond_2b
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    :cond_2c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-static {v4, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryId(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I

    move-result v1

    invoke-static {v3, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryId(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)I

    move-result v4

    if-eq v1, v4, :cond_2e

    if-eqz v2, :cond_2d

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_2d

    iget-object v4, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->attachPath:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_1f

    :cond_2d
    const/4 v15, 0x0

    goto :goto_20

    :cond_2e
    :goto_1f
    const/4 v15, 0x1

    :goto_20
    if-eqz v15, :cond_30

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    move/from16 v4, v43

    if-ne v1, v4, :cond_2f

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isUploading:Z

    move/from16 v4, v26

    if-ne v1, v4, :cond_2f

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    move/from16 v4, v25

    if-eq v1, v4, :cond_30

    :cond_2f
    const/4 v1, 0x1

    goto :goto_21

    :cond_30
    const/4 v1, 0x0

    :goto_21
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_31

    iget-object v7, v2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    if-eqz v7, :cond_31

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v8}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    :cond_31
    if-eqz v3, :cond_33

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v7, :cond_33

    iget v8, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v7, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-eq v8, v7, :cond_32

    goto :goto_22

    :cond_32
    const/4 v7, 0x0

    goto :goto_24

    :cond_33
    :goto_22
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v7, :cond_35

    if-eqz v3, :cond_34

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v8, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v3, v10}, Lorg/telegram/ui/Stories/StoryViewer;->saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V

    :cond_34
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v11, v11, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v8, v9, v10, v11}, Lorg/telegram/ui/Stories/StoryViewer;->getDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_35
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v7}, Lorg/telegram/ui/EmojiAnimationsOverlay;->clear()V

    iput-wide v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentImageTime:J

    const/4 v7, 0x0

    iput-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->switchEventSent:Z

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v8, :cond_37

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v9, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v9, :cond_36

    iget v8, v8, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    invoke-virtual {v9, v8, v7}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    :cond_36
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v7, v7, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    goto :goto_23

    :cond_37
    if-nez v1, :cond_38

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v7, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$8202(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;F)F

    :cond_38
    :goto_23
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/Bulletin;->hideVisible(Landroid/view/ViewGroup;)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryCaptionView;->reset()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelWaiting()V

    const/4 v7, 0x1

    :goto_24
    const-string v9, " "

    if-nez v7, :cond_3a

    if-eqz v2, :cond_39

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v10, v10, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v10, :cond_39

    goto :goto_25

    :cond_39
    move-object v6, v9

    goto/16 :goto_2f

    :cond_3a
    :goto_25
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setOnSubtitleClick(Landroid/view/View$OnClickListener;)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v10, v10, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    const/16 v12, 0x21

    if-eqz v10, :cond_3c

    iget-boolean v10, v10, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-eqz v10, :cond_3b

    sget v10, Lorg/telegram/messenger/R$string;->FailedToUploadStory:I

    :goto_26
    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_27
    move-object v6, v9

    goto/16 :goto_2e

    :cond_3b
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v10}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$8300(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v10

    const/4 v13, 0x0

    aget-object v10, v10, v13

    iget-boolean v14, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditing:Z

    invoke-static {v10, v13, v14}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUploadingStr(Landroid/widget/TextView;ZZ)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_27

    :cond_3c
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v10

    if-eqz v10, :cond_40

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v10, v10, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v10, :cond_3f

    iget-object v10, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v10, :cond_3d

    goto :goto_29

    :cond_3d
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_3e

    iget v10, v13, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    :goto_28
    int-to-long v13, v10

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatStoryDate(J)Ljava/lang/String;

    move-result-object v10

    goto :goto_27

    :cond_3e
    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v10, :cond_3f

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    goto :goto_28

    :cond_3f
    :goto_29
    const-string v10, ""

    goto :goto_27

    :cond_40
    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v13, v10, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v13, :cond_4a

    iget v13, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_41

    sget v10, Lorg/telegram/messenger/R$string;->CachedStory:I

    goto :goto_26

    :cond_41
    invoke-virtual {v10}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getReply()Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    move-result-object v10

    const-string v13, "."

    const-string v14, "a"

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v18, 0x3fc00000    # 1.5f

    if-eqz v10, :cond_45

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getReply()Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    move-result-object v1

    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v8, Landroid/text/SpannableString;

    const-string v11, "r"

    invoke-direct {v8, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v11, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v5, Lorg/telegram/messenger/R$drawable;->mini_repost_story:I

    invoke-direct {v11, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v8, v11, v6, v5, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v5, v1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    if-eqz v5, :cond_43

    new-instance v5, Lorg/telegram/ui/AvatarSpan;

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v8}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$8300(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v8

    aget-object v8, v8, v6

    iget v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-direct {v5, v8, v11, v4}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v8, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const-wide/16 v21, 0x0

    cmp-long v4, v23, v21

    if-lez v4, :cond_42

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v11, v13

    goto :goto_2b

    :cond_42
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v6, v1, Lorg/telegram/ui/Stories/StoryCaptionView$Reply;->peerId:Ljava/lang/Long;

    move-object v11, v13

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    neg-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/AvatarSpan;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    if-eqz v4, :cond_44

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2a
    invoke-virtual {v10, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2b

    :cond_43
    move-object v11, v13

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fwd_from:Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v4, :cond_44

    goto :goto_2a

    :cond_44
    :goto_2b
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda16;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setOnSubtitleClick(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v4}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/DotDividerSpan;->setSize(F)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/4 v6, 0x0

    const/16 v8, 0x21

    invoke-virtual {v1, v4, v6, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatShortDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v6, v9

    :goto_2c
    const/4 v1, 0x0

    goto/16 :goto_2e

    :cond_45
    move-object v11, v13

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v5, :cond_48

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v5, :cond_48

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_48

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v5, Lorg/telegram/ui/AvatarSpan;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$8300(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v6

    const/4 v10, 0x0

    aget-object v6, v6, v10

    iget v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-direct {v5, v6, v12, v4}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v10, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    const-wide/16 v21, 0x0

    cmp-long v4, v12, v21

    if-lez v4, :cond_46

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v6, v9

    goto :goto_2d

    :cond_46
    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object v6, v9

    neg-long v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/telegram/ui/AvatarSpan;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    if-eqz v4, :cond_47

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_47
    :goto_2d
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda17;

    invoke-direct {v5, v0, v12, v13}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;J)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setOnSubtitleClick(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v5}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/DotDividerSpan;->setSize(F)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x21

    invoke-virtual {v4, v5, v9, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    int-to-long v9, v5

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatShortDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v10, v1

    goto/16 :goto_2c

    :cond_48
    move-object v6, v9

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->date:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatStoryDate(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v5, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->edited:Z

    if-eqz v5, :cond_49

    invoke-static {v4}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {v5}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/DotDividerSpan;->setSize(F)V

    const-string v9, " . "

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v5, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v5, Lorg/telegram/messenger/R$string;->EditedMessage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_49
    move-object v10, v4

    goto :goto_2e

    :cond_4a
    move-object v6, v9

    const/4 v10, 0x0

    :goto_2e
    if-eqz v10, :cond_4d

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v4, :cond_4c

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v4, :cond_4c

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v5, :cond_4c

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->isPinned(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    instance-of v4, v10, Landroid/text/SpannableStringBuilder;

    if-nez v4, :cond_4b

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v10, v4

    :cond_4b
    new-instance v4, Landroid/text/SpannableString;

    const-string v5, "p "

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_pin_mini:I

    invoke-direct {v5, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x21

    invoke-virtual {v4, v5, v9, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v10

    check-cast v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v9, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4c
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-virtual {v4, v10, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V

    :cond_4d
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v4, 0x0

    if-eqz v1, :cond_4e

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_4f

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide(Z)V

    :cond_4f
    :goto_2f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-ne v3, v4, :cond_51

    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-ne v2, v5, :cond_51

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    if-eqz v4, :cond_50

    iget-boolean v2, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    if-eqz v2, :cond_50

    iget-object v2, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v2, :cond_50

    iget-object v2, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v2, 0x1

    goto :goto_30

    :cond_50
    const/4 v2, 0x0

    :goto_30
    if-eq v1, v2, :cond_52

    :cond_51
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->updateCaption()V

    :cond_52
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    if-nez v2, :cond_54

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eq v3, v1, :cond_53

    goto :goto_31

    :cond_53
    const/4 v2, 0x0

    goto :goto_32

    :cond_54
    :goto_31
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v1, :cond_53

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setTranslating(Z)V

    :goto_32
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    const/16 v4, 0x8

    if-eqz v1, :cond_58

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createUnsupportedContainer()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createReplyDisabledView()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShareLink:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_55

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    :cond_55
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_56

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_56
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_67

    :cond_57
    const/4 v2, 0x0

    :goto_33
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_38

    :cond_58
    iget-wide v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v1, v8

    if-gez v5, :cond_59

    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    goto :goto_34

    :cond_59
    const/4 v8, 0x0

    :goto_34
    iget-wide v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v1

    if-eqz v1, :cond_5b

    :cond_5a
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_5b

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    goto :goto_35

    :cond_5b
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v1, :cond_5d

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_5c

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v1, :cond_5d

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isPossibleRemoveChatRestrictionsByBoosts(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_5c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_5d

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setVisibility(I)V

    :cond_5d
    :goto_35
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v1, :cond_5e

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-nez v1, :cond_5e

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createPremiumBlockedText()V

    :cond_5e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_61

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v1, :cond_5f

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePremiumBlockedText()V

    :cond_5f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText:Landroid/widget/LinearLayout;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-eqz v2, :cond_60

    const/4 v2, 0x0

    goto :goto_36

    :cond_60
    const/16 v2, 0x8

    :goto_36
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_61
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_62

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_62
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v1, :cond_63

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_63

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_63
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupportedContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_64

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_64
    iget-wide v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createReplyDisabledView()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    :cond_65
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_66

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_66
    :goto_37
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_67

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v2

    if-eqz v2, :cond_57

    const/16 v2, 0x8

    goto/16 :goto_33

    :cond_67
    :goto_38
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    if-nez v2, :cond_69

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getReply()Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    move-result-object v1

    if-eqz v1, :cond_68

    goto :goto_39

    :cond_68
    const/4 v2, 0x0

    goto :goto_3c

    :cond_69
    :goto_39
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v1, :cond_68

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getReply()Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    move-result-object v2

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    if-eqz v8, :cond_6a

    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-boolean v9, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->captionTranslated:Z

    if-nez v9, :cond_6a

    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v8, :cond_6a

    iget-boolean v8, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    if-eqz v8, :cond_6a

    const/4 v8, 0x1

    goto :goto_3a

    :cond_6a
    const/4 v8, 0x0

    :goto_3a
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v9, v9, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-ne v3, v9, :cond_6b

    const/4 v3, 0x1

    goto :goto_3b

    :cond_6b
    const/4 v3, 0x0

    :goto_3b
    invoke-virtual {v1, v5, v2, v8, v3}, Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;->setText(Ljava/lang/CharSequence;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;ZZ)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    :goto_3c
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_6c

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaption(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isCaptionPartVisible:Z

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaptionPartVisible(Z)V

    :cond_6c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3d
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v1, :cond_6d

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelectedPeer()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    invoke-interface {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->onPeerSelected(JI)V

    :cond_6d
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_72

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v2, :cond_6e

    const/4 v2, 0x0

    goto :goto_3e

    :cond_6e
    const/4 v2, 0x4

    :goto_3e
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_70

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    if-eqz v2, :cond_6f

    const/4 v2, 0x0

    goto :goto_3f

    :cond_6f
    const/16 v2, 0x8

    :goto_3f
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_70
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isFailed:Z

    if-eqz v2, :cond_71

    const/16 v2, 0x8

    goto :goto_40

    :cond_71
    const/4 v2, 0x0

    :goto_40
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    :cond_72
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-eqz v2, :cond_73

    const/4 v2, 0x0

    goto :goto_41

    :cond_73
    const/4 v2, 0x4

    :goto_41
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_74

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_74
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v2, :cond_75

    const/16 v2, 0x8

    goto :goto_42

    :cond_75
    const/4 v2, 0x0

    :goto_42
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_43
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    move/from16 v5, v28

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->append(JI)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_76

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->requestVideoPlayer(J)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePreloadImages()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->bumpPriority()V

    :cond_76
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_78

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_78

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    const/4 v2, 0x0

    :goto_44
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_78

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_77

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v3, v1, :cond_77

    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    goto :goto_45

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_78
    :goto_45
    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    iget v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    if-eqz v3, :cond_79

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesPosition:I

    :cond_79
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_7c

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-eqz v1, :cond_7a

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_46

    :cond_7a
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_46
    iput v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_47

    :cond_7b
    const/4 v3, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->noSoundIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_47
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v5, v2, v5

    mul-float v3, v3, v5

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_48

    :cond_7c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_48
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v3, :cond_7e

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v15, :cond_7d

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v8, :cond_7d

    const/4 v8, 0x1

    goto :goto_49

    :cond_7d
    const/4 v8, 0x0

    :goto_49
    invoke-virtual {v1, v5, v3, v8}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/ui/Stories/StoriesController$UploadingStory;Z)Z

    :goto_4a
    const/4 v1, 0x0

    goto :goto_4e

    :cond_7e
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_80

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v15, :cond_7f

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v8, :cond_7f

    const/4 v8, 0x1

    goto :goto_4b

    :cond_7f
    const/4 v8, 0x0

    :goto_4b
    invoke-virtual {v3, v5, v1, v8}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z

    goto :goto_4a

    :cond_80
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v15, :cond_81

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    if-eqz v5, :cond_81

    const/4 v5, 0x1

    :goto_4c
    const/4 v8, 0x0

    goto :goto_4d

    :cond_81
    const/4 v5, 0x0

    goto :goto_4c

    :goto_4d
    invoke-virtual {v1, v3, v8, v5}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->set(ZLorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)Z

    goto :goto_4a

    :goto_4e
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editedPrivacy:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_82

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    goto :goto_4f

    :cond_82
    const/4 v3, 0x0

    :goto_4f
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    if-eqz v7, :cond_85

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_84

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez v1, :cond_83

    goto :goto_50

    :cond_83
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_51

    :cond_84
    :goto_50
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesLikeButton:Lorg/telegram/ui/Stories/StoriesLikeButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :cond_85
    :goto_51
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    const-wide/16 v7, 0xb4

    if-eqz v1, :cond_88

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->failed:Z

    if-eqz v1, :cond_88

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createFailView()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/StoryFailView;->set(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_86
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    if-eqz v15, :cond_87

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    :goto_52
    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_53

    :cond_87
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_53

    :cond_88
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    if-eqz v1, :cond_8b

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failViewAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_89
    if-eqz v15, :cond_8a

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8a

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    goto :goto_52

    :cond_8a
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->failView:Lorg/telegram/ui/Stories/StoryFailView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8b
    :goto_53
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->setIconMuted(ZZ)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v1, :cond_8c

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_8c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoryViewer displayed story dialogId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " storyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$8400(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_8c
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v1, :cond_8d

    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    iget-wide v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->preload(IJLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    :cond_8d
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->linesCount:I

    if-eq v2, v3, :cond_8e

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/4 v2, 0x0

    goto :goto_54

    :cond_8e
    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_54
    invoke-virtual {v1, v2, v2, v15, v2}, Landroid/view/View;->setPadding(IIII)V

    iget v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/TranslateController;->detectStoryLanguage(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    if-nez p1, :cond_8f

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v1, :cond_8f

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_8f

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->storyReactionsLongPressHint:Z

    if-nez v1, :cond_8f

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    if-eqz v1, :cond_8f

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda19;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsTooltipRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_8f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_91

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-nez v1, :cond_90

    goto :goto_55

    :cond_90
    const/4 v3, 0x0

    goto :goto_56

    :cond_91
    :goto_55
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result v1

    if-nez v1, :cond_90

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "taptostorysoundhint"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_92

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->showTapToSoundHint:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->showTapToSoundHint:Ljava/lang/Runnable;

    const-wide/16 v5, 0xfa

    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_92
    :goto_56
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_95

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isBotsPreview()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->isEditBotsPreview()Z

    move-result v2

    if-nez v2, :cond_94

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v2, :cond_93

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$800(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v2

    if-nez v2, :cond_94

    :cond_93
    const/16 v15, 0x8

    goto :goto_57

    :cond_94
    const/4 v15, 0x0

    :goto_57
    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_95
    return-void
.end method

.method private updatePreloadImages()V
    .locals 10

    const-string v0, "UTF-8"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_c

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-nez v3, :cond_1

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-gez v4, :cond_2

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v6

    if-lt v4, v6, :cond_2

    :goto_2
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    goto/16 :goto_6

    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-direct {p0, v4, v5, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_6

    :cond_4
    if-gez v4, :cond_5

    const/4 v4, 0x0

    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-wide v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-direct {p0, v4, v5, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setStoryImage(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;)V

    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    if-nez v6, :cond_7

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v6

    iput v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    :cond_7
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?account="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&hash="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&dc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "&mime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&rid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->fileReference:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&reference="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    new-array v7, v2, [B

    :goto_3
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&sid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&did="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tg://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    :goto_5
    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v6, :cond_a

    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    new-instance v7, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;-><init>(Landroid/view/View;)V

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setVisibleReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iget-boolean v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->documentsToPrepare:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uriesToPrepare:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->preparePlayer(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private updatePremiumBlockedText()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText1:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->StoryGroupRepliesLocked:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->StoryRepliesLocked:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->premiumBlockedText2:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->StoryRepliesLockedButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updateSelectedPosition()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-wide v4, v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->random_id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/FactCheckController$Key$$ExternalSyntheticBackport0;->m(J)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    if-ne v4, v5, :cond_0

    iput v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :cond_4
    :goto_1
    add-int/2addr v0, v3

    :goto_2
    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4, v1}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_7

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    if-lez v0, :cond_7

    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    if-le v3, v4, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-ne v0, v1, :cond_8

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    :cond_8
    return-void
.end method

.method private updateSpeedItem(Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedLayout:Lorg/telegram/ui/ChooseSpeedLayout;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_7

    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const v1, 0x3e4ccccd    # 0.2f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedVerySlow:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedSlow:I

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedNormal:I

    goto :goto_0

    :cond_4
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/high16 v2, 0x3fc00000    # 1.5f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedFast:I

    goto :goto_0

    :cond_5
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedVeryFast:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->VideoSpeedCustom:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    invoke-static {v3}, Lorg/telegram/ui/Components/SpeedIconDrawable;->formatNumber(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->speedLayout:Lorg/telegram/ui/ChooseSpeedLayout;

    sget v1, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->update(FZ)V

    :cond_8
    :goto_3
    return-void
.end method

.method private updateStoryItems()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_4

    instance-of v0, v1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    check-cast v1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v4, v3, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v5, :cond_1

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->findMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_5

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    :goto_3
    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesFromFullPeer(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v0

    goto :goto_3

    :cond_7
    :goto_4
    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    return-void
.end method

.method private updateUserViews(Z)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->editingSourceItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v2, ""

    const/16 v3, 0x8

    if-eqz v1, :cond_1b

    const/4 v4, 0x3

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    :cond_2
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v9, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-gtz v9, :cond_3

    iput v8, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v9, :cond_5

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->forwards_count:I

    if-lez v0, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    iget-boolean v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v0, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iput-boolean v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    goto :goto_1

    :cond_5
    iput-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    :goto_1
    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    if-lez v0, :cond_7

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_6

    iget-boolean v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9, v0, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iput-boolean v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    goto :goto_3

    :cond_7
    iput-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    :goto_3
    const/4 v0, 0x0

    if-nez p1, :cond_a

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v10, :cond_8

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v9, v10, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    if-eqz v9, :cond_a

    iget-boolean v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v9, v11, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_a
    iget v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    neg-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    iget-boolean v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v9, :cond_b

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isPossibleRemoveChatRestrictionsByBoosts(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-nez v8, :cond_d

    :cond_b
    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v8, v8, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-lez v8, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v8, :cond_c

    sget v8, Lorg/telegram/messenger/R$string;->NobodyViews:I

    :goto_6
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_c
    sget v8, Lorg/telegram/messenger/R$string;->NobodyViewsArchived:I

    goto :goto_6

    :goto_7
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v5, "d  "

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v8, Lorg/telegram/messenger/R$drawable;->filled_views:I

    invoke-direct {v5, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v5, v8, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    invoke-static {v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounterVisible:Z

    const/high16 v5, 0x40800000    # 4.0f

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounterVisible:Z

    if-eqz v4, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getAnimateToWidth()F

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    :cond_f
    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onStoryItemUpdated(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)V

    goto/16 :goto_11

    :cond_11
    iget-object p1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-eqz p1, :cond_19

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-lez p1, :cond_19

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_9
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_14

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget-object v9, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v10, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {v9, v0, v10, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v0, v0, 0x1

    :cond_12
    if-lt v0, v4, :cond_13

    goto :goto_a

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_14
    :goto_a
    move p1, v0

    :goto_b
    if-ge p1, v4, :cond_15

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    const/4 v10, 0x0

    invoke-virtual {v2, p1, v9, v10}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    const-string v4, "Views"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    const v4, 0x3e4ccccd    # 0.2f

    const-string v9, "  d "

    if-lez v2, :cond_16

    invoke-virtual {p1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v10, Lorg/telegram/messenger/R$drawable;->mini_views_likes:I

    invoke-direct {v2, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v10, -0xd1c8

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;->setOverrideColor(I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {p1, v2, v10, v11, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_16
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->forwards_count:I

    if-lez v2, :cond_17

    invoke-virtual {p1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v9, Lorg/telegram/messenger/R$drawable;->mini_repost_story:I

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v9, -0xd8179f

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;->setOverrideColor(I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {p1, v2, v4, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->forwards_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    if-nez v0, :cond_18

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_d

    :cond_18
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v8

    mul-int v2, v2, v0

    add-int/2addr v1, v2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    goto :goto_c

    :goto_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-nez v0, :cond_1a

    sget v0, Lorg/telegram/messenger/R$string;->NobodyViews:I

    :goto_e
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1a
    sget v0, Lorg/telegram/messenger/R$string;->NobodyViewsArchived:I

    goto :goto_e

    :goto_f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_11

    :cond_1b
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfStatusView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfAvatarsView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    return-void
.end method

.method private updateViewOffsets()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->getProgressToDismiss()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastOpenedKeyboardHeight:I

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isRecording:Z

    if-eqz v8, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    iget-boolean v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v8

    if-eqz v8, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkAnimation()V

    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getHideInterfaceAlpha()F

    move-result v10

    iget-boolean v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    const/high16 v12, -0x1000000

    if-eqz v11, :cond_9

    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    const/4 v13, -0x1

    const v14, 0x3e051eb8    # 0.13f

    invoke-static {v12, v13, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v13

    const/16 v14, 0xaa

    invoke-static {v12, v14}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    iget v14, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    invoke-static {v13, v12, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v13, v4, v13

    mul-float v12, v12, v13

    mul-float v12, v12, v10

    iget v13, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v13, v4, v13

    mul-float v12, v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6

    :cond_9
    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x430c0000    # 140.0f

    mul-float v13, v13, v10

    iget v14, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v14, v4, v14

    mul-float v13, v13, v14

    float-to-int v13, v13

    invoke-static {v12, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    :goto_6
    iget-boolean v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    if-nez v11, :cond_b

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToReply:F

    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v12, v12, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_b

    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v11

    iget v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_b

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    iget v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    cmpl-float v11, v11, v12

    if-nez v11, :cond_b

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v11, v1, v11

    if-nez v11, :cond_b

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    cmpl-float v11, v0, v11

    if-nez v11, :cond_b

    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v11

    cmpl-float v2, v2, v11

    if-nez v2, :cond_b

    if-nez v7, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToStickerExpanded:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    cmpl-float v2, v6, v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    return-void

    :cond_b
    :goto_7
    iput-boolean v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastAnimatingKeyboardHeight:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_c
    const/4 v2, 0x0

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_d

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_8

    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_8
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->prevToHideProgress:F

    iput v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    iput v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    iput v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToReply:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v2, :cond_f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_9

    :cond_e
    const/16 v1, 0x8

    :goto_9
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1d

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_1a

    sget v5, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1a

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v5

    if-ne v2, v5, :cond_10

    goto/16 :goto_c

    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v5

    if-ne v2, v5, :cond_11

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    sub-float/2addr v5, v7

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_e

    :cond_11
    instance-of v5, v2, Lorg/telegram/ui/Components/HintView;

    if-eqz v5, :cond_12

    check-cast v2, Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HintView;->updatePosition()V

    goto/16 :goto_e

    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eq v2, v5, :cond_1c

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_1c

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    if-eq v2, v5, :cond_1c

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    if-eq v2, v5, :cond_1c

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_1c

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    if-eq v2, v5, :cond_1c

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_1c

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_1c

    :cond_13
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float v7, v4, v7

    mul-float v5, v5, v7

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float v11, v4, v11

    mul-float v7, v7, v11

    sub-float/2addr v5, v7

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v12, v12, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    mul-float v11, v11, v12

    sub-float/2addr v5, v11

    iget-boolean v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v11, :cond_14

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v11, v4, v11

    mul-float v11, v11, v10

    goto :goto_b

    :cond_14
    mul-float v11, v10, v4

    :goto_b
    iget-object v12, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-ne v2, v12, :cond_15

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget v7, v7, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    mul-float v5, v5, v7

    :cond_15
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-ne v2, v7, :cond_16

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v11

    sub-int/2addr v7, v11

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget v11, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_16
    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne v2, v7, :cond_18

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToRecording:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v7

    sub-float v7, v4, v7

    mul-float v5, v5, v7

    sub-float v7, v4, v6

    mul-float v5, v5, v7

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToTextA:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v7

    sub-float v7, v4, v7

    mul-float v5, v5, v7

    mul-float v11, v11, v5

    mul-float v11, v11, v4

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v7

    cmpl-float v7, v7, v3

    if-eqz v7, :cond_17

    cmpl-float v7, v11, v3

    if-nez v7, :cond_17

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    :cond_17
    invoke-virtual {v2, v11}, Landroid/view/View;->setAlpha(F)V

    const v7, 0x3e4ccccd    # 0.2f

    mul-float v5, v5, v7

    const v7, 0x3f4ccccd    # 0.8f

    add-float/2addr v5, v7

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_e

    :cond_18
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_19

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    if-eq v2, v5, :cond_1c

    :cond_19
    invoke-virtual {v2, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_e

    :cond_1a
    :goto_c
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-ne v2, v5, :cond_1c

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v5, :cond_1b

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismiss:F

    sub-float v5, v4, v5

    mul-float v5, v5, v10

    iget v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v7, v4, v7

    mul-float v5, v5, v7

    :goto_d
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_e

    :cond_1b
    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v5, v4, v5

    mul-float v5, v5, v10

    goto :goto_d

    :cond_1c
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareButton:Landroid/widget/ImageView;

    sub-float v0, v4, v0

    mul-float v0, v0, v10

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v2, v4, v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v2, v4, v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1e

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v2, v4, v2

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1e
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_14

    :cond_1f
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    if-eq v1, v2, :cond_21

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    if-eq v1, v2, :cond_21

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-eq v1, v2, :cond_21

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    if-eq v1, v2, :cond_21

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-eq v1, v2, :cond_21

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-ne v1, v2, :cond_20

    goto :goto_10

    :cond_20
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_14

    :cond_21
    :goto_10
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-ne v1, v2, :cond_22

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconViewAlpha:F

    goto :goto_11

    :cond_22
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_11
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-ne v1, v3, :cond_24

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->hideCaptionWithInterface()Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v10

    goto :goto_12

    :cond_23
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_12
    mul-float v2, v2, v3

    :goto_13
    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    sub-float v3, v4, v3

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_14

    :cond_24
    mul-float v2, v2, v10

    goto :goto_13

    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_28

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    if-nez v3, :cond_27

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v3, :cond_26

    goto :goto_15

    :cond_26
    const/4 v8, 0x0

    :cond_27
    :goto_15
    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setHorizontalPadding(FFZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_28
    return-void
.end method


# virtual methods
.method public animateOut(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$38;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$38;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1a4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public cancelTextSelection()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    :cond_0
    return-void
.end method

.method public cancelTouch()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->cancelTouch()V

    return-void
.end method

.method public checkPinchToZoom(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method

.method public checkReactionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    neg-float v0, v2

    neg-float v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    :cond_0
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return v5

    :cond_1
    iget v1, v4, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0

    :cond_2
    return v1
.end method

.method checkReactionsLayout()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$34;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$34;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->StoryGroupReactionsHint:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->StoryReactionsHint:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipEnterAnimation:Z

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerIndex:I

    const/4 v8, 0x0

    const/high16 v9, 0x42800000    # 64.0f

    const/4 v3, -0x2

    const/high16 v4, 0x42900000    # 72.0f

    const/16 v5, 0x31

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$35;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$35;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isGroup:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->StoryGroupReactionsHint:I

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->StoryReactionsHint:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method checkReactionsLayoutForLike()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$36;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$36;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v2, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x42800000    # 64.0f

    const/4 v3, -0x2

    const/high16 v4, 0x42940000    # 74.0f

    const/16 v5, 0x35

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$37;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$37;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public checkRecordLocked(Z)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DiscardVideoMessageTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->DiscardVideoMessageDescription:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageDescription:I

    goto :goto_0

    :goto_1
    sget v1, Lorg/telegram/messenger/R$string;->DiscardVoiceMessageAction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p1, Lorg/telegram/messenger/R$string;->Continue:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public checkTextSelectionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public closeKeyboardOrEmoji()Z
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionShowing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showLikesReaction(Z)V

    return v2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->closeHint()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryCaptionView;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$SimpleTextSelectionHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear(Z)V

    return v2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mediaBanTooltip:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/HintView;->hide(Z)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyEditCaptionView:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    return v2

    :cond_9
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkRecordLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    return v2

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(ZZ)Z

    :goto_1
    return v2

    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-lt v0, v3, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v5, v0}, Lorg/telegram/ui/Stories/StoryViewer;->saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return v2

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->getProgressToBlackout()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryCaptionView;->collapse()V

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return v2

    :cond_10
    return v1
.end method

.method public createBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 13

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->drawPlayingBitmap(IILandroid/graphics/Canvas;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3e19999a    # 0.15f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    const/16 v1, 0x66

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object v7, p2

    invoke-static/range {v7 .. v12}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_a

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v3, 0x0

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p2, p2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    aget-object v4, p3, v3

    if-ne p2, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storyQualityUpdate:I

    if-ne p1, p2, :cond_1

    goto/16 :goto_2

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryCaptionView;->captionTextview:Lorg/telegram/ui/Stories/StoryCaptionView$StoryCaptionTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I

    if-ne p1, p2, :cond_3

    :goto_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    goto/16 :goto_6

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    if-ne p1, p2, :cond_6

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->checkStoryLimit()Lorg/telegram/ui/Stories/StoriesController$StoryLimit;

    move-result-object p1

    if-eqz p1, :cond_5

    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->active(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->fragmentForLimit()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->findActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$StoryLimit;->getLimitReachedType()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    goto/16 :goto_6

    :cond_5
    :goto_1
    return-void

    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    if-ne p1, p2, :cond_9

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v4, p2, v0

    if-ltz v4, :cond_7

    iget p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->isPremiumBlocked(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v3, 0x1

    :cond_7
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    if-ne p2, v3, :cond_8

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v0

    cmp-long v4, p2, v0

    if-eqz v4, :cond_14

    :cond_8
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isPremiumBlocked:Z

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->starsPriceBlocked:J

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    goto/16 :goto_0

    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_14

    aget-object p1, p3, v3

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_14

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    neg-long v0, v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_14

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    goto/16 :goto_6

    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->count:I

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    if-nez p1, :cond_c

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->deletedPeer:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->switchToNextAndRemoveCurrentPeer()V

    :cond_c
    return-void

    :cond_d
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_e

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p1, p2

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz p1, :cond_10

    :cond_f
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateUserViews(Z)V

    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz p1, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Z)V

    goto :goto_4

    :cond_11
    iget-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long p3, p1, v0

    if-eqz p3, :cond_12

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    :cond_12
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$800(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers()Z

    move-result p2

    if-nez p2, :cond_13

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_5

    :cond_13
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_14
    :goto_6
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateViewOffsets()V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    const/high16 v1, 0x42200000    # 40.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->repostCounter:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReaction:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromX:I

    int-to-float v5, v5

    int-to-float v6, v4

    div-float/2addr v6, v1

    sub-float/2addr v0, v6

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v8, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v7

    invoke-static {v5, v0, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromY:I

    int-to-float v5, v5

    sub-float/2addr v3, v6

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    invoke-static {v5, v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionFromSize:I

    iget v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->movingReactionProgress:F

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_3

    float-to-int v6, v0

    float-to-int v7, v3

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v5, v6, v7, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v4, v4

    invoke-virtual {v5, v0, v3, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawAnimatedEmojiAsMovingReaction:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v4, v4

    div-float v1, v4, v1

    sub-float/2addr v0, v1

    sub-float/2addr v3, v1

    invoke-virtual {v5, v0, v3, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isLastFrame()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v5, :cond_5

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float v1, v0, v4

    float-to-int v1, v1

    sub-float v6, v3, v4

    float-to-int v6, v6

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v5, v1, v6, v0, v3}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->isDone()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    :cond_5
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->drawReactionEffect:Z

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->drawRecordedPannel(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$8600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowShare:Z

    const/high16 v4, 0x42380000    # 46.0f

    if-eqz v3, :cond_1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowRepost:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v3, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$8700(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v7, v3

    int-to-float v3, v7

    sub-float/2addr v3, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v2, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v2, v7

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float v3, v4, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    sub-float/2addr v4, v2

    mul-float v0, v0, v4

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v1, v3, v4}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$8700(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$8600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$8800(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v1, v1, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$8800(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    iget-object v2, v2, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$8800(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$8800(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto/16 :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v2, 0x41900000    # 18.0f

    if-ne p2, v0, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$100(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    const/high16 v2, 0x42fa0000    # 125.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAnimatedTop()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$100(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne p2, v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawPlayingBitmap(IILandroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v4, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->surfaceView:Landroid/view/SurfaceView;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {p3, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public findClickableView(Landroid/view/ViewGroup;FFZ)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_d

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    if-ne v3, v4, :cond_4

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v5, p2

    float-to-int v6, p3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p3, v5

    invoke-virtual {v4, p2, v5}, Lorg/telegram/ui/Stories/StoryCaptionView;->allowInterceptTouchEvent(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    if-ne v3, v5, :cond_6

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hasSelected()Z

    move-result v5

    if-nez v5, :cond_6

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-ltz v6, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    cmpl-float v5, p2, v5

    if-lez v5, :cond_6

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyAreasView:Lorg/telegram/ui/Stories/StoryMediaAreasView;

    invoke-virtual {v3, p2, p3}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hasClickableViews(FF)Z

    move-result v3

    if-eqz v3, :cond_c

    return v2

    :cond_6
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-ne v3, v5, :cond_7

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_7

    return v2

    :cond_7
    if-nez p4, :cond_b

    float-to-int v5, p2

    float-to-int v6, p3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-ne v3, v4, :cond_9

    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getRecordCircle()Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v4

    if-ne v3, v4, :cond_b

    :cond_a
    return v2

    :cond_b
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_c

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, p2, v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float v3, p3, v3

    invoke-virtual {p0, v4, v5, v3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->findClickableView(Landroid/view/ViewGroup;FFZ)Z

    move-result v3

    if-eqz v3, :cond_c

    return v2

    :cond_c
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return v0
.end method

.method public getCurrentDay()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentPeer()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    return-wide v0
.end method

.method public getListPosition()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->listPosition:I

    return v0
.end method

.method public getPlayingBitmap()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->drawPlayingBitmap(IILandroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    return v0
.end method

.method public getStoriesCount()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->uploadingStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->totalStoriesCount:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getStoryItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$StoryItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract isSelectedPeer()Z
.end method

.method public needEnterText()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showEmojiView()V

    :cond_1
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v0
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->containsTouch(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->containsTouch(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->hitButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    if-eqz p1, :cond_6

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_2

    :cond_0
    const/16 p2, 0x15

    if-ne p1, p2, :cond_7

    if-nez p3, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->sendUriAsDocument(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    if-ge p2, p3, :cond_4

    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->sendUriAsDocument(Landroid/net/Uri;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showAttachmentError()V

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_5
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->afterMessageSend(Z)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->createChatAttachView()V

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onResume()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storyQualityUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->attachedToWindow:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onPause()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionMoveDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiReactionEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->preloadReactionHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storyQualityUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stealthModeChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesLimitUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userIsPremiumBlockedUpadted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1200(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/high16 p3, 0x42900000    # 72.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_0
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->getKeyboardHeight()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    goto :goto_0

    :cond_1
    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v3, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    add-int/2addr v3, v4

    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    mul-float v4, v4, v5

    const/high16 v5, 0x41100000    # 9.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    if-le v3, v4, :cond_3

    if-le v4, v3, :cond_4

    :cond_3
    move v4, v3

    :cond_4
    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-ge v5, v6, :cond_5

    iput v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    :cond_5
    iget v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const-wide/16 v7, 0xfa

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->realKeyboardHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isWaitingForKeyboard()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v5

    goto :goto_2

    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkStickresExpandHeight()V

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getStickersExpandedHeight()I

    move-result v5

    goto :goto_2

    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibleEmojiPadding()I

    move-result v5

    :cond_a
    :goto_2
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    iget v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    if-eq v9, v5, :cond_16

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-lez v5, :cond_b

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v9, :cond_b

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    iput v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastOpenedKeyboardHeight:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayout()V

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissAll()V

    goto :goto_3

    :cond_b
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v9, :cond_c

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-wide v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v13, v13, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v10, v11, v12, v13, v9}, Lorg/telegram/ui/Stories/StoryViewer;->saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V

    :cond_c
    :goto_3
    iget-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v9, :cond_d

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v9, :cond_d

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-nez v9, :cond_e

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    :cond_e
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v10, v1

    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->optionsIconView:Landroid/widget/ImageView;

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v10, v1

    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v9, :cond_f

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    xor-int/2addr v10, v1

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkReactionsButton(Z)V

    :cond_f
    iget-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v9, :cond_10

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v9, :cond_10

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v9, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setKeyboardVisible(Z)V

    :cond_10
    iput v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastKeyboardHeight:I

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v9}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    iget v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->animatingKeyboardHeight:F

    int-to-float v10, v5

    const/4 v11, 0x2

    new-array v11, v11, [F

    aput v9, v11, v2

    aput v10, v11, v1

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda24;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    new-instance v10, Lorg/telegram/ui/Stories/PeerStoriesView$32;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$32;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v9, :cond_12

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v8, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToReply()V

    goto :goto_4

    :cond_12
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_4
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eq v7, v6, :cond_15

    if-eqz v7, :cond_13

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BitmapShaderTools;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bitmapShaderTools:Lorg/telegram/ui/Components/BitmapShaderTools;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BitmapShaderTools;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->createBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_13
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    :cond_14
    :goto_5
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    goto :goto_6

    :cond_15
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->animateKeyboardOpening:Z

    :cond_16
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v6

    if-eqz v6, :cond_17

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_17
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v7, v3, v4

    const/high16 v8, 0x42800000    # 64.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-le v7, v9, :cond_18

    const/4 v7, 0x1

    goto :goto_7

    :cond_18
    const/4 v7, 0x0

    :goto_7
    iput-boolean v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v7, :cond_19

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_8

    :cond_19
    const/4 v7, 0x0

    :goto_8
    add-int/2addr v7, v4

    sub-int v7, v3, v7

    shr-int/2addr v7, v1

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v9, :cond_1a

    neg-int v9, v7

    add-int/2addr v9, v3

    sub-int/2addr v9, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    :goto_9
    iput v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->enterViewBottomOffset:I

    goto :goto_a

    :cond_1a
    neg-int v9, v7

    add-int/2addr v9, v3

    sub-int/2addr v9, v4

    goto :goto_9

    :goto_a
    iget-boolean v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->wasBigScreen:Z

    if-eq v9, v10, :cond_1b

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->selfView:Landroid/widget/FrameLayout;

    const/high16 v9, 0x41000000    # 8.0f

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v10, :cond_1c

    add-int v10, v7, v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    :goto_b
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_c

    :cond_1c
    add-int v10, v7, v4

    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    goto :goto_b

    :cond_1d
    :goto_c
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x42200000    # 40.0f

    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    const/4 v13, -0x1

    if-nez v12, :cond_1e

    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/16 v14, 0xbf

    invoke-static {v13, v14}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    add-int v12, v7, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v12, v13

    :goto_d
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_e

    :cond_1e
    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    const/high16 v14, -0x1000000

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-static {v14, v13, v15}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    add-int v12, v7, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v12, v13

    goto :goto_d

    :cond_1f
    :goto_e
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v6, :cond_21

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v5, :cond_20

    add-int v5, v7, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v5, v8

    sub-int v5, v3, v5

    :goto_f
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_10

    :cond_20
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_f

    :cond_21
    :goto_10
    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-nez v5, :cond_24

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v7, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v7, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v7, v4

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v4, :cond_22

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_11

    :cond_22
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_11
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->wasBigScreen:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eq v5, v6, :cond_23

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_23
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    iput v4, v5, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    goto :goto_12

    :cond_24
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->bottomActionsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v7, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v7, v4

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->wasBigScreen:Z

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eq v4, v5, :cond_25

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyCaptionView:Lorg/telegram/ui/Stories/StoryCaptionView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v4, Lorg/telegram/ui/Stories/StoryCaptionView;->blackoutBottomOffset:I

    :goto_12
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->privacyButton:Lorg/telegram/ui/Stories/StoryPrivacyButton;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_26

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    :cond_26
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_27

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    :cond_27
    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v6, v6

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_28

    float-to-int v4, v4

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$8300(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v5

    aget-object v2, v5, v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$8300(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    :cond_28
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v2, p1

    invoke-super {v0, v2, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->wasBigScreen:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToKeyboard:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public preloadMainImage(J)V
    .locals 3

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateStoryItems()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updateSelectedPosition()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    :goto_0
    return-void
.end method

.method public progressToDismissUpdated()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->BIG_SCREEN:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->changeBoundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->outT:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reset()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->hideCamera(Z)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setIsVisible(Z)V

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iput-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->messageSent:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTextSelection()V

    return-void
.end method

.method public selectPosition(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public setAccount(I)V
    .locals 3

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->setAccount(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCurrentAccount(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->likesReactionLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCurrentAccount(I)V

    :cond_1
    return-void
.end method

.method public setActive(JZ)V
    .locals 4

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eq v0, p3, :cond_8

    sget v0, Lorg/telegram/ui/Stories/PeerStoriesView;->activeCount:I

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v0, v2

    sput v0, Lorg/telegram/ui/Stories/PeerStoriesView;->activeCount:I

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->useSurfaceInViewPagerWorkAround()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p3, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsSwiping(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {p3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->requestVideoPlayer(J)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePreloadImages()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "StoryViewer displayed story dialogId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " storyId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$8400(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTextSelection()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->muteIconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToHideInterface:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelWaiting()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsRecording(Z)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 p3, 0x2

    if-eqz p2, :cond_4

    const/4 p2, 0x3

    goto :goto_2

    :cond_4
    const/4 p2, 0x2

    :goto_2
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->leftPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->rightPreloadImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz p2, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz p1, :cond_8

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Stories/StoriesController;->pollViewsForSelfStories(JZ)V

    :cond_8
    return-void
.end method

.method public setActive(Z)V
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(JZ)V

    return-void
.end method

.method public setDay(JLjava/util/ArrayList;I)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-direct {p0, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->bindInternal(I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    return-void
.end method

.method public setDialogId(JI)V
    .locals 3

    iget-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->clear()V

    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->dialogId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->day:Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->bindInternal(I)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p3, p3, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Z)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->loadSkippedStories(J)V

    :goto_0
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isVisible:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAlpha(F)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkStealthMode(Z)V

    :cond_1
    return-void
.end method

.method public setLongpressed(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isLongPressed:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOffset(F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurface:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->useSurfaceInViewPagerWorkAround()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->allowDrawSurfaceRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsSwiping(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPaused(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->paused:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->stopPlaying(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->lastDrawTime:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setViewsThumbImageReceiver(FFFLorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbAlpha:F

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbScale:F

    iput p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbPivotY:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    if-ne p1, p4, :cond_0

    return-void

    :cond_0
    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->viewsThumbImageReceiver:Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    if-eqz p4, :cond_1

    iget-object p1, p4, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p2, p4, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->updateStaticDrawableThump(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public showKeyboard()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->replyDisabledTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public showNoSoundHint(Z)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x3da00000    # -56.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x37

    const/4 v5, 0x0

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->StoryNoSound:I

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->StoryTapToSound:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->soundTooltip:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method public stopPlaying(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->stopAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public switchToNext(Z)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    add-int/2addr p1, v0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    return v0

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->selectedPosition:I

    if-lez p1, :cond_2

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public updatePosition()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition(Z)V

    return-void
.end method

.method public useSurfaceInViewPagerWorkAround()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public viewsAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->userCanSeeViews:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
