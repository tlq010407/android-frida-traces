.class public Lorg/telegram/ui/Components/FragmentContextView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;
    }
.end annotation


# static fields
.field private static final speeds:[F


# instance fields
.field private final account:I

.field private additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private applyingView:Landroid/view/View;

.field private avatars:Lorg/telegram/ui/Components/AvatarsImageView;

.field private chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

.field private checkCallAfterAnimation:Z

.field private checkImportAfterAnimation:Z

.field private checkLocationRunnable:Ljava/lang/Runnable;

.field private checkPlayerAfterAnimation:Z

.field private closeButton:Landroid/widget/ImageView;

.field collapseProgress:F

.field collapseTransition:Z

.field private currentProgress:I

.field private currentStyle:I

.field private delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

.field drawOverlay:Z

.field extraHeight:F

.field private firstLocationsLoaded:Z

.field private flickOnAttach:Z

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private gradientPaint:Landroid/graphics/Paint;

.field private gradientTextPaint:Landroid/text/TextPaint;

.field private gradientWidth:I

.field private importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private isLocation:Z

.field private isMusic:Z

.field private isMuted:Z

.field private final isSideMenued:Z

.field private joinButton:Landroid/widget/TextView;

.field private joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field private joinButtonWidth:I

.field private lastLocationSharingCount:I

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastPlaybackClick:J

.field private lastString:Ljava/lang/String;

.field private leftMargin:F

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private matrix:Landroid/graphics/Matrix;

.field micAmplitude:F

.field private muteButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private notificationsLocker2:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private notifyButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private notifyButtonEnabled:Z

.field private final notifyText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private playButton:Landroid/widget/ImageView;

.field private playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scheduleRunnableScheduled:Z

.field private selector:Landroid/view/View;

.field private shadow:Landroid/view/View;

.field private silentButton:Landroid/widget/FrameLayout;

.field private silentButtonImage:Landroid/widget/ImageView;

.field private slidingSpeed:Z

.field speakerAmplitude:F

.field private speedHintView:Lorg/telegram/ui/Components/HintView;

.field private speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

.field private speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

.field private speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

.field private subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private supportsCalls:Z

.field private titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private toggleGroupCallStartSubscriptionReqId:I

.field protected topPadding:F

.field private final updateScheduleTimeRunnable:Ljava/lang/Runnable;

.field private visible:Z

.field wasDraw:Z

.field private willBeNotified:Z


# direct methods
.method public static synthetic $r8$lambda$B0XF6cA96HzmBVNiwJoNVRUc7vA(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GS0tr0tmb4-c-N_ALo4sGgaGTls(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$createPlaybackSpeedButton$13(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HU9Zi5pwt4Jd4QItxRdopawtK44(Lorg/telegram/ui/Components/FragmentContextView;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$createPlaybackSpeedButton$10(Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MLTOIeNd6g95kI9YdlGb_sZ3PQs(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SbLBYBWwQTo13mVNRqP_xqI9IMc(Lorg/telegram/ui/Components/FragmentContextView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yo0xWG_PRAE48MsEIrnguDACK-s(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$openSharingLocation$14(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$a78uMgjGzwkw_FGzYWC_DUfL6Xc(Lorg/telegram/ui/Components/FragmentContextView;[FLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$createPlaybackSpeedButton$11([FLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cYq8hVf1Etrj8bE4ECmJBUB-AaE(Lorg/telegram/ui/Components/FragmentContextView;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->openSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dp7CqlJ8RrmXN-5euYxz4wKyOG4(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gt-7TwfN6pXp3ZEPrVzO7fBRBII(Lorg/telegram/ui/Components/FragmentContextView;FLjava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$createPlaybackSpeedButton$12(FLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mYTMmVSxzsJSQ1G3kU_hv8u91xE(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oR_UjP85dmwhPD3ZM8PdGgtz7No(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$startJoinFlickerAnimation$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$oUvct0aMqJO9geQfc4OoOcX6O8I(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$uXHkT7drq_F-gQRHtHgLXfVWodk(Lorg/telegram/ui/Components/FragmentContextView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y0MBlZUv-6Q3JBajkNBzOKjmZ0s(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$7(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z7sOy2HZI8Lqwt6yFX12eiUJ64c(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$checkCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmz_UdVylv10XjvpSElLPUZNioY(Lorg/telegram/ui/Components/FragmentContextView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->lambda$createPlaybackSpeedButton$9(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/FragmentContextView;->speeds:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
        0x3fd9999a    # 1.7f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 3

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x6

    new-array p1, p1, [Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentProgress:I

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->notifyText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FragmentContextView$1;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    new-instance p1, Lorg/telegram/ui/Components/FragmentContextView$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/FragmentContextView$2;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>([I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker2:Lorg/telegram/messenger/AnimationNotificationsLocker;

    iput v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->toggleGroupCallStartSubscriptionReqId:I

    iput-object p5, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-boolean p6, p0, Lorg/telegram/ui/Components/FragmentContextView;->isSideMenued:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p1, p2, Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Components/ChatActivityInterface;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->applyingView:Landroid/view/View;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 6

    .line 0
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/FragmentContextView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AvatarsImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientWidth:I

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/FragmentContextView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientWidth:I

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/LinearGradient;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->linearGradient:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/FragmentContextView;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->linearGradient:Landroid/graphics/LinearGradient;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->gradientPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->notifyButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/FragmentContextView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/FragmentContextView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonWidth:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/FragmentContextView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonWidth:I

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/FragmentContextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkCallAfterAnimation:Z

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkCallAfterAnimation:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayerAfterAnimation:Z

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayerAfterAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ChatActivityInterface;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/FragmentContextView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkImportAfterAnimation:Z

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkImportAfterAnimation:Z

    return p1
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker2:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->notifyButtonEnabled:Z

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/FragmentContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->notifyButtonEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/FragmentContextView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->willBeNotified:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->notifyText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/FragmentContextView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationString()V

    return-void
.end method

.method private checkCreateView()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$3;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/Components/FragmentContextView$3;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->notifyButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->notifyText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->notifyText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setScaleProperty(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->notifyText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->notifyText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->notifyText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->notifyText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x42100000    # 36.0f

    const/16 v7, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->shadow:Landroid/view/View;

    sget v3, Lorg/telegram/messenger/R$drawable;->blockpanel_shadow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->shadow:Landroid/view/View;

    const/4 v5, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v9, 0x42100000    # 36.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPlayPause:I

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v7, 0xe

    invoke-direct {v5, v7}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const v5, 0x19ffffff

    const/16 v7, 0x15

    const/4 v9, 0x1

    if-lt v2, v7, :cond_2

    iget-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v11

    and-int/2addr v11, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v11, v9, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v11, 0x24

    const/16 v12, 0x33

    invoke-static {v11, v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v13, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda5;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v13, Lorg/telegram/messenger/R$raw;->import_progress:I

    const/16 v14, 0x1e

    invoke-virtual {v10, v13, v14, v14}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v13, 0x41b00000    # 22.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v6

    invoke-static {v13, v6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v13, 0x16

    const/high16 v14, 0x41b00000    # 22.0f

    const/16 v15, 0x33

    const/high16 v16, 0x40e00000    # 7.0f

    const/high16 v17, 0x40e00000    # 7.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/FragmentContextView$4;

    invoke-direct {v6, v0, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$4;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->isSideMenued:Z

    const/16 v13, 0x40

    const/4 v14, 0x0

    if-eqz v10, :cond_3

    const/16 v10, 0x40

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    add-int/2addr v10, v11

    int-to-float v10, v10

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, 0x42100000    # 36.0f

    const/16 v17, 0x33

    const/high16 v18, 0x420c0000    # 35.0f

    const/16 v19, 0x0

    move/from16 v20, v10

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/FragmentContextView$5;

    invoke-direct {v6, v0, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$5;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->isSideMenued:Z

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    add-int/2addr v13, v11

    int-to-float v10, v13

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, 0x42100000    # 36.0f

    const/16 v17, 0x33

    const/high16 v18, 0x420c0000    # 35.0f

    const/high16 v19, 0x41200000    # 10.0f

    move/from16 v20, v10

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setProgress(F)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iput-boolean v14, v6, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatEnabled:Z

    new-instance v6, Lorg/telegram/ui/Components/FragmentContextView$6;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$6;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipChatJoin:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v15

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v10

    invoke-static {v13, v15, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v6, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/16 v10, 0x11

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v6, v13, v14, v15, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/high16 v22, 0x41600000    # 14.0f

    const/16 v23, 0x0

    const/16 v17, -0x2

    const/high16 v18, 0x41e00000    # 28.0f

    const/16 v19, 0x35

    const/16 v20, 0x0

    const/high16 v21, 0x41200000    # 10.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    new-instance v13, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda6;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v6, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->flickOnAttach:Z

    if-eqz v6, :cond_5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    :cond_5
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButtonImage:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButtonImage:Landroid/widget/ImageView;

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerClose:I

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v11

    invoke-direct {v13, v11, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButtonImage:Landroid/widget/ImageView;

    const/16 v13, 0x14

    invoke-static {v13, v13, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-lt v2, v7, :cond_6

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v10

    and-int/2addr v10, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v10, v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    sget v10, Lorg/telegram/messenger/R$string;->Unmute:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    new-instance v10, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda7;

    invoke-direct {v10}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->silentButton:Landroid/widget/FrameLayout;

    const/high16 v23, 0x42100000    # 36.0f

    const/16 v24, 0x0

    const/16 v18, 0x24

    const/high16 v19, 0x42100000    # 36.0f

    const/16 v20, 0x35

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    if-nez v6, :cond_7

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->createPlaybackSpeedButton()V

    :cond_7
    new-instance v6, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {v6, v1, v14}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v11, 0x41a80000    # 21.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    new-instance v11, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda8;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->setDelegate(Ljava/lang/Runnable;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v11, 0x6c

    const/16 v13, 0x24

    invoke-static {v11, v13, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v11, Lorg/telegram/messenger/R$raw;->voice_muted:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v17, v6

    move/from16 v18, v11

    invoke-direct/range {v17 .. v23}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v6, Lorg/telegram/ui/Components/FragmentContextView$7;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$7;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallText:I

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v12

    invoke-direct {v11, v12, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-lt v2, v7, :cond_8

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v11

    and-int/2addr v11, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v11, v9, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v21, 0x40000000    # 2.0f

    const/16 v22, 0x0

    const/16 v16, 0x24

    const/high16 v17, 0x42100000    # 36.0f

    const/16 v18, 0x35

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v10, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->miniplayer_close:I

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v10

    invoke-direct {v6, v10, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-lt v2, v7, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v2

    and-int/2addr v2, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2, v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/16 v2, 0x24

    const/high16 v3, 0x42100000    # 36.0f

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->leftMargin:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setLeftMargin(F)V

    return-void
.end method

.method private checkLiveLocation(Z)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v2, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/telegram/messenger/LocationController;->getLocationsCount()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v2

    :goto_0
    const-wide/16 v4, 0xc8

    const-string v6, "topPadding"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v2, :cond_7

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v0, :cond_14

    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto/16 :goto_8

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v3, [F

    aput v8, v0, v1

    invoke-static {p0, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$9;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_8

    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    new-instance v9, Lorg/telegram/ui/Components/ShareLocationDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Lorg/telegram/ui/Components/ShareLocationDrawable;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    :cond_8
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v2, :cond_b

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_9
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v2

    int-to-float v2, v2

    new-array v7, v3, [F

    aput v2, v7, v1

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v6, v3, [Landroid/animation/Animator;

    aput-object v2, v6, v1

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FragmentContextView$10;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_a
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p1, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz p1, :cond_13

    sget p1, Lorg/telegram/messenger/R$string;->LiveLocationContext:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_c

    invoke-static {v4}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v4, v3

    goto :goto_1

    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-object v4, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    iget-object v2, v2, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    if-eqz v6, :cond_d

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocationIsSharing:I

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_d
    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_3

    :cond_e
    const-string v2, ""

    :goto_3
    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocationIsSharingChat:I

    goto :goto_2

    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Chats"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->AttachLiveLocationIsSharingChats:I

    goto :goto_2

    :goto_4
    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_12

    iget-object v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v2, :cond_10

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v6

    goto :goto_6

    :cond_10
    invoke-virtual {v6}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v6

    :goto_6
    if-nez v6, :cond_11

    goto :goto_7

    :cond_11
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_7
    add-int/2addr v2, v3

    goto :goto_5

    :cond_12
    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v4

    const/16 v2, 0x12

    invoke-virtual {v5, v0, v4, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {p1, v5, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_8

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationString()V

    :cond_14
    :goto_8
    return-void
.end method

.method private checkLocationString()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v5, :cond_12

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v5, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v5

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    iget-boolean v9, v0, Lorg/telegram/ui/Components/FragmentContextView;->firstLocationsLoaded:Z

    if-nez v9, :cond_1

    invoke-static {v7}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Lorg/telegram/messenger/LocationController;->loadLiveLocations(J)V

    iput-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->firstLocationsLoaded:Z

    :cond_1
    const/4 v9, 0x0

    if-eqz v8, :cond_5

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    invoke-static {v7}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_6

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v15, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    add-int/2addr v2, v1

    if-le v2, v12, :cond_4

    invoke-static {v15}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v1

    if-nez v9, :cond_3

    cmp-long v15, v1, v10

    if-eqz v15, :cond_3

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    :cond_3
    add-int/2addr v14, v4

    :cond_4
    :goto_1
    add-int/2addr v13, v4

    goto :goto_0

    :cond_5
    const/4 v14, 0x0

    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    if-ne v1, v14, :cond_7

    return-void

    :cond_7
    iput v14, v0, Lorg/telegram/ui/Components/FragmentContextView;->lastLocationSharingCount:I

    sget v1, Lorg/telegram/messenger/R$string;->LiveLocationContext:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v14, :cond_8

    move-object v2, v1

    goto/16 :goto_3

    :cond_8
    sub-int/2addr v14, v4

    invoke-static {v7}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v2

    const-string v5, "%1$s - %2$s %3$s"

    const-string v6, "AndOther"

    const-string v7, "%1$s - %2$s"

    if-eqz v2, :cond_b

    if-eqz v14, :cond_a

    if-ne v14, v4, :cond_9

    if-eqz v9, :cond_9

    sget v2, Lorg/telegram/messenger/R$string;->SharingYouAndOtherName:I

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v5, v6, v3

    const-string v5, "SharingYouAndOtherName"

    invoke-static {v5, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v2, v6, v4

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    sget v2, Lorg/telegram/messenger/R$string;->ChatYourSelfName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v14, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object v2, v7, v4

    const/4 v2, 0x2

    aput-object v6, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v2, v5

    goto :goto_3

    :cond_a
    const/4 v2, 0x2

    sget v5, Lorg/telegram/messenger/R$string;->ChatYourSelfName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v5, v6, v4

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_b
    if-eqz v14, :cond_c

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v14, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object v2, v7, v4

    const/4 v2, 0x2

    aput-object v6, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_c
    const/4 v2, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v5, v6, v4

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->lastString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    return-void

    :cond_d
    iput-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->lastString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v7, 0x2

    :goto_4
    if-ge v2, v7, :cond_10

    iget-object v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v2, :cond_e

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v8

    goto :goto_5

    :cond_e
    invoke-virtual {v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v8

    :goto_5
    if-nez v8, :cond_f

    goto :goto_6

    :cond_f
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_6
    add-int/2addr v2, v4

    goto :goto_4

    :cond_10
    if-ltz v5, :cond_11

    new-instance v2, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v7

    invoke-direct {v2, v4, v3, v7}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    const/16 v4, 0x12

    invoke-virtual {v6, v2, v5, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v6, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    :cond_12
    :goto_7
    return-void
.end method

.method private checkPlayer(Z)V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v4

    if-nez p1, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 p1, 0x1

    :cond_4
    iget-boolean v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const-wide/16 v5, 0xc8

    const-string v7, "topPadding"

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v10

    if-eqz v10, :cond_5

    goto/16 :goto_c

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    iget v10, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eqz v10, :cond_6

    iget-object v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_6

    if-nez p1, :cond_6

    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayerAfterAnimation:Z

    return-void

    :cond_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    if-eqz p1, :cond_7

    iget v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v11, v11, v9

    if-nez v11, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0, v11}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    iget-object v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz v11, :cond_7

    invoke-interface {v11, v3, v3}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    iget-object v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    invoke-interface {v11, v1, v3}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    :cond_7
    iget-boolean v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v11, :cond_c

    if-nez p1, :cond_b

    iget-object v11, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v8}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v11

    iget-object v12, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v12

    add-int/2addr v11, v12

    :goto_0
    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v11, v11

    iput v11, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v11

    goto :goto_0

    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz v8, :cond_a

    invoke-interface {v8, v3, v3}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    :cond_a
    iget-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v11

    int-to-float v11, v11

    new-array v12, v3, [F

    aput v11, v12, v1

    invoke-static {p0, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v11, v3, [Landroid/animation/Animator;

    aput-object v7, v11, v1

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/FragmentContextView$12;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/FragmentContextView$12;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_b
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_c
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    xor-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v1, v6}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    :goto_2
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    xor-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v3, v6}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$string;->AccActionPause:I

    goto :goto_2

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v5, v2, :cond_e

    if-eqz v10, :cond_26

    :cond_e
    iput-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v5

    const/high16 v6, 0x42300000    # 44.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v5, :cond_14

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v5

    if-eqz v5, :cond_f

    goto/16 :goto_8

    :cond_f
    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v5, :cond_11

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v10

    const-wide v12, 0x4082c00000000000L    # 600.0

    cmpl-double v5, v10, v12

    if-ltz v5, :cond_10

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonWidth:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v1, v1, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    goto :goto_4

    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_11
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonWidth:I

    invoke-virtual {v5, v1, v1, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aput-object v7, v8, v3

    const-string v6, "%s - %s"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v0, :cond_19

    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v6, :cond_12

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v7

    goto :goto_6

    :cond_12
    invoke-virtual {v7}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v7

    :goto_6
    if-nez v7, :cond_13

    goto :goto_7

    :cond_13
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_7
    add-int/2addr v6, v3

    goto :goto_5

    :cond_14
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v5, :cond_15

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_15
    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonWidth:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v1, v1, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aput-object v7, v8, v3

    const-string v6, "%s %s"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v0, :cond_18

    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v6, :cond_16

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v7

    goto :goto_a

    :cond_16
    invoke-virtual {v7}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v7

    :goto_a
    if-nez v7, :cond_17

    goto :goto_b

    :cond_17
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_b
    add-int/2addr v6, v3

    goto :goto_9

    :cond_18
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    :cond_19
    new-instance v0, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v7

    invoke-direct {v0, v6, v1, v7}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;II)V

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x12

    invoke-virtual {v5, v0, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez p1, :cond_1a

    if-eqz v4, :cond_1a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    invoke-virtual {v0, v5, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_f

    :cond_1b
    :goto_c
    iput-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1c

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v2

    if-nez v2, :cond_1e

    if-nez v0, :cond_1e

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v2, :cond_1e

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_e

    :cond_1d
    const/4 v0, 0x0

    :cond_1e
    :goto_e
    if-eqz v0, :cond_1f

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    return-void

    :cond_1f
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSubMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    :cond_20
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_21

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_21
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto :goto_f

    :cond_22
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v8, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_23
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v3, [F

    aput v9, v0, v1

    invoke-static {p0, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz p1, :cond_24

    invoke-interface {p1, v3, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    :cond_24
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$11;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_f

    :cond_25
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_26
    :goto_f
    return-void
.end method

.method private checkSpeedHint()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastPlaybackClick:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "speedhint"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/16 v2, -0xa

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ltz v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->showSpeedHint()V

    :cond_1
    iput-wide v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->lastPlaybackClick:J

    return-void
.end method

.method private checkVisibility()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/LocationController;->getLocationsCount()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v1

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    return-void
.end method

.method private createPlaybackSpeedButton()V
    .locals 10

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrPlayerSpeed:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/SpeedIconDrawable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/SpeedIconDrawable;-><init>(Z)V

    iput-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setRoundRadiusDp(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setDrawShadow(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    new-instance v5, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback2;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_speed_slow:I

    sget v7, Lorg/telegram/messenger/R$string;->SpeedSlow:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_speed_normal:I

    sget v7, Lorg/telegram/messenger/R$string;->SpeedNormal:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_speed_medium:I

    sget v7, Lorg/telegram/messenger/R$string;->SpeedMedium:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v5

    aput-object v5, v3, v8

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_speed_fast:I

    sget v7, Lorg/telegram/messenger/R$string;->SpeedFast:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_speed_veryfast:I

    sget v6, Lorg/telegram/messenger/R$string;->SpeedVeryFast:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v3, v7, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v3

    aput-object v3, v0, v7

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_speed_superfast:I

    sget v6, Lorg/telegram/messenger/R$string;->SpeedSuperFast:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v3, v7, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v3

    aput-object v3, v0, v7

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v8, 0x42100000    # 36.0f

    const/4 v9, 0x0

    const/16 v3, 0x24

    const/high16 v4, 0x42100000    # 36.0f

    const/16 v5, 0x35

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/FragmentContextView;[F)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private equals(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getTitleTextColor()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerTitle:I

    goto :goto_0

    :cond_2
    :goto_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallText:I

    goto :goto_0
.end method

.method private isPlayingVoice()Z
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$checkCreateView$0(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-nez p1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$checkCreateView$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method private static synthetic lambda$checkCreateView$2(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->updateSilent(Z)V

    return-void
.end method

.method private synthetic lambda$checkCreateView$3()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    return-void
.end method

.method private synthetic lambda$checkCreateView$4(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    iget-object v0, p1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    goto :goto_0

    :cond_2
    const/16 v0, 0x1d

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$checkCreateView$5(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x4

    if-ge p1, p2, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocationController;->removeAllLocationSharings()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$checkCreateView$6(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v2, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertToTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v2, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertAllText:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v2, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertToGroupText:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, p1

    const-string p1, "StopLiveLocationAlertToGroupText"

    invoke-static {p1, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->StopLiveLocationAlertToUserText:I

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, p1

    const-string p1, "StopLiveLocationAlertToUserText"

    invoke-static {p1, v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->AreYouSure:I

    goto :goto_0

    :goto_3
    sget p1, Lorg/telegram/messenger/R$string;->Stop:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_4
    :goto_4
    return-void
.end method

.method private synthetic lambda$checkCreateView$7(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    return-void
.end method

.method private synthetic lambda$checkCreateView$8(Landroid/view/View;)V
    .locals 14

    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v5 .. v11}, Lorg/telegram/ui/Components/ChatActivityInterface;->scrollToMessageId(IIZIZI)V

    goto/16 :goto_6

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v0

    const-string v1, "enc_id"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "user_id"

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    :cond_4
    neg-long v0, v0

    const-string v3, "chat_id"

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    const-string v0, "message_id"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_6

    :cond_5
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "voip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_6
    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne p1, v3, :cond_b

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v2

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-static {}, Lorg/telegram/messenger/LocationController;->getLocationsCount()I

    move-result v3

    if-ne v3, v2, :cond_9

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_9

    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocationController;->sharingLocationsUI:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    iget-wide v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    iget-object p1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-wide v2, v0

    :goto_4
    cmp-long v4, v2, v0

    if-eqz v4, :cond_a

    invoke-static {p1}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FragmentContextView;->openSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    goto/16 :goto_6

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/Components/SharingLocationsAlert;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/SharingLocationsAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SharingLocationsAlert$SharingLocationsAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/GroupCallActivity;->create(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V

    goto/16 :goto_6

    :cond_c
    if-ne p1, v4, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p1, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz p1, :cond_f

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v13}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLjava/lang/Boolean;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    goto :goto_6

    :cond_10
    const/4 v0, 0x5

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object p1

    if-nez p1, :cond_11

    return-void

    :cond_11
    new-instance p1, Lorg/telegram/ui/Components/ImportingAlert;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v1, v2}, Lorg/telegram/ui/Components/ImportingAlert;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    :cond_12
    :goto_6
    return-void
.end method

.method private synthetic lambda$createPlaybackSpeedButton$10(Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->slidingSpeed:Z

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->getSpeed(F)F

    move-result p1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    return-void
.end method

.method private synthetic lambda$createPlaybackSpeedButton$11([FLandroid/view/View;)V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    const v2, 0x3dcccccd    # 0.1f

    sub-float v2, p2, v2

    aget v3, p1, v1

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const/4 v2, 0x1

    add-int/2addr v1, v2

    array-length v3, p1

    if-lt v1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    aget p1, p1, v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    invoke-direct {p0, v2, p2, p1}, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedChanged(ZFF)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkSpeedHint()V

    return-void
.end method

.method private synthetic lambda$createPlaybackSpeedButton$12(FLjava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedChanged(ZFF)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createPlaybackSpeedButton$13(Landroid/view/View;)Z
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->setSpeed(FZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->invalidateBlur(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateColor()V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDimMenu(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/FragmentContextView;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnMenuDismiss(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "speedhint"

    const/16 v1, -0xf

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createPlaybackSpeedButton$9(I)V
    .locals 3

    if-ltz p1, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/FragmentContextView;->speeds:[F

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v1

    aget p1, v0, p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    cmpl-float v0, v1, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedChanged(ZFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$openSharingLocation$14(Lorg/telegram/messenger/LocationController$SharingLocationInfo;JLorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-wide v2, p1

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZI)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    return-void
.end method

.method private synthetic lambda$startJoinFlickerAnimation$15()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setProgress(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private openSharingLocation(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    new-instance v1, Lorg/telegram/ui/LocationActivity;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    iget-object v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    iget-object v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda16;

    invoke-direct {v4, p1, v2, v3}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/LocationController$SharingLocationInfo;J)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private playbackSpeedChanged(ZFF)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    cmpg-float p1, p2, p3

    if-gez p1, :cond_1

    return-void

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->AudioSpeedNormal:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    sub-float v0, p2, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    sget p2, Lorg/telegram/messenger/R$raw;->speed_2to1:I

    goto :goto_1

    :cond_2
    cmpg-float p2, p3, p2

    if-gez p2, :cond_6

    goto :goto_0

    :cond_3
    const-string v3, "AudioSpeedCustom"

    const/high16 v5, 0x3fc00000    # 1.5f

    if-eqz p1, :cond_4

    invoke-direct {p0, p3, v5}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result v6

    if-eqz v6, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->AudioSpeedCustom:I

    invoke-static {p3}, Lorg/telegram/ui/Components/SpeedIconDrawable;->formatNumber(F)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-static {v3, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->speed_1to15:I

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0, p3, v4}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p2, v5}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lorg/telegram/messenger/R$string;->AudioSpeedFast:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->speed_15to2:I

    goto :goto_1

    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->AudioSpeedCustom:I

    invoke-static {p3}, Lorg/telegram/ui/Components/SpeedIconDrawable;->formatNumber(F)Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    cmpg-float p2, p3, v2

    if-gez p2, :cond_6

    :goto_0
    sget p2, Lorg/telegram/messenger/R$raw;->speed_slow:I

    goto :goto_1

    :cond_6
    sget p2, Lorg/telegram/messenger/R$raw;->speed_fast:I

    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private showSpeedHint()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$8;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Components/FragmentContextView$8;-><init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedHintView:Lorg/telegram/ui/Components/HintView;

    const/high16 v1, -0x3ec00000    # -12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedHintView:Lorg/telegram/ui/Components/HintView;

    sget v1, Lorg/telegram/messenger/R$string;->SpeedHint:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedHintView:Lorg/telegram/ui/Components/HintView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedHintView:Lorg/telegram/ui/Components/HintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_0
    return-void
.end method

.method private startJoinFlickerAnimation()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonFlicker:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->getProgress()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->flickOnAttach:Z

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->flickOnAttach:Z

    :goto_0
    return-void
.end method

.method private updateAvatars(Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v3, v3, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iput-object v2, v3, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v4, v3, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v4, v4, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_11

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    goto :goto_0

    :cond_1
    iget v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    move-object v3, v2

    :goto_0
    move v6, v5

    move-object v5, v2

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v6

    goto :goto_2

    :cond_4
    iget v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->account:I

    move-object v3, v2

    move v6, v5

    move-object v5, v3

    :goto_2
    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_6

    iget-object v5, v3, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_8

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    if-ge v10, v5, :cond_5

    iget-object v12, v3, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v11, v10, v6, v12}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v11, v10, v6, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    iget-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v10, v9, v6, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    const/4 v5, 0x1

    :goto_5
    if-ge v5, v7, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v10, v5, v6, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v10, v5, v6, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v2, v4, :cond_12

    if-eqz v3, :cond_12

    iget-object v2, v3, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    iget-object v2, v3, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_7
    if-nez v2, :cond_a

    const/16 v2, 0xa

    goto :goto_8

    :cond_a
    sub-int/2addr v2, v8

    mul-int/lit8 v2, v2, 0x18

    add-int/lit8 v2, v2, 0x34

    :goto_8
    const/4 v4, 0x0

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v5, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-eq v6, v1, :cond_c

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    int-to-float v1, v1

    add-float/2addr v6, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v6, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0xdc

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_9

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    :cond_c
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    int-to-float v2, v2

    iget-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->isSideMenued:Z

    const/16 v5, 0x40

    if-eqz v4, :cond_d

    const/16 v4, 0x40

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v3}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v6

    const/16 v7, 0x24

    const/16 v8, 0x5a

    if-eqz v6, :cond_e

    const/16 v6, 0x5a

    goto :goto_b

    :cond_e
    const/16 v6, 0x24

    :goto_b
    add-int/2addr v4, v6

    int-to-float v15, v4

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x41a00000    # 20.0f

    const/16 v12, 0x33

    const/high16 v14, 0x40a00000    # 5.0f

    move v13, v2

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->isSideMenued:Z

    if-eqz v4, :cond_f

    const/16 v9, 0x40

    :cond_f
    invoke-virtual {v3}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v7, 0x5a

    :cond_10
    add-int/2addr v9, v7

    int-to-float v15, v9

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x41a00000    # 20.0f

    const/16 v12, 0x33

    const/high16 v14, 0x41c80000    # 25.0f

    move v13, v2

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_11
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AvatarsImageView;->updateAfterTransitionEnd()V

    :cond_12
    :goto_c
    return-void
.end method

.method private updateCallTitle()V
    .locals 8

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_e

    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_e

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingStream()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupConnecting:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isConference()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->ConferenceChat:I

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_2
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_5

    if-lez v3, :cond_4

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v4

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_6

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "AndOther"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_5

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v6, v1, v3

    if-nez v6, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipChannelViewVoiceChat:I

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupViewVoiceChat:I

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$string;->ReturnToCall:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_5
    return-void
.end method

.method private updatePaddings()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private updatePlaybackButton(Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/SpeedIconDrawable;->setValue(FZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updateColors()V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->slidingSpeed:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->slidingSpeed:Z

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-eqz v1, :cond_1

    sget-object v3, Lorg/telegram/ui/Components/FragmentContextView;->speeds:[F

    aget v3, v3, v2

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    aget-object v3, v3, v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    :goto_1
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v5

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->setColors(II)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    aget-object v3, v3, v2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->setSpeed(FZ)V

    return-void
.end method

.method private updateStyle(I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->removeParent(Landroid/view/View;)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_2
    iput v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v1, v5, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v2, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    if-eq v1, v5, :cond_4

    iput-boolean v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->notifyButtonEnabled:Z

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v7, 0x33

    if-eqz v2, :cond_5

    iget v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v8

    const/16 v9, 0x6c

    invoke-static {v9, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v8

    int-to-float v10, v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->shadow:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v8

    int-to-float v13, v8

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    const/4 v8, 0x0

    cmpl-float v9, v2, v8

    if-lez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    :cond_6
    const/4 v2, 0x5

    const/high16 v9, 0x41700000    # 15.0f

    const/16 v10, 0x13

    const/16 v11, 0x40

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/16 v14, 0x8

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerBackground:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v13, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_7

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerTitle:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerTitle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrClosePlayer:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->isSideMenued:Z

    if-eqz v2, :cond_b

    const/16 v6, 0x40

    :cond_b
    add-int/lit8 v6, v6, 0x24

    int-to-float v12, v6

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x42100000    # 36.0f

    const/16 v9, 0x33

    const/high16 v10, 0x420c0000    # 35.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1a

    :cond_c
    if-eqz v1, :cond_20

    if-ne v1, v13, :cond_d

    goto/16 :goto_14

    :cond_d
    if-ne v1, v5, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerBackground:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v13, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_e

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    goto :goto_5

    :cond_e
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v2

    :goto_5
    if-nez v2, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPerformer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonWidth:I

    invoke-virtual {v1, v6, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_11

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    if-nez v4, :cond_12

    const/4 v2, 0x0

    goto :goto_8

    :cond_12
    const/16 v2, 0x8

    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v14, :cond_13

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto :goto_9

    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_28

    goto/16 :goto_13

    :cond_14
    if-eq v1, v4, :cond_15

    if-ne v1, v3, :cond_28

    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->updateCallTitle()V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    if-nez v2, :cond_16

    const/4 v7, 0x0

    goto :goto_a

    :cond_16
    const/16 v7, 0x8

    :goto_a
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    if-ne v1, v3, :cond_17

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v14, :cond_18

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto :goto_b

    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationX(F)V

    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v2, :cond_19

    const/4 v2, 0x0

    goto :goto_c

    :cond_19
    const/16 v2, 0x8

    :goto_c
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_d

    :cond_1a
    const/4 v1, 0x0

    :goto_d
    iput-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1b

    const/16 v1, 0xf

    goto :goto_e

    :cond_1b
    const/16 v1, 0x1d

    :goto_e
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2, v6, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->addParent(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v13, :cond_1e

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v1, :cond_1c

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    goto :goto_10

    :cond_1c
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v2

    :goto_10
    if-nez v2, :cond_1d

    goto :goto_11

    :cond_1d
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallText:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallText:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->isSideMenued:Z

    if-eqz v2, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v11, 0x0

    :goto_12
    int-to-float v2, v11

    const/high16 v21, 0x40000000    # 2.0f

    const/4 v15, -0x2

    const/high16 v16, -0x40000000    # -2.0f

    const/16 v17, 0x11

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v2

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButtonWidth:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v3, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_28

    :goto_13
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_20
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->selector:Landroid/view/View;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerBackground:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v13, :cond_23

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-nez v2, :cond_21

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    goto :goto_16

    :cond_21
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v3

    :goto_16
    if-nez v3, :cond_22

    goto :goto_17

    :cond_22
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerTitle:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerTitle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez v1, :cond_26

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v12, 0x24

    const/high16 v13, 0x42100000    # 36.0f

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->isSideMenued:Z

    if-eqz v2, :cond_24

    goto :goto_18

    :cond_24
    const/4 v11, 0x0

    :goto_18
    add-int/lit8 v11, v11, 0x24

    int-to-float v2, v11

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, 0x42100000    # 36.0f

    const/16 v14, 0x33

    const/high16 v15, 0x420c0000    # 35.0f

    const/16 v16, 0x0

    move/from16 v17, v2

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->createPlaybackSpeedButton()V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_25

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrClosePlayer:I

    :goto_19
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_26
    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v12, 0x24

    const/high16 v13, 0x42100000    # 36.0f

    const/16 v14, 0x33

    const/high16 v15, 0x41000000    # 8.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->isSideMenued:Z

    if-eqz v2, :cond_27

    const/16 v6, 0x40

    :cond_27
    add-int/lit8 v6, v6, 0x24

    int-to-float v12, v6

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x42100000    # 36.0f

    const/16 v9, 0x33

    const/high16 v10, 0x424c0000    # 51.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->closeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrStopLiveLocation:I

    goto :goto_19

    :cond_28
    :goto_1a
    return-void
.end method


# virtual methods
.method public checkCall(Z)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    iget-boolean v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v4, :cond_1

    iget v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v4

    if-nez p1, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move/from16 v4, p1

    :goto_0
    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    sget-boolean v5, Lorg/telegram/ui/GroupCallActivity;->groupCallUiVisible:Z

    if-nez v5, :cond_6

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    if-eqz v3, :cond_7

    iget-object v6, v3, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v6, :cond_7

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;

    if-eqz v6, :cond_7

    const/4 v5, 0x0

    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v6

    if-nez v6, :cond_4

    sget-boolean v6, Lorg/telegram/ui/GroupCallActivity;->groupCallUiVisible:Z

    if-nez v6, :cond_4

    iget-boolean v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    if-eqz v6, :cond_4

    if-nez v5, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_2
    const-wide/16 v7, 0xdc

    const-string v9, "topPadding"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, -0x1

    const/4 v14, 0x3

    const/4 v15, 0x4

    if-nez v5, :cond_10

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v3, :cond_d

    if-eqz v4, :cond_8

    iget v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v5, v13, :cond_9

    :cond_8
    iget v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v5, v15, :cond_9

    if-eq v5, v14, :cond_9

    if-ne v5, v2, :cond_d

    :cond_9
    iput-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_a

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_a
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto :goto_3

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v3}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [F

    aput v11, v5, v1

    invoke-static {v0, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v5, v2, v1

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$15;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/FragmentContextView$15;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_d
    if-eqz v3, :cond_f

    iget v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v3, v13, :cond_e

    if-eq v3, v15, :cond_e

    if-eq v3, v14, :cond_e

    if-ne v3, v2, :cond_f

    :cond_e
    iput-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_f
    :goto_3
    if-eqz v4, :cond_2b

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->openedWithLivestream()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget v3, Lorg/telegram/messenger/R$string;->InviteExpired:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_19

    :cond_10
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    if-eqz v6, :cond_11

    const/4 v5, 0x4

    goto :goto_4

    :cond_11
    iget-object v5, v3, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v5, :cond_12

    const/4 v5, 0x3

    goto :goto_4

    :cond_12
    const/4 v5, 0x1

    :goto_4
    iget v14, v0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v5, v14, :cond_13

    iget-object v12, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_13

    if-nez v4, :cond_13

    iput-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->checkCallAfterAnimation:Z

    return-void

    :cond_13
    if-eq v5, v14, :cond_15

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v5, :cond_15

    if-nez v4, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v3}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v2, [F

    aput v11, v4, v1

    invoke-static {v0, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v4, v2, v1

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/FragmentContextView$16;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/FragmentContextView$16;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_15
    if-eqz v6, :cond_24

    if-ne v14, v15, :cond_16

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    goto :goto_5

    :cond_16
    const/4 v3, 0x0

    :goto_5
    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityInterface;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    invoke-virtual {v5}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientPaint:Landroid/graphics/Paint;

    if-nez v11, :cond_17

    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->matrix:Landroid/graphics/Matrix;

    :cond_17
    iput-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->notifyButtonEnabled:Z

    sget v11, Lorg/telegram/messenger/R$string;->VoipChatNotify:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    iget-object v11, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v11, :cond_18

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_start_subscribed:Z

    if-eqz v11, :cond_18

    const/4 v11, 0x1

    goto :goto_6

    :cond_18
    const/4 v11, 0x0

    :goto_6
    iput-boolean v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->willBeNotified:Z

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v11, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    :goto_7
    invoke-virtual {v6, v11, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_9

    :cond_19
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v11, Lorg/telegram/messenger/R$string;->VoipChannelScheduledVoiceChat:I

    :goto_8
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_1a
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v11, Lorg/telegram/messenger/R$string;->VoipGroupScheduledVoiceChat:I

    goto :goto_8

    :goto_9
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    int-to-long v11, v5

    invoke-static {v11, v12, v15}, Lorg/telegram/messenger/LocaleController;->formatStartsTime(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    if-nez v5, :cond_22

    iput-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_11

    :cond_1b
    iput-boolean v1, v0, Lorg/telegram/ui/Components/FragmentContextView;->notifyButtonEnabled:Z

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->joinButton:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->VoipChatJoin:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object v11, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    :goto_a
    invoke-virtual {v6, v11, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_d

    :cond_1c
    iget-object v11, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v11, :cond_1d

    goto :goto_b

    :cond_1d
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_1e

    :goto_b
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v11, Lorg/telegram/messenger/R$string;->VoipChannelVoiceChat:I

    :goto_c
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_1e
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v11, Lorg/telegram/messenger/R$string;->VoipGroupVoiceChat:I

    goto :goto_c

    :goto_d
    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    if-nez v6, :cond_20

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v5, :cond_1f

    sget v5, Lorg/telegram/messenger/R$string;->ViewersWatchingNobody:I

    goto :goto_e

    :cond_1f
    sget v5, Lorg/telegram/messenger/R$string;->MembersTalkingNobody:I

    :goto_e
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_10

    :cond_20
    iget-object v11, v0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v5, :cond_21

    const-string v5, "ViewersWatching"

    goto :goto_f

    :cond_21
    const-string v5, "Participants"

    :goto_f
    new-array v12, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    :goto_10
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    :cond_22
    :goto_11
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-boolean v5, v5, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    if-eqz v5, :cond_23

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    goto :goto_12

    :cond_23
    const/4 v3, 0x0

    :goto_12
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto :goto_15

    :cond_24
    if-eqz v3, :cond_26

    iget-object v3, v3, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v3, :cond_26

    const/4 v3, 0x3

    if-ne v14, v3, :cond_25

    const/4 v5, 0x1

    goto :goto_13

    :cond_25
    const/4 v5, 0x0

    :goto_13
    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    goto :goto_15

    :cond_26
    if-ne v14, v2, :cond_27

    const/4 v3, 0x1

    goto :goto_14

    :cond_27
    const/4 v3, 0x0

    :goto_14
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    :goto_15
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v3, :cond_2b

    if-nez v4, :cond_2a

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v10, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_28
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v5

    add-int/2addr v4, v5

    :goto_16
    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_17

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    goto :goto_16

    :goto_17
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker2:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v3}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v4

    int-to-float v4, v4

    new-array v5, v2, [F

    aput v4, v5, v1

    invoke-static {v0, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v2, [Landroid/animation/Animator;

    aput-object v4, v5, v1

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/FragmentContextView$17;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/FragmentContextView$17;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_18

    :cond_2a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->startJoinFlickerAnimation()V

    :goto_18
    iput-boolean v2, v0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_2b
    :goto_19
    return-void
.end method

.method public checkImport(Z)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v2, :cond_14

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v2, v1, :cond_14

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v4}, Lorg/telegram/ui/Components/ChatActivityInterface;->shouldShowImport()Z

    move-result v4

    if-nez v4, :cond_3

    instance-of v4, v3, Lorg/telegram/ui/Components/ImportingAlert;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/telegram/ui/Components/ImportingAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    if-eqz v2, :cond_4

    move-object v2, v5

    :cond_4
    const-string v3, "topPadding"

    const/4 v4, 0x0

    const/4 v6, 0x5

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v7, -0x1

    const/16 v8, 0x8

    if-eqz v2, :cond_a

    if-eqz p1, :cond_5

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v2, v7, :cond_6

    :cond_5
    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne v2, v6, :cond_a

    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v8, :cond_7

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    goto/16 :goto_2

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [F

    aput v4, v2, v0

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/FragmentContextView$13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FragmentContextView$13;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_a
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq p1, v7, :cond_b

    if-ne p1, v6, :cond_14

    :cond_b
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    iget v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq v7, v6, :cond_d

    iget-object v7, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_d

    if-nez p1, :cond_d

    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->checkImportAfterAnimation:Z

    return-void

    :cond_d
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/FragmentContextView;->updateStyle(I)V

    if-eqz p1, :cond_e

    iget v6, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v4, v6, v4

    if-nez v4, :cond_e

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz v4, :cond_e

    invoke-interface {v4, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    invoke-interface {v4, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    :cond_e
    iget-boolean v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-nez v4, :cond_13

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v5

    add-int/2addr v4, v5

    :goto_0
    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    if-eqz p1, :cond_11

    invoke-interface {p1, v1, v1}, Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;->onAnimation(ZZ)V

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v4

    int-to-float v4, v4

    new-array v5, v1, [F

    aput v4, v5, v0

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v1, [Landroid/animation/Animator;

    aput-object v3, v4, v0

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextView$14;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FragmentContextView$14;-><init>(Lorg/telegram/ui/Components/FragmentContextView;)V

    invoke-virtual {p1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_12
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    :cond_13
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentProgress:I

    iget v2, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadProgress:I

    if-eq p1, v2, :cond_14

    iput v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentProgress:I

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    sget v3, Lorg/telegram/messenger/R$string;->ImportUploading:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v2, "ImportUploading"

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    :cond_14
    :goto_2
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 12

    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLiveLocation(Z)V

    goto/16 :goto_8

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz p1, :cond_1a

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p3}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-nez p3, :cond_1a

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkLocationString()V

    goto/16 :goto_8

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p1, p2, :cond_17

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq p1, p2, :cond_17

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, p2, :cond_17

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    if-ne p1, p2, :cond_2

    goto/16 :goto_7

    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    if-eq p1, p2, :cond_14

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-eq p1, v4, :cond_14

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    if-ne p1, v4, :cond_3

    goto/16 :goto_6

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    if-ne p1, p2, :cond_9

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz p1, :cond_1a

    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne p1, v2, :cond_1a

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    int-to-long v4, p1

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatStartsTime(JI)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_4
    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_5

    sget p1, Lorg/telegram/messenger/R$string;->ViewersWatchingNobody:I

    goto :goto_1

    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->MembersTalkingNobody:I

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_7

    const-string p1, "ViewersWatching"

    goto :goto_2

    :cond_7
    const-string p1, "Participants"

    :goto_2
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    :cond_8
    :goto_3
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updateAvatars(Z)V

    goto/16 :goto_8

    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    if-ne p1, p2, :cond_c

    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq p1, v3, :cond_a

    if-eq p1, v1, :cond_a

    if-ne p1, v2, :cond_b

    :cond_a
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    :cond_b
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    goto/16 :goto_8

    :cond_c
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    if-ne p1, p2, :cond_d

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    goto/16 :goto_8

    :cond_d
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_10

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x457a0000    # 4000.0f

    mul-float p1, p1, p2

    const p2, 0x4604d000    # 8500.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    goto :goto_5

    :cond_f
    :goto_4
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    :goto_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    iget p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    goto/16 :goto_8

    :cond_10
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    if-ne p1, p2, :cond_1a

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x41700000    # 15.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x42a00000    # 80.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    :cond_12
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    iget p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_8

    :cond_14
    :goto_6
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    iget p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-ne p3, v1, :cond_1a

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p3

    if-eqz p3, :cond_1a

    iget-object v1, p3, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_1a

    if-ne p1, p2, :cond_15

    invoke-virtual {p3, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_15
    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result p1

    if-eq p1, v3, :cond_1a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1a

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1a

    const/4 p2, 0x5

    if-ne p1, p2, :cond_16

    goto :goto_8

    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_1a

    iget-object p1, p3, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz p1, :cond_1a

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez p2, :cond_1a

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz p1, :cond_1a

    invoke-virtual {p3}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-virtual {p3, v3, v0, v0}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-wide v4, v6

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_8

    :cond_17
    :goto_7
    iget p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    if-eq p1, v3, :cond_18

    if-eq p1, v1, :cond_18

    if-ne p1, v2, :cond_19

    :cond_18
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    :cond_19
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    :cond_1a
    :goto_8
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v8, p0

    iget-object v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->drawOverlay:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x3

    const/4 v9, 0x1

    if-eq v0, v1, :cond_3

    if-ne v0, v9, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move-object/from16 v4, p1

    goto/16 :goto_2

    :cond_3
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    iget-boolean v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    iget v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    iget-boolean v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->collapseTransition:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v2, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    sub-float/2addr v0, v2

    iget v2, v8, Lorg/telegram/ui/Components/FragmentContextView;->extraHeight:F

    add-float v12, v0, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v14, v0

    iget v0, v8, Lorg/telegram/ui/Components/FragmentContextView;->collapseProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, p1

    invoke-virtual/range {v10 .. v17}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->draw(FFFFLandroid/graphics/Canvas;Lorg/telegram/ui/Components/FragmentContextView;F)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-float v4, v4

    const/4 v1, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->draw(FFFFLandroid/graphics/Canvas;Lorg/telegram/ui/Components/FragmentContextView;F)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    sub-float/2addr v0, v1

    iget-boolean v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->collapseTransition:Z

    if-eqz v1, :cond_5

    iget v1, v8, Lorg/telegram/ui/Components/FragmentContextView;->extraHeight:F

    add-float/2addr v0, v1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    const/4 v0, 0x1

    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    iput-boolean v9, v8, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    return-void
.end method

.method public getStyleHeight()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    return v0
.end method

.method public getTopPadding()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    return v0
.end method

.method public invalidate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public isCallStyle()Z
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public isCallTypeVisible()Z
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    const/16 v1, 0xf

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    invoke-virtual {v0, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkVisibility()V

    :cond_0
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->checkLiveLocation(Z)V

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    invoke-virtual {v0, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    invoke-virtual {v0, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    invoke-virtual {v0, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-virtual {v0, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    invoke-virtual {v0, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    invoke-virtual {v0, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz v0, :cond_3

    invoke-direct {v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkVisibility()V

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHangingUp()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityInterface;->getDialogId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->getImportingHistory(J)Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->shouldShowPanel()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->isPlayingVoice()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/FragmentContextView;->checkPlayer(Z)V

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/FragmentContextView;->updatePlaybackButton(Z)V

    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v5, 0x3

    if-eq v0, v5, :cond_8

    if-ne v0, v4, :cond_7

    goto :goto_3

    :cond_7
    if-ne v0, v2, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    if-nez v0, :cond_c

    iput-boolean v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_8
    :goto_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->addParent(Landroid/view/View;)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_9
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    iget-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eq v2, v0, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v2, :cond_c

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    const/16 v1, 0x1d

    :goto_5
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_c
    :goto_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    :cond_d
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speakerAmplitude:F

    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 4

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
    iget-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eq v3, v0, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto :goto_1

    :cond_1
    const/16 v0, 0x1d

    :goto_1
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getCustomEndFrame()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->muteButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->updateState(Z)V

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMuted:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->micAmplitude:F

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    :cond_3
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
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->visible:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->isLocation:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    :goto_0
    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupCallTypingsUpdated:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupCallVisibilityChanged:I

    goto :goto_0

    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->currentStyle:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->removeParent(Landroid/view/View;)V

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public synthetic onMediaStateUpdated(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onMediaStateUpdated(Lorg/telegram/messenger/voip/VoIPService$StateListener;II)V

    return-void
.end method

.method public onPanTranslationUpdate(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedHintView:Lorg/telegram/ui/Components/HintView;

    if-eqz v0, :cond_0

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    :cond_0
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

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updateCallTitle()V

    return-void
.end method

.method public synthetic onVideoAvailableChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onVideoAvailableChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public setAdditionalContextView(Lorg/telegram/ui/Components/FragmentContextView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    return-void
.end method

.method public setCollapseTransition(ZFF)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->collapseTransition:Z

    iput p2, p0, Lorg/telegram/ui/Components/FragmentContextView;->extraHeight:F

    iput p3, p0, Lorg/telegram/ui/Components/FragmentContextView;->collapseProgress:F

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->delegate:Lorg/telegram/ui/Components/FragmentContextView$FragmentContextViewDelegate;

    return-void
.end method

.method public setDrawOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->drawOverlay:Z

    return-void
.end method

.method public setLeftMargin(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->frameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->leftMargin:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->playButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->importingImageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->subtitleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->avatars:Lorg/telegram/ui/Components/AvatarsImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setSupportsCalls(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->supportsCalls:Z

    return-void
.end method

.method public setTopPadding(F)V
    .locals 3

    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->applyingView:Landroid/view/View;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->additionalContextView:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    float-to-int v2, v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/FragmentContextView;->updatePaddings()V

    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->topPadding:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setTopPadding(F)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FragmentContextView;->wasDraw:Z

    :cond_0
    return-void
.end method

.method public toggleScheduledNotify()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->chatActivity:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->toggleGroupCallStartSubscriptionReqId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->toggleGroupCallStartSubscriptionReqId:I

    invoke-virtual {v1, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->toggleGroupCallStartSubscriptionReqId:I

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallStartSubscription;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallStartSubscription;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallStartSubscription;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/FragmentContextView;->willBeNotified:Z

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lorg/telegram/ui/Components/FragmentContextView;->willBeNotified:Z

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_start_subscribed:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallStartSubscription;->subscribed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->toggleGroupCallStartSubscriptionReqId:I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/FragmentContextView;->scheduleRunnableScheduled:Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->updateScheduleTimeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->willBeNotified:Z

    if-eqz v1, :cond_4

    sget v2, Lorg/telegram/messenger/R$raw;->silent_unmute:I

    goto :goto_0

    :cond_4
    sget v2, Lorg/telegram/messenger/R$raw;->silent_mute:I

    :goto_0
    if-eqz v1, :cond_5

    sget v1, Lorg/telegram/messenger/R$string;->LiveStreamWillNotify:I

    goto :goto_1

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->LiveStreamWillNotNotify:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_6
    :goto_2
    return-void
.end method

.method public updateColors()V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->isMusic:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerClose:I

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FragmentContextView;->getThemedColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SpeedIconDrawable;->setColor(I)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    const v2, 0x19ffffff

    and-int/2addr v0, v2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
