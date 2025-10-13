.class public Lorg/telegram/ui/Stories/StoryViewer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;,
        Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;,
        Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;,
        Lorg/telegram/ui/Stories/StoryViewer$HolderClip;,
        Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;
    }
.end annotation


# static fields
.field static J:I

.field public static animationInProgress:Z

.field private static checkSilentMode:Z

.field public static currentSpeed:F

.field public static globalInstances:Ljava/util/ArrayList;

.field private static isInSilentMode:Z

.field private static lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field private static final replyDrafts:Landroid/util/LongSparseArray;

.field private static runOpenAnimationAfterLayout:Z


# instance fields
.field public ATTACH_TO_FRAGMENT:Z

.field public USE_SURFACE_VIEW:Z

.field allowIntercept:Z

.field public allowScreenshots:Z

.field allowSelfStoriesView:Z

.field allowSwipeToDissmiss:Z

.field allowSwipeToReply:Z

.field private allowTouchesByViewpager:Z

.field private animateAvatar:Z

.field animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

.field aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field avatarRectTmp:Landroid/graphics/RectF;

.field clipBottom:F

.field clipTop:F

.field containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

.field public currentAccount:I

.field currentDialog:Landroid/app/Dialog;

.field currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

.field currentSheet:Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

.field public dayStoryId:I

.field private delayedTapRunnable:Ljava/lang/Runnable;

.field doOnAnimationReadyRunnables:Ljava/util/ArrayList;

.field private flingCalled:Z

.field public foundViewToClose:Z

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public fromBottomSheet:Z

.field fromDismissOffset:F

.field fromHeight:F

.field private fromRadius:I

.field fromWidth:F

.field fromX:F

.field fromXCell:F

.field fromY:F

.field fromYCell:F

.field private fullyVisible:Z

.field gestureDetector:Landroid/view/GestureDetector;

.field private hideEnterViewProgress:F

.field inSeekingMode:Z

.field inSwipeToDissmissMode:Z

.field inputBackgroundPaint:Landroid/graphics/Paint;

.field private invalidateOutRect:Z

.field private isBulletinVisible:Z

.field private isCaption:Z

.field private isCaptionPartVisible:Z

.field private isClosed:Z

.field private isHintVisible:Z

.field private isInPinchToZoom:Z

.field private isInTextSelectionMode:Z

.field private isInTouchMode:Z

.field private isLikesReactions:Z

.field public isLongpressed:Z

.field private isOverlayVisible:Z

.field private isPopupVisible:Z

.field private isRecording:Z

.field isShowing:Z

.field isSingleStory:Z

.field private isSwiping:Z

.field public isTranslating:Z

.field private isWaiting:Z

.field j:I

.field keyboardVisible:Z

.field lastDialogId:J

.field lastPosition:I

.field private lastStoryContainerHeight:F

.field lastUri:Landroid/net/Uri;

.field locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field longPressRunnable:Ljava/lang/Runnable;

.field private messageId:I

.field private onCloseListener:Ljava/lang/Runnable;

.field openCloseAnimator:Landroid/animation/ValueAnimator;

.field openedFromLightNavigationBar:Z

.field private opening:Z

.field overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

.field parentActivity:Lorg/telegram/ui/LaunchActivity;

.field private paused:Z

.field public placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

.field playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

.field private playerSavedPosition:J

.field pointPosition:[F

.field preparedPlayers:Ljava/util/ArrayList;

.field progressToDismiss:F

.field progressToOpen:F

.field private realKeyboardHeight:I

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field reversed:Z

.field public savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

.field selfStoriesViewsOffset:F

.field selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

.field private showViewsAfterOpening:Z

.field singleStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field private storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

.field storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

.field public storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

.field private surfaceView:Landroid/view/SurfaceView;

.field swipeToDismissHorizontalDirection:F

.field swipeToDismissHorizontalOffset:F

.field swipeToDismissOffset:F

.field swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

.field swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

.field swipeToReplyOffset:F

.field swipeToReplyProgress:F

.field swipeToReplyWaitingKeyboard:Z

.field swipeToViewsAnimator:Landroid/animation/ValueAnimator;

.field private textureView:Landroid/view/TextureView;

.field public final transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

.field public unreadStateChanged:Z

.field verticalScrollDetected:Z

.field private volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

.field windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field windowManager:Landroid/view/WindowManager;

.field public windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;


# direct methods
.method public static synthetic $r8$lambda$-f0lpJiWsZyyv2bwOgnlAu7RJ2Y(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$0ypRv1pnVgdj-WmlNz8KhTioLzA(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$startCloseAnimation$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dq5saR95Zjko2JnbBAhBUwzXOw0(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$listenToAttachedSheet$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$P33Shr9h9-IIQ1r-pqMOAzSJtog(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$openViews$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$c9LFYRa41H8pRsIliwvP_q3H6eU(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$showDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cATJBIjNrPf2_QY5It9TnTCc0nM(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$cancelSwipeToReply$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$csNVpY8VfXFfZslLsOgDOq8obtY(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$startOpenAnimation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kswXHhws9w_gZ_jA75c_jVrLCPE(Lorg/telegram/ui/Stories/StoryViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$cancelSwipeToViews$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lIiufATeB37-O-sYFtrEfcfCkCg(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$layoutAndFindView$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$yKzmDtgk0Waii7zROD2X3FECUS0(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->lambda$startCloseAnimation$8()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->checkSilentMode:Z

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoryViewer;->replyDrafts:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/Stories/StoryViewer;->J:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots:Z

    new-instance v2, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->avatarRectTmp:Landroid/graphics/RectF;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->pointPosition:[F

    new-instance v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    new-instance v2, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    new-instance v1, Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-direct {v1}, Lorg/telegram/messenger/support/LongSparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    sget v1, Lorg/telegram/ui/Stories/StoryViewer;->J:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/telegram/ui/Stories/StoryViewer;->J:I

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->j:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->inputBackgroundPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->flingCalled:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->flingCalled:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/StoryViewer;Landroid/widget/FrameLayout;FFZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StoryViewer;->findClickableView(Landroid/widget/FrameLayout;FFZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->invalidateOutRect:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->invalidateOutRect:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesVolumeControl;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/StoryViewer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromRadius:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->opening:Z

    return p0
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0

    sput-boolean p0, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->startOpenAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLikesReactions:Z

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLikesReactions:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaption:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->setInTouchMode(Z)V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaption:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->setLongPressed(Z)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/StoryViewer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTouchMode:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->delayedTapRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->delayedTapRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInPinchToZoom:Z

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInPinchToZoom:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->layoutAndFindView()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->dispatchVolumeEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/StoryViewer;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryContainerHeight:F

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Stories/StoryViewer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryContainerHeight:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaptionPartVisible:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/StoryViewer;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->hideEnterViewProgress:F

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Stories/StoryViewer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->hideEnterViewProgress:F

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaptionPartVisible:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/StoryViewer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->requestAdjust(Z)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/StoryViewer;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerSavedPosition:J

    return-wide v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Stories/StoryViewer;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerSavedPosition:J

    return-wide p1
.end method

.method static synthetic access$3600()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    return v0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isWaiting:Z

    return p1
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isPopupVisible:Z

    return p1
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isBulletinVisible:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isHintVisible:Z

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isSwiping:Z

    return p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isHintVisible:Z

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->showViewsAfterOpening:Z

    return p0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->showViewsAfterOpening:Z

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/StoryViewer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTextSelectionMode:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Stories/StoryViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTextSelectionMode:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->showKeyboard()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateProgressToDismiss()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesIntro;)Lorg/telegram/ui/Stories/StoriesIntro;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/StoryViewer;)F
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getBlackoutAlpha()F

    move-result p0

    return p0
.end method

.method private checkInSilentMode()V
    .locals 3

    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->checkSilentMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->checkSilentMode:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    :cond_1
    return-void
.end method

.method public static closeGlobalInstances()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private dispatchVolumeEvent(Landroid/view/KeyEvent;)V
    .locals 2

    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->toggleSilentMode()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->hasSound()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->showNoSoundHint(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/StoriesVolumeControl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method private draftHash(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)J
    .locals 3

    const/16 v0, 0x10

    shr-long v1, p1, v0

    add-long/2addr p1, v1

    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    int-to-long v1, p3

    shl-long v0, v1, v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private findClickableView(Landroid/widget/FrameLayout;FFZ)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isPopupVisible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float v3, p2, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    sub-float v4, p3, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v1, v3, v4, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->findClickableView(Landroid/view/ViewGroup;FFZ)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-boolean v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->keyboardVisible:Z

    if-eqz v3, :cond_4

    return v0

    :cond_4
    if-eqz p4, :cond_5

    return v0

    :cond_5
    if-eqz v1, :cond_6

    iget-object p4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_6

    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p4, v0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p4, v0

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p4, v0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_6

    return v2

    :cond_6
    if-eqz v1, :cond_7

    iget-object p4, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingAudioVideo()Z

    move-result p4

    if-eqz p4, :cond_7

    return v2

    :cond_7
    iget-object p4, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    if-eqz p4, :cond_8

    return v2

    :cond_8
    invoke-static {p1, p2, p3, v1}, Lorg/telegram/messenger/AndroidUtilities;->findClickableView(Landroid/view/ViewGroup;FFLandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private getBlackoutAlpha()F
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, v2, v1

    add-float/2addr v2, v1

    mul-float v0, v0, v2

    return v0
.end method

.method public static isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 3

    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p0

    if-ne v0, p0, :cond_2

    sget-object p0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic lambda$cancelSwipeToReply$4(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    const/high16 p1, 0x43480000    # 200.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$cancelSwipeToViews$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$layoutAndFindView$5()V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$listenToAttachedSheet$3()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentSheet:Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setLongPressed(Z)V

    return-void
.end method

.method private synthetic lambda$openViews$9()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    return-void
.end method

.method private synthetic lambda$showDialog$2(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startCloseAnimation$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startCloseAnimation$8()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->enableHwAcceleration()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$11;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$startOpenAnimation$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->checkHwAcceleration(F)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private layoutAndFindView()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getSelectedPosition()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentDialogId()J

    move-result-wide v1

    iget v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    new-instance v4, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;->preLayout(JILjava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private lockOrientation(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    const/16 v1, 0x80

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    :goto_2
    return-void
.end method

.method private requestAdjust(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustNothing(Landroid/app/Activity;I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    const/16 p1, 0x30

    goto :goto_0

    :cond_2
    const/16 p1, 0x10

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private setInTouchMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTouchMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesVolumeControl;->hide()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method private setLongPressed(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInPinchToZoom:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setSeeking(Z)V

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->setLongpressed(Z)V

    :cond_3
    return-void
.end method

.method private setNavigationButtonsColor(Z)V
    .locals 2

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->isLightNavigationBar()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->openedFromLightNavigationBar:Z

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->openedFromLightNavigationBar:Z

    if-eqz v1, :cond_1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/LaunchActivity;->setLightNavigationBar(Z)V

    :cond_1
    return-void
.end method

.method private showKeyboard()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->showKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToReply()V

    return-void
.end method

.method private startCloseAnimation(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setNavigationButtonsColor(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromDismissOffset:F

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->opening:Z

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_2

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->layoutAndFindView()V

    :goto_0
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private startOpenAnimation()V
    .locals 5

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->setNavigationButtonsColor(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    sput-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromDismissOffset:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgress;->copyParams(Lorg/telegram/ui/Components/RadialProgress;)V

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->opening:Z

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/HwFrameLayout;->enableHwAcceleration()V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$10;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/StoryViewer$10;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x28

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateProgressToDismiss()V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x42a00000    # 80.0f

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_0

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, v3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    goto :goto_0

    :goto_1
    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->progressToDismissUpdated()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private updateTransitionParams()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getSelectedPosition()I

    move-result v5

    :goto_0
    if-eqz v1, :cond_4

    if-ltz v5, :cond_4

    iget-object v6, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x0

    if-eqz v1, :cond_6

    if-ltz v5, :cond_6

    iget-object v8, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v5, v8, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_4

    :cond_6
    :goto_3
    move-object v1, v7

    :goto_4
    if-nez v1, :cond_7

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v5, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :cond_7
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentDialogId()J

    move-result-wide v8

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    instance-of v10, v5, Lorg/telegram/ui/Stories/StoriesController$SearchStoriesList;

    if-eqz v10, :cond_9

    if-eqz v1, :cond_9

    iget-wide v8, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iget v6, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    :cond_8
    :goto_5
    move-wide v11, v8

    goto :goto_6

    :cond_9
    if-eqz v5, :cond_8

    iget v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    goto :goto_5

    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clear()V

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    iget v13, v0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    if-nez v1, :cond_a

    const/4 v1, -0x1

    const/4 v15, -0x1

    goto :goto_7

    :cond_a
    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageType:I

    move v15, v1

    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    move v14, v6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;->findView(JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput v6, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyId:I

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    if-eqz v1, :cond_12

    const/4 v5, 0x2

    new-array v5, v5, [I

    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    instance-of v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_b

    aget v6, v5, v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v6, v1

    aput v6, v5, v4

    :cond_b
    aget v1, v5, v3

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromXCell:F

    aget v6, v5, v4

    int-to-float v6, v6

    iput v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromYCell:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v8, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    instance-of v9, v8, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    if-eqz v9, :cond_c

    check-cast v8, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    iput-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    goto :goto_8

    :cond_c
    iput-object v7, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    :goto_8
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    iget-object v7, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    add-float/2addr v1, v6

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    aget v1, v5, v4

    int-to-float v1, v1

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v6

    add-float/2addr v1, v6

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    if-eqz v1, :cond_d

    iget v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v1

    mul-float v6, v6, v1

    iput v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    iget v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    invoke-virtual {v6}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->getScale()F

    move-result v6

    mul-float v1, v1, v6

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    aget v3, v5, v3

    int-to-float v3, v3

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    aget v3, v5, v4

    int-to-float v3, v3

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iget v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float v3, v3, v6

    iput v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    iget v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float v3, v3, v1

    iput v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    :cond_e
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    goto :goto_9

    :cond_f
    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    add-float/2addr v1, v6

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    aget v1, v5, v4

    int-to-float v1, v1

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v6

    add-float/2addr v1, v6

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v1

    aget v1, v1, v3

    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromRadius:I

    :cond_10
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget v3, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    cmpl-float v6, v3, v2

    if-nez v6, :cond_11

    iget v6, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    cmpl-float v6, v6, v2

    if-nez v6, :cond_11

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->clipTop:F

    :goto_a
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->clipBottom:F

    goto :goto_b

    :cond_11
    aget v2, v5, v4

    int-to-float v2, v2

    add-float/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->clipTop:F

    iget v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    add-float/2addr v2, v1

    goto :goto_a

    :cond_12
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->animateAvatar:Z

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    :goto_b
    return-void
.end method


# virtual methods
.method public allowScreenshots(Z)V
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots:Z

    if-eq v0, p1, :cond_7

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/16 v1, 0x2000

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    goto :goto_5

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x2001

    :goto_3
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v1

    goto :goto_3

    :goto_4
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public attachedToParent()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public cancelSwipeToReply()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToReply:Z

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$9;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public cancelSwipeToViews(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    if-nez p1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v3, v2, Lorg/telegram/ui/Stories/SelfStoryViewsView;->maxSelfStoriesViewsOffset:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setOffset(F)V

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    if-eqz p1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->maxSelfStoriesViewsOffset:F

    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$8;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x15e

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToViewsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    return-void
.end method

.method public checkNavBarColor()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZZ)V

    :cond_0
    return-void
.end method

.method public checkSelfStoriesView()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-wide v3, v3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getListPosition()I

    move-result v0

    invoke-virtual {v1, v3, v4, v2, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setItems(JLjava/util/ArrayList;I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getCurrentPeer()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoryItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getSelectedPosition()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setItems(JLjava/util/ArrayList;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public clearDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->replyDrafts:Landroid/util/LongSparseArray;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryViewer;->draftHash(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public close(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->invalidateOutRect:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->startCloseAnimation(Z)V

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    :cond_0
    return-void
.end method

.method public closeKeyboardOrEmoji()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->closeKeyboardOrEmoji()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-ne p2, p1, :cond_e

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-wide v1, p2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getDays()Ljava/util/ArrayList;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-virtual {p1, v1, v2, p2, p3}, Lorg/telegram/ui/Stories/StoriesViewPager;->setDays(JLjava/util/ArrayList;I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->getSelectedStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v1, v2, :cond_0

    move p3, v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iget-wide v0, v0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setItems(JLjava/util/ArrayList;I)V

    goto/16 :goto_6

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    instance-of p2, p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    if-eqz p2, :cond_9

    check-cast p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->hasPaginationParams:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->onlySelfStories:Z

    if-eqz p2, :cond_3

    goto :goto_4

    :cond_3
    iget p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    iget-boolean p3, p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->hiddedStories:Z

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object p3

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getDialogListStories()Ljava/util/ArrayList;

    move-result-object p3

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getDialogIds()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    iget-boolean v5, p1, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->onlyUnreadStories:Z

    if-eqz v5, :cond_5

    invoke-virtual {p2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_5

    :cond_8
    :goto_4
    return-void

    :cond_9
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView;->selfStoriesPreviewView:Lorg/telegram/ui/Stories/SelfStoriesPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->update()V

    goto :goto_6

    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->openArticle:I

    if-eq p1, p2, :cond_b

    sget p3, Lorg/telegram/messenger/NotificationCenter;->articleClosed:I

    if-ne p1, p3, :cond_e

    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    if-ne p1, p2, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz p1, :cond_c

    iget-wide p1, p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerSavedPosition:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    goto :goto_6

    :cond_c
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerSavedPosition:J

    goto :goto_6

    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->paused:Z

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_e
    :goto_6
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return-void
.end method

.method public synthetic dismiss(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet$-CC;->$default$dismiss(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;Z)V

    return-void
.end method

.method public dismissVisibleDialogs()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentSheet:Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->shareAlert:Lorg/telegram/ui/Components/ShareAlert;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->needEnterText()Z

    :cond_4
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->dispatchVolumeEvent(Landroid/view/KeyEvent;)V

    :cond_1
    return-void
.end method

.method public doOnAnimationReady(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getContainerForBulletin()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    return-object v0
.end method

.method public getDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Ljava/lang/CharSequence;
    .locals 4

    const-wide/16 v0, 0x0

    const-string v2, ""

    cmp-long v3, p1, v0

    if-eqz v3, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->replyDrafts:Landroid/util/LongSparseArray;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryViewer;->draftHash(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_1
    :goto_0
    return-object v2
.end method

.method public getNavigationBarColor(I)I
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getBlackoutAlpha()F

    move-result v0

    const/high16 v1, -0x1000000

    invoke-static {p1, v1, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1
.end method

.method public getProgressToSelfViews()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    return v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public getStoryRect(Landroid/graphics/RectF;)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    :goto_1
    iget v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    add-float/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    add-float/2addr v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    add-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    add-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v5, v0

    int-to-float v0, v5

    sub-float/2addr v2, v0

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public getWindowView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object v0
.end method

.method public instantClose()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iput v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v0}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->release()V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    :cond_6
    return-void
.end method

.method public isAttachedLightStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFullyVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fullyVisible:Z

    return v0
.end method

.method public isPaused()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isPopupVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isBulletinVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isCaption:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isWaiting:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTouchMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentSheet:Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->allowTouchesByViewpager:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isHintVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isSwiping:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isOverlayVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTextSelectionMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLikesReactions:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public listenToAttachedSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)Z
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentSheet:Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->setOnDismissListener(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttachedBackPressed()Z
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->closeKeyboardOrEmoji()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    return v2
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->paused:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesIntro;->stopAnimation()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->paused:Z

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesIntro:Lorg/telegram/ui/Stories/StoriesIntro;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoriesIntro;->startAnimation(Z)V

    :cond_1
    return-void
.end method

.method public open(Landroid/content/Context;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    .line 0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-wide v0, p3, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p2, p0, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    .line 0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Stories/StoriesController;->checkExpiredStories(J)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    .line 0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ILorg/telegram/ui/Stories/StoriesController$StoriesList;ZLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    .line 0
    move-object v9, p0

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v9, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v5, p4

    iget-wide v0, v5, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, p3

    iput v0, v9, Lorg/telegram/ui/Stories/StoryViewer;->dayStoryId:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v7, p6

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v6, 0x0

    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->openCloseAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    if-eqz v6, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Stories/StoryViewer;->setSpeed(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_3

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromBottomSheet:Z

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    sget-boolean v9, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    if-eqz v9, :cond_4

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-nez v2, :cond_5

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    iget v6, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    :goto_2
    iput v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->messageId:I

    if-eqz v2, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v2, :cond_7

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->singleStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    sput-object v2, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :cond_7
    iput-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->overrideUserStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-object/from16 v2, p7

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->placeProvider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    move/from16 v2, p8

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->reversed:Z

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eqz v5, :cond_8

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->setHorizontalProgressToDismiss(F)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iput v8, v5, Lorg/telegram/ui/Stories/StoriesViewPager;->currentState:I

    :cond_8
    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    iput-boolean v8, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToReply:Z

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    iput-boolean v7, v0, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    iput-boolean v8, v0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    iput-boolean v8, v0, Lorg/telegram/ui/Stories/StoryViewer;->isTranslating:Z

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->savedPositions:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->clear()V

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v9, -0x3

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v9, 0x33

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v9, 0x63

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x10

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_9

    invoke-static {v5, v7}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_9
    const/16 v10, 0x15

    if-lt v9, v10, :cond_a

    const v11, -0x7ffefe80

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_a
    iput-boolean v8, v0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    iput-boolean v8, v0, Lorg/telegram/ui/Stories/StoryViewer;->unreadStateChanged:Z

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v11, :cond_b

    new-instance v11, Landroid/view/GestureDetector;

    new-instance v12, Lorg/telegram/ui/Stories/StoryViewer$1;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Stories/StoryViewer$1;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-direct {v11, v12}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v11, Lorg/telegram/ui/Stories/StoryViewer$2;

    invoke-direct {v11, v0, v1, v5}, Lorg/telegram/ui/Stories/StoryViewer$2;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    :cond_b
    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-nez v11, :cond_d

    new-instance v11, Lorg/telegram/ui/Stories/StoryViewer$3;

    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/Stories/StoryViewer$3;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    new-instance v11, Lorg/telegram/ui/Stories/StoryViewer$4;

    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v11, v0, v1, v0, v12}, Lorg/telegram/ui/Stories/StoryViewer$4;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    new-instance v12, Lorg/telegram/ui/Stories/StoryViewer$5;

    invoke-direct {v12, v0, v4, v3}, Lorg/telegram/ui/Stories/StoryViewer$5;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesController$StoriesList;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Stories/StoriesViewPager;->setDelegate(Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;)V

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-static {v6, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v11, v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v6, :cond_c

    new-instance v6, Landroid/view/SurfaceView;

    invoke-direct {v6, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v8}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v8}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_c
    new-instance v6, Lorg/telegram/ui/Stories/StoryViewer$6;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Stories/StoryViewer$6;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->textureView:Landroid/view/TextureView;

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_4
    new-instance v6, Lorg/telegram/ui/Stories/StoriesVolumeControl;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Stories/StoriesVolumeControl;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    const/high16 v17, 0x40800000    # 4.0f

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x40800000    # 4.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v6, :cond_e

    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_e
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/LaunchActivity;

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/LaunchActivity;->requestCustomNavigationBar()V

    :cond_f
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->isSingleStory:Z

    if-eqz v6, :cond_10

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    :cond_10
    if-eqz v4, :cond_11

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-wide v11, v4, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->dialogId:J

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getDays()Ljava/util/ArrayList;

    move-result-object v4

    iget v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-virtual {v3, v11, v12, v4, v6}, Lorg/telegram/ui/Stories/StoriesViewPager;->setDays(JLjava/util/ArrayList;I)V

    goto :goto_5

    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v6, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    move/from16 v11, p4

    invoke-virtual {v4, v3, v6, v11}, Lorg/telegram/ui/Stories/StoriesViewPager;->setPeerIds(Ljava/util/ArrayList;II)V

    :goto_5
    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_13

    :cond_12
    iput-boolean v8, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    :cond_13
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v7}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    goto :goto_6

    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->setFocusable(Z)V

    if-lt v9, v10, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v7}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$7;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stories/StoryViewer$7;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    const/16 v3, 0x700

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    sput-boolean v7, Lorg/telegram/ui/Stories/StoryViewer;->runOpenAnimationAfterLayout:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoryViewer;->updateTransitionParams()V

    iput v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    sput-boolean v7, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkInSilentMode()V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v1, :cond_16

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/StoryViewer;->lockOrientation(Z)V

    :cond_16
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-nez v1, :cond_17

    sget-object v1, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
    .locals 10

    .line 0
    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-wide v0, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    cmp-long v2, v0, v3

    if-gez v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-wide v0, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public openFor(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 4

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {p2}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public openViews()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->checkSelfStoriesView()V

    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    const-wide/16 v1, 0x1e

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->lastUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->setInTouchMode(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->allowScreenshots(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController;->stopAllPollers()V

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->lockOrientation(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V

    :cond_2
    sget-object v1, Lorg/telegram/ui/Stories/StoryViewer;->globalInstances:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->doOnAnimationReadyRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    sput-object v0, Lorg/telegram/ui/Stories/StoryViewer;->lastStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-void
.end method

.method public saveDraft(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/CharSequence;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoryViewer;->replyDrafts:Landroid/util/LongSparseArray;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryViewer;->draftHash(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setKeyboardHeightFromParent(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->realKeyboardHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->setKeyboardHeight(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsView;->setKeyboardHeight(I)V

    :cond_0
    return-void
.end method

.method public synthetic setLastVisible(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet$-CC;->$default$setLastVisible(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;Z)V

    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->onCloseListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public setOverlayVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isOverlayVisible:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    return-void
.end method

.method public setSelfStoriesViewsOffset(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    sput p1, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)Z
    .locals 1

    :try_start_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->currentDialog:Landroid/app/Dialog;

    const/4 p1, 0x0

    return p1
.end method

.method public showViewsAfterOpening()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->showViewsAfterOpening:Z

    return-void
.end method

.method public soundEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public switchByTap(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->switchToNext(Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->switchToNext(Z)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->loopBack()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->lockTouchEvent(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public toggleSilentMode()V
    .locals 4

    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    xor-int/lit8 v1, v0, 0x1

    sput-boolean v1, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setAudioEnabled(ZZ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->preparedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    sget-boolean v3, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    xor-int/2addr v3, v1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setAudioEnabled(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->soundEnabled()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->setIconMuted(ZZ)V

    :cond_2
    sget-boolean v0, Lorg/telegram/ui/Stories/StoryViewer;->isInSilentMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->volumeControl:Lorg/telegram/ui/Stories/StoriesVolumeControl;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesVolumeControl;->unmute()V

    :cond_3
    return-void
.end method

.method public updatePlayingMode()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->isPaused()Z

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLastFragment()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->setPaused(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->playerHolder:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pause()V

    goto :goto_0

    :cond_4
    sget v0, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->play(F)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isClosed:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isRecording:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isLongpressed:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInPinchToZoom:Z

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer;->isInTextSelectionMode:Z

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->enableTouch(Z)V

    return-void
.end method
