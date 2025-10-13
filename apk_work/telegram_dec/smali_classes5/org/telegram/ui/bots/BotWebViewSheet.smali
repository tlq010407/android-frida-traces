.class public Lorg/telegram/ui/bots/BotWebViewSheet;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

.field public static activeSheets:Ljava/util/HashSet;

.field private static shownLockedBots:I


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarColor:I

.field private actionBarColorKey:I

.field private actionBarIsLight:Z

.field private actionBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private actionBarPaint:Landroid/graphics/Paint;

.field private actionBarShadow:Landroid/graphics/drawable/Drawable;

.field private actionBarTransitionProgress:F

.field public attached:Z

.field private backButtonShown:Z

.field private backgroundColorAnimator:Landroid/animation/ValueAnimator;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private botButtons:Lorg/telegram/ui/bots/BotButtons;

.field private botButtonsLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private botId:J

.field private bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

.field private bottomTabsClip:Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field private bulletinContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private buttonText:Ljava/lang/String;

.field private currentAccount:I

.field private currentWebApp:Lorg/telegram/tgnet/TLRPC$BotApp;

.field private defaultFullsize:Z

.field private dimPaint:Landroid/graphics/Paint;

.field private dismissed:Z

.field private downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

.field private downloadBulletinLayout:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

.field private errorCode:Ljava/lang/String;

.field private errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

.field private errorShown:Z

.field private fileItems:Ljava/util/HashMap;

.field private forceExpnaded:Z

.field public fromTab:Z

.field private fullscreen:Z

.field private fullscreenAnimator:Landroid/animation/ValueAnimator;

.field private fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

.field private fullscreenInProgress:Z

.field private fullscreenProgress:F

.field private fullscreenTransitionProgress:F

.field private fullsize:Ljava/lang/Boolean;

.field private hasSettings:Z

.field private ignoreLayout:Z

.field private final insets:Landroid/graphics/Rect;

.field private keyboardInset:I

.field private lastBulletinFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

.field private lastSwipeTime:J

.field private lastTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

.field private lineColor:I

.field private linePaint:Landroid/graphics/Paint;

.field private monoforumTopicId:J

.field private navBarColor:I

.field private final navInsets:Landroid/graphics/Rect;

.field private needCloseConfirmation:Z

.field private needsContext:Z

.field private openAnimator:Landroid/animation/ValueAnimator;

.field private openedProgress:F

.field private options:Lorg/telegram/ui/Components/ItemOptions;

.field private optionsIcon:Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;

.field private optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private orientationLocked:Z

.field private overrideActionBarColor:Z

.field private overrideBackgroundColor:Z

.field private parentActivity:Landroid/app/Activity;

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field private peerId:J

.field private pollRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

.field private queryId:J

.field private replyToMsgId:I

.field private requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

.field private resetOffsetY:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private sensors:Lorg/telegram/ui/bots/BotSensors;

.field public showExpanded:Z

.field public showOffsetY:F

.field private silent:Z

.field private springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private superDismissed:Z

.field private swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

.field private swipeContainerFromHeight:I

.field private swipeContainerFromWidth:I

.field private swipeContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field verifiedDrawable:Landroid/graphics/drawable/Drawable;

.field private wasLightStatusBar:Ljava/lang/Boolean;

.field private webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

.field private windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;


# direct methods
.method public static synthetic $r8$lambda$-BiRon4FW4qOOI_E6GWeWg89tAw(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$0YYWvqQMeRUg8PXS49j58pOBpJI(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$17(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2UwJM5LA1eCPelpmqetXzFKpW94(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2ViQsPiJsDlJWGhZODW4vSVsAtc(Lorg/telegram/ui/bots/BotWebViewSheet;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$7(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2toRd11VFn-E3AHJJG6hSdIaDyY(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3nOdwXe3QP5wbqqxVwnQV4IdmVM(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->relayout()V

    return-void
.end method

.method public static synthetic $r8$lambda$4FNYc9HcXC2-m5FjfA0iYnOtNZU(IJLorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$deleteBot$45(IJLorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4IT9yoW1iAJoPsfw2I_EDfXmoCI(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$31(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4mbuQMnBUlZu4xbcBH44nX5JMzU(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$30(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5BrJMhKYBHcszFWfcD0qwzjvU_k(Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$showJustAddedBulletin$0(Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$68pHitx2LbZxdRGjzAsb-tNfNv8(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$onCheckDismissByUser$46(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7DuXWAd0jmekhu0lNMj_6O3pCN4(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$7bOzMO4zM_k5yhpQfuOxPVVSDJ0(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$28(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7vWFi9Lv5SHrt49VTvIMgqWbpYs(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$20(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bm1Sn1ab7E5ejW6m66HmSYoP4F4(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$CEp0ScAYMZlzYP6mFwFRzoWh43A(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D-CLnpefspF3cKG10fzqKOvqTpU(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$showJustAddedBulletin$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HsZbgq6UrtkG4Cn_jFG2ohaM5l0(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$deleteBot$44(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J8GTzwSaKoHSMHGt2x982ASPETU(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$Jq8hLUNxlqx0CFSALAX6DDFs32w(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$16(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJkGLn1JoMcIKLyLNKo4OV272dE(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->openOptions()V

    return-void
.end method

.method public static synthetic $r8$lambda$M5BEncDjTgZnSI4YmOyPayJmPGw(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mn_TVu4ChUTsqxCpM5C0Fm_UEAY(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$NRFDGVsSQZp9dzc4efIM87_71xQ()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$Nnxme6TNNcYBB2JMDO0fPeGVAKI(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$29(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O645PBO9cfS7dnNqhI4i1z32eCM(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$34(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OErSoGw6_OdyLr5zVmdUlPQptp4(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$39()V

    return-void
.end method

.method public static synthetic $r8$lambda$PhCddlE1rLsM5qeW1ByGdyNyD0k(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sj1S6q0C4fnxXD3192gI_o89zuY(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$26(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TLMgHLXuI5W2mDnn4Jv1jkQMfiI(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$13(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XAsqmUi9lP_xz_peD_bdZJB9cA8(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-0FfX7t3MRxXvJVobsy08t7EQM(Lorg/telegram/ui/bots/BotWebViewSheet;IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$setActionBarColor$51(IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_H9I3Ryh5ueo2ZSkqafvwzh_UcQ(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_P8vXoGy7b_H8Tw1Leuw-JKr0Ww(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$dismiss$47(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bPZfr6D-uZZoyGl6dLSb5PcvfOs(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dhmypthlwfdi0mzcNPXCnIIwOB8(Lorg/telegram/ui/bots/BotWebViewSheet;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$static$3(Lorg/telegram/ui/bots/BotWebViewSheet;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$eO_luktvuTr04NKMJR2LQUN6W5Y(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$ewBebi-J2R2N-kactmnJRNg8-9s(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$8(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fBKGo6Od6UNrJAoe2nza7cBwQ4Y(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$21(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fLgKXYLYPTvrPuFJtudb6JdVFNI(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$createErrorContainer$52(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fR_PZN517ustV5BvUIIA-agrPik(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$fnrqU2JUwy5NQmIm71hB8Zo_zHE(Lorg/telegram/ui/bots/BotWebViewSheet;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$setBackgroundColor$49(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g3kCrpWWcAhA1NQ5vYXLxDbeCj0(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$jBosqiv3J4-I4wRQVsICB99VHX0(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$32(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kx7_NOsG2o-4vjrL2U9wUJxuoTk(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$static$2(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pGnC9i_CCFqcIl3iIAOKaWBvcbI(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qMLFitaQ3GBOlJN23I1tK38FGRE(IZLjava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$makeThemeParams$19(IZLjava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rCgHYUSwEtBZMeOl43lvSSnMWGc(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$requestWebView$25(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rVPDtTt7VayiwQHypUUZhWaYeso(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/bots/BotDownloads$FileDownload;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$updateDownloadBulletin$42(Lorg/telegram/ui/bots/BotDownloads$FileDownload;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2PtDEFvVIbvcLXS6-7atgeNfEI(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$new$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vKGzghW7KxML0CC-uDoJ7xOFdxQ(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$deleteBot$43(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vtQLlun3FEzMs2j-xFqv4zCQD3I(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$onCreate$18(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ySFOgMJWTvaSJp686QqMyeThRzM(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$openOptions$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$yeSkIHAeo5sbtdwU_909AjlouXs(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$setOpen$48(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhdruhtjwnQ4nXzPOiSNFa_Bv2o(Lorg/telegram/ui/bots/BotWebViewSheet;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/BotWebViewSheet;->lambda$setNavigationBarColor$50(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/bots/BotWebViewSheet;->activeSheets:Ljava/util/HashSet;

    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "actionBarTransitionProgress"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/bots/BotWebViewSheet;->ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarPaint:Landroid/graphics/Paint;

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColorKey:I

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->defaultFullsize:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fileItems:Ljava/util/HashMap;

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    iput-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resetOffsetY:Z

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->attached:Z

    iput-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lineColor:I

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$1;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$1;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setAllowFullSizeSwipe(Z)V

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setShouldWaitWebViewScroll(Z)V

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$2;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v10

    const/4 v11, 0x1

    move-object v6, v3

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/bots/BotWebViewSheet$2;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance v6, Lorg/telegram/ui/bots/BotWebViewSheet$3;

    invoke-direct {v6, p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$3;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/web/BotWebViewContainer;->setDelegate(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    invoke-static {v3, v5, v1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda18;

    invoke-direct {v5, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/16 v6, 0x31

    invoke-static {v2, v2, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$4;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$4;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda19;

    invoke-direct {v5, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/bots/BotButtons;->setOnButtonClickListener(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda20;

    invoke-direct {v5, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/bots/BotButtons;->setOnResizeListener(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    const/16 v7, 0x51

    const/4 v8, -0x2

    invoke-static {v2, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtonsLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/messenger/BotFullscreenButtons;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/telegram/messenger/BotFullscreenButtons;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController;->disableBotFullscreenBlur:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getRenderNode()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/BotFullscreenButtons;->setParentRenderNode(Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    const/16 v7, 0x77

    invoke-static {v2, v2, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda21;

    invoke-direct {v5, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/BotFullscreenButtons;->setOnCloseClickListener(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/BotFullscreenButtons;->setOnCollapseClickListener(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/BotFullscreenButtons;->setOnMenuClickListener(Ljava/lang/Runnable;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    const/16 v7, 0xc8

    const/16 v9, 0x37

    invoke-static {v2, v7, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarShadow:Landroid/graphics/drawable/Drawable;

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$5;

    invoke-direct {v3, p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$5;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateActionBarColors()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$6;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2, v8, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$7;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$7;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/16 v7, 0x51

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setWebViewProgressListener(Landroidx/core/util/Consumer;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollListener(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollEndListener(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setDelegate(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setIsKeyboardVisible(Lorg/telegram/messenger/GenericProvider;)V

    new-instance p2, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v4

    :cond_1
    iput-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v4, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda16;

    invoke-direct {p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;)V

    new-instance p1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v4, p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->listen(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabsClip:Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resetOffsetY:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotSensors;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->sensors:Lorg/telegram/ui/bots/BotSensors;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/bots/BotSensors;)Lorg/telegram/ui/bots/BotSensors;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->sensors:Lorg/telegram/ui/bots/BotSensors;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resetOffsetY:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWebViewBackgroundColor()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/bots/BotWebViewSheet;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ArticleViewer$ErrorContainer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorShown:Z

    return p1
.end method

.method static synthetic access$1802(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needCloseConfirmation:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/messenger/Utilities$CallbackReturn;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->showBulletin(Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->ignoreLayout:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/bots/BotWebViewSheet;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->queryId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/bots/BotWebViewSheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->buttonText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/bots/BotWebViewSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColorKey:I

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backButtonShown:Z

    return p1
.end method

.method static synthetic access$2602(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->hasSettings:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/web/BotWebViewContainer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/bots/BotWebViewSheet;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    return p1
.end method

.method static synthetic access$3301(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$3502(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->forceExpnaded:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    return p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/bots/BotWebViewSheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    return p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateActionBarColors()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/bots/BotWebViewSheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/bots/BotWebViewSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletinArrow()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenInProgress:Z

    return p0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/bots/BotWebViewSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenInProgress:Z

    return p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    return p0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/bots/BotWebViewSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    return p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/bots/BotWebViewSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lineColor:I

    return p0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/bots/BotWebViewSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lineColor:I

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerFromHeight:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/bots/BotWebViewSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerFromWidth:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/Components/PasscodeView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabsClip:Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/bots/BotWebViewSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideBackgroundColor:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/messenger/BotFullscreenButtons;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/bots/BotWebViewSheet;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabs;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->linePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarShadow:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/bots/BotWebViewSheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    return-object p0
.end method

.method private applyAppBotSettings(Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->flags:I

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const/16 v4, 0x10

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    and-int/2addr v1, v4

    const/high16 v4, -0x1000000

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->header_dark_color:I

    goto :goto_3

    :cond_4
    iget v1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->header_color:I

    :goto_3
    or-int/2addr v1, v4

    invoke-virtual {p0, v1, v3, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setActionBarColor(IZZ)V

    :cond_5
    if-eqz v2, :cond_8

    if-eqz v0, :cond_6

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_dark_color:I

    goto :goto_4

    :cond_6
    iget v1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_color:I

    :goto_4
    or-int/2addr v1, v4

    invoke-virtual {p0, v1, v3, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setBackgroundColor(IZZ)V

    if-eqz v0, :cond_7

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_dark_color:I

    goto :goto_5

    :cond_7
    iget p1, p1, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->background_color:I

    :goto_5
    or-int/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setNavigationBarColor(IZ)V

    :cond_8
    return-void
.end method

.method public static deleteBot(IJLjava/lang/Runnable;)V
    .locals 12

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    move-object v10, v1

    goto :goto_0

    :cond_1
    move-object v10, v2

    :goto_0
    if-nez v10, :cond_2

    return-void

    :cond_2
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    sget v1, Lorg/telegram/messenger/R$string;->BotRemoveFromMenu:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$string;->BotRemoveFromMenuTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda32;

    move-object v6, v3

    move v7, p0

    move-wide v8, p1

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda32;-><init>(IJLorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private getColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$createErrorContainer$52(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->reload()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$deleteBot$43(I)V
    .locals 2

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V

    return-void
.end method

.method private static synthetic lambda$deleteBot$44(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda53;

    invoke-direct {p1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda53;-><init>(I)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$deleteBot$45(IJLorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    invoke-virtual {p6, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p6

    iput-object p6, p5, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 p6, 0x0

    iput-boolean p6, p5, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->enabled:Z

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda50;-><init>(I)V

    const/16 v2, 0x42

    invoke-virtual {v0, p5, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    iput-boolean p6, p3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p5, Lorg/telegram/messenger/NotificationCenter;->attachMenuBotsDidLoad:I

    new-array p6, p6, [Ljava/lang/Object;

    invoke-virtual {p3, p5, p6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    sget p3, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaDataController;->uninstallShortcut(JI)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dismiss$47(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$makeThemeParams$19(IZLjava/lang/Integer;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p1, :cond_0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    const/4 p2, 0x2

    aput-object p0, v1, p2

    const-string p0, "#%02X%02X%02X"

    invoke-static {p1, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private synthetic lambda$new$10()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->onCheckDismissByUser()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$11()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->forceExpnaded:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$12(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$13(Ljava/lang/Float;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgressAnimated(F)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$8;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$new$14()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v2, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    sub-float v3, v1, v3

    const/high16 v4, 0x42800000    # 64.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dimPaint:Landroid/graphics/Paint;

    const/16 v3, 0x40

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v3

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastSwipeTime:J

    return-void
.end method

.method private synthetic lambda$new$15()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method private synthetic lambda$new$16(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$17(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda49;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->queryId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;-><init>()V

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->peerId:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->queryId:J

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->query_id:J

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->silent:Z

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->replyToMsgId:I

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->replyToMsgId:I

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    :cond_0
    :goto_0
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda48;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_3
    return-void
.end method

.method private synthetic lambda$new$7(IZ)V
    .locals 1

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result p2

    neg-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onMainButtonPressed()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onSecondaryButtonPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$9()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$onCheckDismissByUser$46(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreate$18(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    invoke-static {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsets;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsets;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline4;->m(Landroid/view/WindowInsets;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le p1, v1, :cond_1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le p1, v1, :cond_1

    :goto_0
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    const/16 p1, 0x1e

    if-lt v0, p1, :cond_2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline6;->m(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$openOptions$33()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$openOptions$34(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->openSwipeback(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method private synthetic lambda$openOptions$35()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->parentActivity:Landroid/app/Activity;

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$openOptions$36()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onSettingsButtonPressed()V

    return-void
.end method

.method private synthetic lambda$openOptions$37()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgress(F)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->reload()V

    return-void
.end method

.method private synthetic lambda$openOptions$38()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    sget v3, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->installShortcut(JI)V

    return-void
.end method

.method private synthetic lambda$openOptions$39()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotWebViewToSLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$openOptions$40()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$openOptions$41()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda51;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->deleteBot(IJLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$20(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->applyAppBotSettings(Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$21(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$UserFull;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$22(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->openOptions()V

    return-void
.end method

.method private synthetic lambda$requestWebView$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/WebViewRequestProps;->applyResponse(Lorg/telegram/tgnet/TLObject;)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestWebView$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$25(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/WebViewRequestProps;->applyResponse(Lorg/telegram/tgnet/TLObject;)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestWebView$26(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/WebViewRequestProps;->applyResponse(Lorg/telegram/tgnet/TLObject;)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestWebView$28(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$29(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/WebViewRequestProps;->applyResponse(Lorg/telegram/tgnet/TLObject;)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestWebView$30(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$requestWebView$31(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/WebViewRequestProps;->applyResponse(Lorg/telegram/tgnet/TLObject;)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestWebView$32(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setActionBarColor$51(IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-static {p1, p2, p4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3, p1, p4}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->updateActionBar(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-virtual {p3, p1}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lineColor:I

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setBackgroundColor$49(IILandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateActionBarColors()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p2

    const p3, 0x3f389375    # 0.721f

    const/4 v0, 0x0

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setDark(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWebViewBackgroundColor()V

    return-void
.end method

.method private synthetic lambda$setNavigationBarColor$50(IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p1, p2, p3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    return-void
.end method

.method private synthetic lambda$setOpen$48(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    return-void
.end method

.method private static synthetic lambda$showJustAddedBulletin$0(Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    sget v0, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showJustAddedBulletin$1(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda55;

    invoke-direct {v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda55;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->showBulletin(Lorg/telegram/messenger/Utilities$CallbackReturn;)V

    return-void
.end method

.method private static synthetic lambda$static$2(Lorg/telegram/ui/bots/BotWebViewSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    return p0
.end method

.method private static synthetic lambda$static$3(Lorg/telegram/ui/bots/BotWebViewSheet;F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateLightStatusBar()V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletinArrow()V

    return-void
.end method

.method private synthetic lambda$updateDownloadBulletin$42(Lorg/telegram/ui/bots/BotDownloads$FileDownload;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->isDownloading()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancel()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->open()V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->options:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->options:Lorg/telegram/ui/Components/ItemOptions;

    :cond_1
    return-void
.end method

.method private loadFromResponse()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v2, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->responseTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-object v3, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->response:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->query_id:J

    iput-wide v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->queryId:J

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->url:Ljava/lang/String;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->fullsize:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    iget-boolean v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fromTab:Z

    if-nez v4, :cond_1

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->fullscreen:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->setFullscreen(ZZ)V

    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fromTab:Z

    if-nez v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v4, v4, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MediaDataController;->increaseWebappRating(J)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->isFullSize()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setFullSize(Z)V

    :cond_3
    return-void
.end method

.method public static makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Lorg/json/JSONObject;
    .locals 4

    .line 0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/high16 v2, -0x1000000

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda28;

    invoke-direct {v2, v1, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda28;-><init>(IZ)V

    const-string p1, "bg_color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "section_bg_color"

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "secondary_bg_color"

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "hint_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "link_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "button_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "button_text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "header_bg_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "accent_text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "section_header_text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "subtitle_text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "destructive_text_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "section_separator_color"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v3, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bottom_bar_bg_color"

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static navigationBarColor(I)I
    .locals 2

    const v0, 0x3eb33333    # 0.35f

    const v1, -0x42333333    # -0.1f

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p0

    return p0
.end method

.method private openOptions()V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->options:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-boolean v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    :goto_1
    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->options:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v6, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v3, v4, v6, v7}, Lorg/telegram/ui/bots/BotDownloads;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotDownloads;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fileItems:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v3}, Lorg/telegram/ui/bots/BotDownloads;->hasFiles()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->makeSwipeback()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    sget v7, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda312;

    invoke-direct {v8, v1}, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda312;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v4, v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v3}, Lorg/telegram/ui/bots/BotDownloads;->getFiles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    iget-object v7, v6, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file_name:Ljava/lang/String;

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda34;

    invoke-direct {v8}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda34;-><init>()V

    const-string v9, ""

    invoke-virtual {v4, v7, v9, v8}, Lorg/telegram/ui/Components/ItemOptions;->add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fileItems:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletin()V

    const/high16 v3, 0x43340000    # 180.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/ItemOptions;->setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_download_round:I

    sget v6, Lorg/telegram/messenger/R$string;->BotDownloads:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda35;

    invoke-direct {v7, v1, v4}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v3, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    :cond_5
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    sget v4, Lorg/telegram/messenger/R$string;->BotWebViewOpenBot:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda36;

    invoke-direct {v6, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v1, v3, v4, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->hasSettings:Z

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v7, Lorg/telegram/messenger/R$string;->BotWebViewSettings:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda37;

    invoke-direct {v8, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v4, v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    sget v6, Lorg/telegram/messenger/R$string;->BotWebViewReloadPage:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda38;

    invoke-direct {v7, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v4, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_has_main_app:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_home:I

    sget v7, Lorg/telegram/messenger/R$string;->AddShortcut:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda39;

    invoke-direct {v8, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v0, v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_intro:I

    sget v6, Lorg/telegram/messenger/R$string;->BotWebViewToS:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda40;

    invoke-direct {v7, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v3, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    if-eqz v2, :cond_8

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    if-nez v3, :cond_7

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v6, Lorg/telegram/messenger/R$string;->BotWebViewDeleteBot:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda41;

    invoke-direct {v7, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v2, v3, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    if-eq v0, v2, :cond_c

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const/4 v2, -0x1

    const v3, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_9

    const/4 v0, -0x1

    goto :goto_5

    :cond_9
    const v0, -0xe7e7e7

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v6

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_a

    const/high16 v2, -0x1000000

    :cond_a
    const v3, 0x3f59999a    # 0.85f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v7

    if-ge v0, v7, :cond_c

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->getItemAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v8, :cond_b

    check-cast v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v7, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ItemOptions;->forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private preloadShortcutBotIcon(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 3

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    sget v2, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->isShortcutAdded(JI)Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-static {p1, v1}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MediaDataController;->preloadImage(Lorg/telegram/messenger/ImageLocation;I)V

    :cond_1
    return-void
.end method

.method private relayout()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    return-void
.end method

.method private showBulletin(Lorg/telegram/messenger/Utilities$CallbackReturn;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Bulletin;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private updateActionBarColors()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsSelectorColor(IZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->setFlickerViewColor(I)V

    return-void
.end method

.method private updateDownloadBulletin()V
    .locals 11

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/BotDownloads;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotDownloads;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotDownloads;->getCurrent()Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->isDownloading()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->shown:Z

    if-eqz v4, :cond_2

    :cond_1
    iget-boolean v4, v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->resaved:Z

    if-eqz v4, :cond_7

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastBulletinFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    if-eq v4, v1, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastBulletinFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    new-instance v6, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v7, v8}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletinLayout:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

    const/16 v7, 0x1388

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletinLayout:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->set(Lorg/telegram/ui/bots/BotDownloads$FileDownload;)Z

    move-result v4

    if-eqz v4, :cond_6

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletin:Lorg/telegram/ui/Components/Bulletin;

    :cond_6
    iput-boolean v3, v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->resaved:Z

    iput-boolean v5, v1, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->shown:Z

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletinLayout:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

    if-eqz v4, :cond_8

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastBulletinFile:Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->set(Lorg/telegram/ui/bots/BotDownloads$FileDownload;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletinArrow()V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fileItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    iget-object v5, v2, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->file_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->isDownloading()Z

    move-result v5

    if-nez v5, :cond_9

    iget-wide v5, v2, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->size:J

    :goto_3
    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->getProgress()Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_a
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_3

    :goto_5
    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->isDownloading()Z

    move-result v5

    if-eqz v5, :cond_b

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    iget-object v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->subtextView:Landroid/widget/TextView;

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v3, v3, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_6

    :cond_b
    iget-boolean v5, v2, Lorg/telegram/ui/bots/BotDownloads$FileDownload;->cancelled:Z

    if-eqz v5, :cond_c

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_c
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    iget-object v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_6
    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/ui/bots/BotDownloads$FileDownload;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->optionsIcon:Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotDownloads;->isDownloading()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;->setDownloading(Z)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotDownloads;->isDownloading()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/BotFullscreenButtons;->setDownloading(Z)V

    return-void
.end method

.method private updateDownloadBulletinArrow()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->downloadBulletinLayout:Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    const/high16 v2, 0x41c00000    # 24.0f

    if-eqz v1, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotDownloads$DownloadBulletin;->setArrow(I)V

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private updateLightStatusBar()V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarIsLight:Z

    xor-int/2addr v1, v0

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x3fe7126ea0000000L    # 0.7210000157356262

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarTransitionProgress:F

    const v2, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->wasLightStatusBar:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->wasLightStatusBar:Ljava/lang/Boolean;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x2000

    goto :goto_1

    :cond_3
    and-int/lit16 v0, v0, -0x2001

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    return-void
.end method

.method private updateWebViewBackgroundColor()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public checkNavBarColor()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public createErrorContainer()Lorg/telegram/ui/ArticleViewer$ErrorContainer;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorShown:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->queryId:J

    cmp-long p3, v0, p1

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->updateFlickerBackgroundColor(I)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateActionBarColors()V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateLightStatusBar()V

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botDownloadsUpdate:I

    if-ne p1, p2, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletin()V

    :cond_2
    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public dismiss(ZLjava/lang/Runnable;)V
    .locals 5

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->dismissed:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->setOpen(Z)V

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->botDownloadsUpdate:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-eqz p1, :cond_2

    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_3
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->dismissSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Z

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    invoke-virtual {v3}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xa0

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->destroyWebView()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v3

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->isFullSize()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_7
    add-int/2addr v2, v1

    int-to-float v1, v2

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(FZLjava/lang/Runnable;)V

    :goto_1
    sget-object p1, Lorg/telegram/ui/bots/BotWebViewSheet;->activeSheets:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getBotId()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    return-wide v0
.end method

.method public getNavigationBarColor(I)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getWindowView()Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    move-result-object v0

    return-object v0
.end method

.method public getWindowView()Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    return-object v0
.end method

.method public hadDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFullSize()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->defaultFullsize:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

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

.method public lockOrientation(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->orientationLocked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->orientationLocked:Z

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->attached:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    sput p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    goto :goto_1

    :cond_1
    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    :goto_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setAttached(Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lorg/telegram/ui/bots/BotWebViewSheet;->ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x44960000    # 1200.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public onCheckDismissByUser()Z
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needCloseConfirmation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewChangesMayNotBeSaved:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewCloseAnyway:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda45;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/16 v2, 0x15

    if-lt v0, v1, :cond_0

    const v1, -0x7fffff00

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    :cond_0
    if-lt v0, v2, :cond_1

    const v1, -0x7ffeff00

    goto :goto_0

    :cond_1
    :goto_1
    sget v1, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v4, 0x33

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v4, -0x3

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v6, 0x10

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x1c

    const/4 v6, 0x1

    if-lt v0, v3, :cond_2

    invoke-static {v1, v6}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v3, :cond_3

    or-int/lit16 v3, v5, 0x200

    :goto_2
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_3

    :cond_3
    and-int/lit16 v3, v4, -0x203

    goto :goto_2

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x17

    const/4 v3, 0x0

    if-lt v0, v1, :cond_4

    invoke-static {p1, v3}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/Window;I)V

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    const/16 v4, 0x700

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-lt v0, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_5
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v1

    if-gtz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, -0x3

    goto :goto_4

    :goto_5
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v4, 0x3fe7126ea0000000L    # 0.7210000157356262

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_8

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    invoke-static {p1, v6}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    :cond_9
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->botDownloadsUpdate:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setAttached(Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->addOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->removeOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setOpen(Z)V

    return-void
.end method

.method public requestWebView(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/bots/WebViewRequestProps;)V
    .locals 13

    iput-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget v0, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->currentAccount:I

    iput v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->peerId:J

    iput-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->peerId:J

    iget-wide v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    iput-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    iget v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->replyToMsgId:I

    iput v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->replyToMsgId:I

    iget-wide v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->monoforumTopicId:J

    iput-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    iget-boolean v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->silent:Z

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->silent:Z

    iget-object v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonText:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->buttonText:Ljava/lang/String;

    iget-object v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->app:Lorg/telegram/tgnet/TLRPC$BotApp;

    iput-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentWebApp:Lorg/telegram/tgnet/TLRPC$BotApp;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-nez v3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_2

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->verified_profile:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v6, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/bots/BotWebViewSheet$9;

    invoke-direct {v4, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$9;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_3

    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/BotFullscreenButtons;->setName(Ljava/lang/String;Z)V

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v10, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    cmp-long v12, v8, v10

    if-nez v12, :cond_5

    goto :goto_2

    :cond_6
    move-object v6, v7

    :goto_2
    iget-boolean v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fromTab:Z

    if-nez v5, :cond_9

    if-eqz v1, :cond_7

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    if-eqz v0, :cond_8

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->applyAppBotSettings(Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;Z)V

    goto :goto_3

    :cond_7
    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v1, v0, v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/messenger/Utilities$Callback;)V

    :cond_8
    :goto_3
    iget-boolean v0, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, v4, v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setFullscreen(ZZ)V

    :cond_9
    sget v0, Lorg/telegram/messenger/R$id;->menu_collapse_bot:I

    sget v1, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v0, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->optionsIcon:Lorg/telegram/messenger/BotFullscreenButtons$OptionsIcon;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$10;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v8, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-wide v8, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v1, v3, v8, v9, v7}, Lorg/telegram/ui/web/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    iget-object v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, v1, v6}, Lorg/telegram/ui/bots/BotWebViewSheet;->preloadShortcutBotIcon(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    iget-object v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->response:Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->loadFromResponse()V

    goto/16 :goto_d

    :cond_a
    iget v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->type:I

    const/4 v3, 0x4

    const-string v5, "android"

    const/4 v6, 0x2

    if-eqz v1, :cond_1d

    if-eq v1, v4, :cond_17

    if-eq v1, v6, :cond_15

    const/4 v2, 0x3

    const/16 v7, 0x42

    if-eq v1, v2, :cond_10

    if-eq v1, v3, :cond_b

    goto/16 :goto_d

    :cond_b
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;-><init>()V

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v8, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    invoke-virtual {v2, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->platform:Ljava/lang/String;

    instance-of v2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_d

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    goto :goto_5

    :cond_d
    iget-object p1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_4

    :goto_5
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-boolean p1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->compact:Z

    iget-boolean p1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->fullscreen:Z

    iget-object p1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->start_param:Ljava/lang/String;

    iget p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->flags:I

    or-int/2addr p1, v6

    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->flags:I

    :cond_e
    if-eqz v0, :cond_f

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->flags:I

    or-int/2addr p1, v4

    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestMainWebView;->flags:I

    :cond_f
    iget p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    :goto_6
    invoke-virtual {p1, v1, p2, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_d

    :cond_10
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;-><init>()V

    iget-object v4, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->app:Lorg/telegram/tgnet/TLRPC$BotApp;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$BotApp;->id:J

    iput-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;->id:J

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$BotApp;->access_hash:J

    iput-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_inputBotAppID;->access_hash:J

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->app:Lorg/telegram/tgnet/TLRPC$InputBotApp;

    iget-boolean v2, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->allowWrite:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->write_allowed:Z

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->platform:Ljava/lang/String;

    instance-of v2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_12

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :goto_7
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    goto :goto_8

    :cond_11
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    goto :goto_8

    :cond_12
    iget-object p1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_7

    :goto_8
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-boolean p1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->compact:Z

    iget-boolean p1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->fullscreen:Z

    iget-object p1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->start_param:Ljava/lang/String;

    iget p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    or-int/2addr p1, v6

    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    :cond_13
    if-eqz v0, :cond_14

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    or-int/2addr p1, v3

    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    :cond_14
    iget p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    goto :goto_6

    :cond_15
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    iget-boolean v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->compact:Z

    iget-boolean v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->fullscreen:Z

    iget-object p2, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->url:Ljava/lang/String;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr p2, v6

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    if-eqz v0, :cond_16

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr p2, v3

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_16
    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    :goto_9
    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    iget p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto/16 :goto_d

    :cond_17
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;-><init>()V

    iget v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->flags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->from_switch_webview:Z

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->platform:Ljava/lang/String;

    iget v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->flags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    :cond_19
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->from_side_menu:Z

    iget-boolean v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->compact:Z

    iget-boolean v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->fullscreen:Z

    if-eqz v0, :cond_1a

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    or-int/2addr v0, v4

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    :cond_1a
    iget-object v0, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    iget-object v0, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->url:Ljava/lang/String;

    :cond_1b
    iget-object v0, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p2, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->startParam:Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->start_param:Ljava/lang/String;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestSimpleWebView;->flags:I

    :cond_1c
    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_d

    :cond_1d
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->peerId:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    iget-boolean v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->compact:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->compact:Z

    iget-boolean v1, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->fullscreen:Z

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->fullscreen:Z

    iget-object p2, p2, Lorg/telegram/ui/bots/WebViewRequestProps;->buttonUrl:Ljava/lang/String;

    if-eqz p2, :cond_1e

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->url:Ljava/lang/String;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr p2, v6

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_1e
    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->replyToMsgId:I

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_20

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p2

    iget v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->replyToMsgId:I

    invoke-virtual {p2, v5}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget-wide v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    cmp-long v7, v5, v1

    if-eqz v7, :cond_1f

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    :cond_1f
    :goto_b
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr p2, v4

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    goto :goto_c

    :cond_20
    iget-wide v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    cmp-long p2, v5, v1

    if-eqz p2, :cond_21

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->monoforumTopicId:J

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_b

    :cond_21
    :goto_c
    if-eqz v0, :cond_22

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr p2, v3

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_22
    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    goto/16 :goto_9

    :goto_d
    return-void
.end method

.method public restoreState(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    iget-object v1, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fromTab:Z

    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideBackgroundColor:Z

    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideBackgroundColor:Z

    if-eqz v2, :cond_1

    iget v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backgroundColor:I

    invoke-virtual {p0, v2, v1, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setBackgroundColor(IZZ)V

    :cond_1
    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideActionBarColor:Z

    if-nez v2, :cond_3

    iget v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColorKey:I

    if-gez v2, :cond_2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    goto :goto_0

    :cond_3
    iget v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColor:I

    :goto_0
    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideActionBarColor:Z

    invoke-virtual {p0, v2, v3, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setActionBarColor(IZZ)V

    iget v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->navigationBarColor:I

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setNavigationBarColor(IZ)V

    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->expanded:Z

    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->showExpanded:Z

    iget v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->expandedOffset:F

    iput v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->showOffsetY:F

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backButton:Z

    iput-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backButtonShown:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->setIsBackButtonVisible(Z)V

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->allowSwipes:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setAllowSwipes(Z)V

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backButtonShown:Z

    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    goto :goto_1

    :cond_4
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    :goto_1
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backButtonShown:Z

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/BotFullscreenButtons;->setBack(ZZ)V

    :cond_5
    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->confirmDismiss:Z

    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needCloseConfirmation:Z

    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->fullsize:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->needsContext:Z

    iput-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needsContext:Z

    iget-object v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->sensors:Lorg/telegram/ui/bots/BotSensors;

    iput-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->sensors:Lorg/telegram/ui/bots/BotSensors;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotSensors;->resume()V

    :cond_6
    iget-object v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->buttons:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/bots/BotButtons;->setState(Lorg/telegram/ui/bots/BotButtons$ButtonsState;Z)V

    :cond_7
    iget-boolean v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->fullscreen:Z

    invoke-virtual {p0, v2, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setFullscreen(ZZ)V

    iget-object v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz v2, :cond_8

    iget v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->currentAccount:I

    goto :goto_2

    :cond_8
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    :goto_2
    iput v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-object v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->onResume()V

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    iget-object v4, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v5, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->proxy:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/web/BotWebViewContainer;->replaceWebView(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->ready:Z

    if-nez v3, :cond_a

    iget-object v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->isPageLoaded()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v3, 0x1

    :goto_4
    iget-object v4, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->lastUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->setState(ZLjava/lang/String;)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->themeIsDark:Z

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyThemeChanged()V

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    iput-object v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->response:Lorg/telegram/tgnet/TLObject;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->responseTime:J

    :cond_c
    :goto_5
    iget-object v2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->requestWebView(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/bots/WebViewRequestProps;)V

    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->settings:Z

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->hasSettings:Z

    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->error:Z

    if-eqz p1, :cond_e

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorShown:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->createErrorContainer()Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->errorDescription:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    const v3, 0x3f389375    # 0.721f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setDark(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_e
    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->orientationLocked:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->lockOrientation(Z)V

    return v1

    :cond_f
    :goto_7
    return v0
.end method

.method public saveState()Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 6

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;-><init>()V

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColor:I

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColorKey:I

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->actionBarColorKey:I

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideActionBarColor:Z

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideBackgroundColor:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->overrideBackgroundColor:Z

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backgroundColor:I

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->requestProps:Lorg/telegram/ui/bots/WebViewRequestProps;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->ready:Z

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->themeIsDark:Z

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->getUrlLoaded()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->lastUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v1

    const/4 v5, 0x0

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_4

    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->forceExpnaded:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->isFullSize()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->expanded:Z

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->fullscreen:Z

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullsize:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->defaultFullsize:Z

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->fullsize:Z

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    goto :goto_5

    :cond_6
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :goto_5
    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->expandedOffset:F

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needsContext:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->needsContext:Z

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backButtonShown:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->backButton:Z

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needCloseConfirmation:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->confirmDismiss:Z

    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->hasSettings:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->settings:Z

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isAllowedSwipes()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->allowSwipes:Z

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    iget-object v1, v1, Lorg/telegram/ui/bots/BotButtons;->state:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->buttons:Lorg/telegram/ui/bots/BotButtons$ButtonsState;

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    iput v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->navigationBarColor:I

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->sensors:Lorg/telegram/ui/bots/BotSensors;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotSensors;->pause()V

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->sensors:Lorg/telegram/ui/bots/BotSensors;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->sensors:Lorg/telegram/ui/bots/BotSensors;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v1, :cond_a

    move-object v1, v4

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->preserveWebView()V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->getBotProxy()Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    move-result-object v4

    :goto_7
    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->proxy:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->viewWidth:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->viewHeight:I

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->onPause()V

    :cond_c
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorShown:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->error:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorCode:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->errorDescription:Ljava/lang/String;

    :cond_d
    iget-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->orientationLocked:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->orientationLocked:Z

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lastTab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    return-object v0
.end method

.method public setActionBarColor(IZZ)V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->navigationBarColor(I)I

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;

    invoke-direct {v1}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;-><init>()V

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->setFrom(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-boolean p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    const-wide v6, 0x3fe7126ea0000000L    # 0.7210000157356262

    cmpg-double p2, v4, v6

    if-gez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarIsLight:Z

    iget-boolean p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideActionBarColor:Z

    if-eqz p2, :cond_2

    move v3, p1

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v1, v3, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->setTo(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p3, :cond_3

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v2, 0xc8

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda44;

    invoke-direct {p3, p0, v0, p1, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p3, Lorg/telegram/ui/bots/BotWebViewSheet$17;

    invoke-direct {p3, p0, v0, p1, v1}, Lorg/telegram/ui/bots/BotWebViewSheet$17;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;IILorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_3
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget p3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarColor:I

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->updateActionBar(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-virtual {v1, p1}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->lineColor:I

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateLightStatusBar()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAttached(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->attached:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->attached:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->orientationLocked:Z

    if-eqz p1, :cond_2

    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    sput p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->orientationLocked:Z

    if-eqz p1, :cond_2

    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget p1, Lorg/telegram/ui/bots/BotWebViewSheet;->shownLockedBots:I

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    :goto_2
    return-void
.end method

.method public setBackgroundColor(IZZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput-boolean p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->overrideBackgroundColor:Z

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundColorAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda29;

    invoke-direct {p3, p0, v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;II)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/bots/BotWebViewSheet$13;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$13;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;I)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateActionBarColors()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p2

    const p3, 0x3f389375    # 0.721f

    const/4 v0, 0x0

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ArticleViewer$ErrorContainer;->setDark(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->errorContainer:Lorg/telegram/ui/ArticleViewer$ErrorContainer;

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWebViewBackgroundColor()V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDefaultFullsize(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->defaultFullsize:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->defaultFullsize:Z

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->isFullSize()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setFullSize(Z)V

    :cond_0
    return-void
.end method

.method public setDialog(Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setFullscreen(ZZ)V
    .locals 13

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/BotFullscreenButtons;->setPreview(ZZ)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerFromWidth:I

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerFromHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->resetOffsetY:Z

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWindowFlags()V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletinArrow()V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-boolean p2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez p2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, v5

    float-to-int p2, p2

    sub-int/2addr v4, p2

    int-to-float p2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p2, v4

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eqz p1, :cond_4

    int-to-float v4, v4

    add-float/2addr v4, p2

    goto :goto_1

    :cond_4
    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v4, p2

    :goto_1
    if-eqz p1, :cond_5

    :goto_2
    move v11, p2

    goto :goto_3

    :cond_5
    neg-float p2, p2

    goto :goto_2

    :goto_3
    const/high16 p2, 0x41c00000    # 24.0f

    if-eqz p1, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    :goto_4
    move v8, v5

    goto :goto_5

    :cond_6
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    goto :goto_4

    :goto_5
    if-eqz p1, :cond_7

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    :goto_6
    int-to-float v5, v5

    move v9, v5

    goto :goto_7

    :cond_7
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v5, v6

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_6

    :goto_7
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v5, v6

    int-to-float v12, v5

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->cancelStickTo()V

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    if-eqz p1, :cond_8

    neg-int p2, p2

    int-to-float p2, p2

    :goto_8
    invoke-virtual {v5, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    goto :goto_9

    :cond_8
    int-to-float p2, p2

    sub-float p2, v12, p2

    goto :goto_8

    :goto_9
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->invalidateTranslation()V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iput v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    if-eqz p1, :cond_9

    const/4 p2, 0x0

    goto :goto_a

    :cond_9
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_a
    iput p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sub-float/2addr v2, p2

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    mul-float v2, v2, v5

    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    invoke-static {v8, v9, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    invoke-static {v11, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v2, v9

    invoke-virtual {p2, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->setViewPortHeightOffset(F)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p2, v0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenInProgress:Z

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$14;

    move-object v5, v0

    move-object v6, p0

    move v7, p1

    move v10, v4

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/bots/BotWebViewSheet$14;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;ZFFFF)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$15;

    invoke-direct {v0, p0, p1, v12, v4}, Lorg/telegram/ui/bots/BotWebViewSheet$15;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;ZFF)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x118

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_c

    :cond_a
    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenInProgress:Z

    if-eqz p1, :cond_b

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_b
    const/4 p2, 0x0

    :goto_b
    iput p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    iput v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenTransitionProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateFullscreenLayout()V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateWindowFlags()V

    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_c

    const/16 v0, 0x8

    :cond_c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    sub-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenProgress:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->setViewPortHeightOffset(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->updateDownloadBulletinArrow()V

    :goto_c
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic setLastVisible(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet$-CC;->$default$setLastVisible(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;Z)V

    return-void
.end method

.method public setNavigationBarColor(IZ)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/bots/BotButtons;->setBackgroundColor(IZ)V

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;II)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$16;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$16;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;II)V

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->checkNavBarColor()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->navBarColor:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setNeedsContext(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->needsContext:Z

    return-void
.end method

.method public setOpen(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openedProgress:F

    if-eqz p1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/bots/BotWebViewSheet$12;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method public setWasOpenedByLinkIntent(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setWasOpenedByLinkIntent(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->setOpen(Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotWebViewSheet$11;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->superDismissed:Z

    sget-object v0, Lorg/telegram/ui/bots/BotWebViewSheet;->activeSheets:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public showJustAddedBulletin()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botId:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    return-void

    :cond_2
    iget-boolean v3, v4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    if-eqz v3, :cond_3

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v4, :cond_3

    sget v3, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedAttachAndSide:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedSide:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget v3, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedAttach:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/bots/BotWebViewSheet$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/bots/BotWebViewSheet;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public updateFullscreenLayout()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/BotFullscreenButtons;->setInsets(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    if-le v7, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v7

    if-lez v7, :cond_2

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    :goto_2
    invoke-direct {v3, v5, v6, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v4, 0x42380000    # 46.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeInsets(Landroid/graphics/Rect;I)V

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeInsets(Landroid/graphics/Rect;I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->keyboardInset:I

    iget-object v5, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bottomTabs:Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getHeight(Z)I

    move-result v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->actionBarLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-nez v3, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    :goto_5
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->bulletinContainerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v3, :cond_6

    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    :goto_6
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_7
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenInProgress:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    :goto_8
    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTopActionBarOffsetY(F)V

    goto :goto_9

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_8

    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->invalidateTranslation()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/bots/BotWebViewSheet;->isFullSize()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setFullSize(Z)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreenButtons:Lorg/telegram/messenger/BotFullscreenButtons;

    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v2, :cond_b

    goto :goto_a

    :cond_b
    const/16 v1, 0x8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateWindowFlags()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_1

    const/16 v2, 0x400

    goto :goto_0

    :cond_1
    const/16 v2, 0x200

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->fullscreen:Z

    if-eqz v3, :cond_2

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v4

    :goto_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->botButtons:Lorg/telegram/ui/bots/BotButtons;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;->access$3400(Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet;->windowView:Lorg/telegram/ui/bots/BotWebViewSheet$WindowView;

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit8 v3, v3, -0x3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method
