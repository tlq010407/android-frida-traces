.class public abstract Lorg/telegram/ui/web/BotWebViewContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/BotWebViewContainer$Delegate;,
        Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;,
        Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;,
        Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;,
        Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;,
        Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;
    }
.end annotation


# static fields
.field public static firstWebView:Z = true

.field private static rotatedTONHosts:Ljava/util/HashMap;

.field private static tags:I


# instance fields
.field private biometry:Lorg/telegram/ui/bots/BotBiometry;

.field private blockedDialogsUntil:J

.field public final bot:Z

.field private botUser:Lorg/telegram/tgnet/TLRPC$User;

.field private botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

.field private buttonData:Ljava/lang/String;

.field private cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private currentAccount:I

.field private currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private currentPaymentSlug:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

.field private dialogSequentialOpenTimes:I

.field private downloads:Lorg/telegram/ui/bots/BotDownloads;

.field private final flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field private flickerView:Lorg/telegram/ui/Components/BackupImageView;

.field private flickerViewColor:I

.field private flickerViewColorOverriden:Z

.field private flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

.field private forceHeight:I

.field private hasQRPending:Z

.field private hasUserPermissions:Z

.field private isBackButtonVisible:Z

.field private isFlickeringCenter:Z

.field private isPageLoaded:Z

.field private isRequestingPageOpen:Z

.field private isSettingsButtonVisible:Z

.field private isViewPortByMeasureSuppressed:Z

.field private keyboardFocusable:Z

.field private lastButtonColor:I

.field private lastButtonText:Ljava/lang/String;

.field private lastButtonTextColor:I

.field private lastClickMs:J

.field private lastDialogClosed:J

.field private lastDialogCooldownTime:J

.field private lastDialogType:I

.field private lastExpanded:Z

.field private final lastInsets:Landroid/graphics/Rect;

.field private lastInsetsTopMargin:I

.field private lastPostStoryMs:J

.field private lastQrText:Ljava/lang/String;

.field private lastSecondaryButtonColor:I

.field private lastSecondaryButtonPosition:Ljava/lang/String;

.field private lastSecondaryButtonText:Ljava/lang/String;

.field private lastSecondaryButtonTextColor:I

.field private lastViewportHeightReported:I

.field private lastViewportIsExpanded:Z

.field private lastViewportStateStable:Z

.field private location:Lorg/telegram/ui/bots/BotLocation;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;

.field private mUrl:Ljava/lang/String;

.field private final notifyLocationChecked:Ljava/lang/Runnable;

.field private onCloseListener:Ljava/lang/Runnable;

.field private onPermissionsRequestResultCallback:Ljava/lang/Runnable;

.field private opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

.field private parentActivity:Landroid/app/Activity;

.field private preserving:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private secondaryButtonData:Ljava/lang/String;

.field private secureStorage:Lorg/telegram/ui/bots/BotStorage;

.field private sensors:Lorg/telegram/ui/bots/BotSensors;

.field private shownDialogsCount:I

.field private storage:Lorg/telegram/ui/bots/BotStorage;

.field private final tag:I

.field private viewPortHeightOffset:F

.field private wasFocusable:Z

.field private wasOpenedByBot:Lorg/telegram/ui/bots/WebViewRequestProps;

.field private wasOpenedByLinkIntent:Z

.field private webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

.field private webViewNotAvailable:Z

.field private webViewNotAvailableText:Landroid/widget/TextView;

.field private webViewProgressListener:Landroidx/core/util/Consumer;

.field private webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

.field private webViewScrollListener:Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;


# direct methods
.method public static synthetic $r8$lambda$-hTWcXajH-bvmL0VbPJWVajVlFs(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$26([Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0Uum0RRNC3s0Oa8VRq8PiJYhKGE(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$9(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0X1h_UpxOUfjB-fwZKJ3BSErufc(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$13([Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3HL3cCBEfGVMiw_5W-252KIAGwQ(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$11(Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3hR7U5rF_tVaBFmEgUf9utIEFa8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$14(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3uV12iotRBDF6BS6ArYlbsMUAK4(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$7(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3z8IIk95rVyfaE8F6nllRvdy2pk(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$45(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4-C10TNlLRvPOn6jtLx1CREqP98(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$39(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7NNV2xATtAmrjiE9s5YNP-9wxUA(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$25(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A3sFq5zCefsdoJP3_GEH13awKFw(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$35(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AsABeBJumnNerCtssxj_I0CvwJk(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$8(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BG_xrSk9Xfde91O8uofgkstE34k(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$43(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DjqGFCN8-bj1URTItcMDIp-bCu8(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$37(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GgFxPfsQG96RzDi9nUXAUHb9gHc(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$44()V

    return-void
.end method

.method public static synthetic $r8$lambda$HL6xLvyVIU7zpB4JaKt2CHOZKe4(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$27([Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$I9BtjInkZ7S91unwKoj5Tjb-efU(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$40(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JL9wBXC4VbqwjrStsczikiLW1Tw(Lorg/telegram/ui/web/BotWebViewContainer;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$20(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KrzJ9qpvSbgObA3t2Svq6yCoEL0(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$showDialog$49(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N64pd7JX1t3X24u25mM_KH5D6X4(Lorg/telegram/ui/web/BotWebViewContainer;[ILjava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$31([ILjava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZMdUR_hNlIpvKf5JvMBP-RNTRc(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$10(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QLg-WOeqntRncImNGyrUmTw1lDo(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$loadUrl$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QTSpG4BxHJDSIwUrKkrjl3E7l0g(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;ZILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$21([Ljava/lang/String;ZILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QjqVsRYbcFslo8gc_PhfCwxYmaw(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$restoreStorageKey$47(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R4eoyQ9TTV7YiArbqcaAUg8IaEk(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$new$48()V

    return-void
.end method

.method public static synthetic $r8$lambda$Rk3Hev5XR6tejZuGWTPryJOHd2I(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$notifyEvent$4(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VUkfzgrBQGiCdvE-iQs6dDj5VqY(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$34(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XMoFvfSeQhNLORKCQcQzsdVGaGY(Lorg/telegram/ui/web/BotWebViewContainer;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$17(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X_G7j-OeFfLqTHuQq6HQF0wru5s(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$30(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XawjqnOMWj2dWZyqrDo6-596ovY(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$12([Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_aLh5iCAVez6QRAgRHDQk_RRrj4(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$18(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aFkDSwMwgQ_RobZbXw-IMBrGsZQ(Lorg/telegram/ui/web/BotWebViewContainer;Landroidx/core/util/Consumer;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$runWithPermissions$0(Landroidx/core/util/Consumer;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bHRkHadvdZhM9cktw4YyvQ8d750([Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$28([Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dRu-EiMpC7HR5X247bU2_DGUNRU(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$33(Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dqCKWSoB4prWel2rx5OrnqEppjA(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$19(Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g91Jb1rAPEDPMnTGjm1EgXYMIU4(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$38(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hgiq9ViM8PhsNBwT_MlP6LONOhQ([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$15([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hldEizPj3DzLqaHt9ylkEY_RJqk(Lorg/telegram/ui/web/BotWebViewContainer;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$evaluateJs$3(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$luRMeqQOzabgvSQPl0FC1Gt4ZWk([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$23([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lzvVO0HqDPtr9U4n463LT08igoY(Ljava/io/File;[ILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$32(Ljava/io/File;[ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qBjuMab5u8TdXr0r22vuHRnm394(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$41(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qXVPCWhcK_BcjU5i8tmjJBMafWg(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$ryVqsMTEFj6S29IG2eI8GPCKJ5g(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$16(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPLw5U6nu2hq6rKxd4yXtUgkOC8(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$36(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t_cI665Ae5DuJPcdAhi9bMd8wfI(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$42(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$thZanfEQDubuxTnEMqKk-iSry7g(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$29(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxtS16ugS0e9n1sauv7SDOmGZ14(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$46(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yOqh1KO2Ez8hJre7SRPSUr2-D0I(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$6(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yppCkL3c8nWAT3OIteCr5HwtJ_s(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$reload$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ywft6cx0MkucUdSrK0pK1UFccBE(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$22(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zbV3S1w16GI4NDmlJBxL1i2Z-1I(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->lambda$onEventReceived$5(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonColor:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonTextColor:I

    const-string v3, ""

    iput-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonColor:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonTextColor:I

    iput-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonText:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonPosition:Ljava/lang/String;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->forceHeight:I

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsets:Landroid/graphics/Rect;

    iput v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsetsTopMargin:I

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    iput-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->notifyLocationChecked:Ljava/lang/Runnable;

    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogType:I

    iput v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    sget v2, Lorg/telegram/ui/web/BotWebViewContainer;->tags:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lorg/telegram/ui/web/BotWebViewContainer;->tags:I

    iput v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->tag:I

    iput-boolean p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string p2, "created new webview container"

    invoke-virtual {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    :cond_0
    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const/16 p2, 0x99

    const/16 p4, 0xcc

    invoke-virtual {v0, p3, p2, p4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setColors(III)V

    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$1;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    invoke-direct {p0, p4}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result p4

    iput p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 p4, 0x30

    const/4 v0, -0x2

    invoke-static {v1, v0, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    sget p1, Lorg/telegram/messenger/R$string;->BotWebViewNotAvailablePlaceholder:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    invoke-virtual {p3, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    invoke-static {v1, v0, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/web/BotWebViewContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isFlickeringCenter:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/web/BotWebViewContainer;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    return-wide v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/web/BotWebViewContainer;J)J
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    return-wide p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/web/BotWebViewContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastQrText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/web/BotWebViewContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->hasQRPending:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->onEventReceived(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->onWebEventReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1508()I
    .locals 2

    sget v0, Lorg/telegram/ui/web/BotWebViewContainer;->tags:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/web/BotWebViewContainer;->tags:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/web/BotWebViewContainer;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/web/BotWebViewContainer;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/web/BotWebViewContainer;)Landroidx/core/util/Consumer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProgressListener:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->runWithPermissions([Ljava/lang/String;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/web/BotWebViewContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->hasUserPermissions:Z

    return p1
.end method

.method static synthetic access$3500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->tonsite2magic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->openQrScanActivity()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/web/BotWebViewContainer;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private buildThemeParams()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "theme_params"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method private static capitalizeFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkPermissions([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/widget/TextViewCompat$OreoCallback$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private clearStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "error"

    const-string v1, "req_id"

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotStorage;->clear()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "UNKNOWN_ERROR"

    invoke-static {v1, p1, v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createBiometry()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/BotBiometry;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotBiometry;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotBiometry;->load()V

    :goto_0
    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private getColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public static getMainButtonRippleColor(I)I
    .locals 4

    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/high16 p0, 0x12000000

    goto :goto_0

    :cond_0
    const p0, 0x16ffffff

    :goto_0
    return p0
.end method

.method public static getMainButtonRippleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->getMainButtonRippleColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "KEY_INVALID"

    const-string v1, "error"

    const-string v2, "req_id"

    if-eqz p1, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_1

    :catch_0
    invoke-static {v2, p2, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1, v3}, Lorg/telegram/ui/bots/BotStorage;->getKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-boolean p1, p1, Lorg/telegram/ui/bots/BotStorage;->secured:Z

    if-eqz p1, :cond_2

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v7, :cond_2

    const-string v4, "req_id"

    const-string v6, "value"

    const-string v8, "can_restore"

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_2
    const-string p1, "value"

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2, p2, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p2, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_2
    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "UNKNOWN_ERROR"

    invoke-static {v2, p1, v1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private ignoreDialog(I)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->blockedDialogsUntil:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->blockedDialogsUntil:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogType:I

    const/4 v2, 0x0

    if-ne v0, p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    const/4 v0, 0x3

    if-le p1, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->blockedDialogsUntil:J

    iput v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    return v1

    :cond_2
    return v2
.end method

.method public static isTonsite(Landroid/net/Uri;)Z
    .locals 3

    .line 0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tonsite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, ".ton"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, ".adnl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static isTonsite(Ljava/lang/String;)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->isTonsite(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$evaluateJs$3(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->checkCreateWebView()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$loadUrl$2(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->hasUserPermissions:Z

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->checkCreateWebView()V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    return-void
.end method

.method private synthetic lambda$new$48()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotLocation;->checkObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "location_checked"

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static synthetic lambda$notifyEvent$4(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.Telegram.WebView.receiveEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->evaluateJS(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$10(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda40;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$11(Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "allowed"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$12([Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda51;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$13([Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    new-instance p3, Lorg/telegram/tgnet/tl/TL_bots$allowSendMessage;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_bots$allowSendMessage;-><init>()V

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/tl/TL_bots$allowSendMessage;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, p3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static synthetic lambda$onEventReceived$14(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$onEventReceived$15([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "write_access_requested"

    invoke-static {p1, p2, p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$16(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "status"

    const-string v0, "allowed"

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "write_access_requested"

    invoke-static {p2, p3, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "cancelled"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance p4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewRequestWriteTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p4

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewRequestWriteMessage:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p4

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewRequestAllow:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;)V

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p4

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewRequestDontAllow:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda45;

    invoke-direct {v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda45;-><init>()V

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda46;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda46;-><init>([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->showDialog(ILorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onEventReceived$17(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance v6, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda41;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$18(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "req_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/json/JSONTokener;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "result"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "error"

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    const-string p1, "custom_method_invoked"

    invoke-static {p4, p5, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError()V

    :goto_2
    return-void
.end method

.method private synthetic lambda$onEventReceived$19(Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda36;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$20(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 11

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZI)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    const-string v2, "sent"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phone_requested"

    invoke-static {p1, p2, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$21([Ljava/lang/String;ZILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 9

    const/4 p6, 0x0

    const/4 v0, 0x0

    aput-object v0, p1, p6

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    iget p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide p5, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda33;

    invoke-direct {p2, p0, p3, p4}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-virtual {p1, p5, p6, p2}, Lorg/telegram/messenger/MessagesController;->unblockPeer(JLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZI)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "status"

    const-string p5, "sent"

    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "phone_requested"

    invoke-static {p3, p4, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onEventReceived$22(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$onEventReceived$23([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 3

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "status"

    aget-object p0, p0, v0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "phone_requested"

    invoke-static {p1, p2, p0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$24()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$25(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    return-void
.end method

.method private synthetic lambda$onEventReceived$26([Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    const/4 p2, 0x0

    aget-object p3, p1, p2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    aput-object v0, p1, p2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda37;

    invoke-direct {p2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/bots/BotBiometry;->requestToken(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$27([Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    aget-object p3, p1, p2

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    aput-object p3, p1, p2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    iput-boolean p2, p1, Lorg/telegram/ui/bots/BotBiometry;->disabled:Z

    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    return-void
.end method

.method private static synthetic lambda$onEventReceived$28([Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    aput-object v0, p0, p1

    :cond_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$29(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "authorized"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "failed"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "token"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "biometry_auth_requested"

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$onEventReceived$30(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "removed"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "updated"

    goto :goto_0

    :cond_1
    const-string p1, "failed"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "biometry_token_updated"

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$onEventReceived$31([ILjava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v11, p6

    const/16 v18, 0x4

    aget v0, p1, v18

    const/16 v19, 0x2

    const/4 v12, 0x0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    aget v10, p1, v0

    aget v9, p1, v19

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    if-le v10, v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    if-le v9, v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    move/from16 v16, v2

    goto :goto_1

    :cond_1
    move/from16 v16, v9

    :goto_1
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-string v3, "jpg"

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v8

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    sget v17, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v28, v7

    move/from16 v7, v22

    move-object/from16 v29, v8

    move-object/from16 v8, v23

    move/from16 v30, v9

    move-object/from16 v9, v24

    move/from16 v31, v10

    move-object/from16 v10, v25

    move-wide/from16 v11, v26

    move/from16 v13, v17

    move/from16 v14, v20

    move v15, v0

    move-object/from16 v17, v21

    invoke-direct/range {v2 .. v17}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    move-object/from16 v0, v28

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFirstFrame(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    if-eqz v3, :cond_2

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v5, v29

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x50

    invoke-virtual {v3, v0, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v12, v2

    goto :goto_3

    :cond_2
    move-object/from16 v5, v29

    :goto_2
    move-object v12, v5

    :goto_3
    if-nez v12, :cond_3

    move-object v12, v2

    goto :goto_4

    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    :goto_4
    aget v0, p1, v18

    int-to-long v3, v0

    move-object/from16 v5, p2

    invoke-static {v5, v12, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromVideoShoot(Ljava/io/File;Ljava/lang/String;J)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    move/from16 v3, v31

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    move/from16 v3, v30

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    goto :goto_5

    :cond_4
    move-object v2, v12

    move-object v5, v15

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v5, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    :goto_5
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    const-wide/16 v4, 0x1f4

    if-lez v3, :cond_5

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    if-gtz v3, :cond_6

    :cond_5
    move-object/from16 v2, p3

    goto :goto_6

    :cond_6
    move-object/from16 v3, p4

    if-eqz v3, :cond_7

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->caption:Ljava/lang/CharSequence;

    :cond_7
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    :cond_8
    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    const/4 v6, 0x7

    iput-byte v6, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v6, -0x1

    iput-byte v6, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    iput v6, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    invoke-direct {v6}, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;-><init>()V

    iput-object v6, v3, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->linkSettings:Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;

    move-object/from16 v7, p5

    iput-object v7, v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->url:Ljava/lang/String;

    move-object/from16 v7, p6

    if-eqz v7, :cond_9

    iget v8, v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->flags:I

    iput-object v7, v6, Lorg/telegram/ui/Components/Paint/Views/LinkPreview$WebPagePreview;->name:Ljava/lang/String;

    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v3, v1, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3, v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openRepost(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    move-object/from16 v2, p3

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    return-void

    :goto_6
    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    return-void
.end method

.method private static synthetic lambda$onEventReceived$32(Ljava/io/File;[ILjava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$33(Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    const-wide/16 p3, 0x1f4

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    return-void

    :cond_0
    const/16 v0, 0xb

    new-array v0, v0, [I

    new-instance v9, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda47;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[ILjava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda48;

    invoke-direct {p3, p1, v0, v9}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda48;-><init>(Ljava/io/File;[ILjava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onEventReceived$34(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 8

    new-instance v7, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda35;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/io/File;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$35(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "home_screen_added"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string p1, "error"

    const-string v0, "UNSUPPORTED"

    invoke-static {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "home_screen_failed"

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$36(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "emoji_status_set"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onEmojiStatusSet(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_0
    const-string p2, "error"

    invoke-static {p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "emoji_status_failed"

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$37(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEmojiStatusAccess(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "allowed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onEmojiStatusGranted(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$38(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "location_requested"

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$39(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onLocationGranted(Z)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda39;

    invoke-direct {p2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/BotLocation;->requestObject(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$40(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "location_requested"

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$41(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string v0, "file_download_requested"

    const-string v1, "status"

    if-nez p3, :cond_0

    const-string p1, "cancelled"

    :goto_0
    invoke-static {v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->downloads:Lorg/telegram/ui/bots/BotDownloads;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/bots/BotDownloads;->download(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    const-string p1, "downloading"

    goto :goto_0
.end method

.method private synthetic lambda$onEventReceived$42(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-nez p1, :cond_0

    const-string p1, "status"

    const-string p2, "cancelled"

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "file_download_requested"

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, v0, v1}, Lorg/telegram/ui/bots/BotDownloads;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$43(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda38;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEventReceived$44()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseToTabs()V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->dismissAllWeb()V

    return-void
.end method

.method private static synthetic lambda$onEventReceived$45(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/util/ArrayList;)V
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;->container:Lorg/telegram/ui/web/BotWebViewContainer;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSharedTo(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$46(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "prepared_message_sent"

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onOpenBackFromTabs()V

    :cond_0
    new-instance p2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda43;

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/util/ArrayList;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    const-string p1, "error"

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "prepared_message_failed"

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$5(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    const-string p3, "popup_closed"

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$6(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    const-string p3, "popup_closed"

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$7(Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    const-string p3, "popup_closed"

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "button_id"

    iget-object p1, p1, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->id:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventReceived$8(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "popup_closed"

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogClosed:J

    return-void
.end method

.method private synthetic lambda$onEventReceived$9(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "failed"

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {p1, p3, p2, p4}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppOpenInvoice(Lorg/telegram/tgnet/TLRPC$InputInvoice;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$reload$1()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isSettingsButtonVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isSettingsButtonVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSetSettingsButtonVisible(Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->checkCreateWebView()V

    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->hasUserPermissions:Z

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->reload()V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->sensors:Lorg/telegram/ui/bots/BotSensors;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotSensors;->stopAll()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$restoreStorageKey$47(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    const-string v1, "req_id"

    if-nez p6, :cond_0

    const-string p3, "RESTORE_CANCELLED"

    invoke-static {v1, p2, v0, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p3, p6}, Lorg/telegram/ui/bots/BotStorage;->restoreFrom(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lorg/telegram/ui/bots/BotStorage;->getKey(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "value"

    invoke-static {v1, p2, p1, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p5, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p2, v0, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private synthetic lambda$runWithPermissions$0(Landroidx/core/util/Consumer;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->checkPermissions([Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showDialog$49(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public static magic2tonsite(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/telegram/ui/web/BotWebViewContainer;->rotatedTONHosts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->tonProxyAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/telegram/ui/web/BotWebViewContainer;->rotatedTONHosts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    return-object p0

    :cond_3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "tonsite"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v2}, Lorg/telegram/messenger/browser/Browser;->replace(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method private notifyBiometryReceived()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->createBiometry()V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v1, "biometry_info_received"

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotBiometry;->getStatus()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static notifyEvent(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.Telegram.WebView.receiveEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->evaluateJs(Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyEvent_fast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.Telegram.WebView.receiveEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->evaluateJs(Ljava/lang/String;Z)V

    return-void
.end method

.method private static obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onEventReceived(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 45

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "file_download_requested"

    const-string v3, "position"

    const-string v4, "android.permission.CAMERA"

    const-string v5, "prepared_message_failed"

    const-string v6, "MESSAGE_EXPIRED"

    const-string v8, "data"

    const-string v9, "secure_storage_failed"

    const-string v10, "fullscreen_changed"

    const-string v11, "is_fullscreen"

    const-string v12, "has_shine_effect"

    const-string v13, "is_progress_visible"

    const-string v14, "is_active"

    const-string v15, "JSON Parse error"

    move-object/from16 v16, v2

    const-string v2, "failed"

    move-object/from16 v17, v3

    const-string v3, "onEventReceived "

    move-object/from16 v21, v4

    const-string v4, "url"

    move-object/from16 v22, v4

    const-string v4, "secure_storage_cleared"

    move-object/from16 v23, v4

    const-string v4, "clipboard_text_received"

    move-object/from16 v24, v4

    iget-boolean v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v4, :cond_c5

    iget-object v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-nez v4, :cond_1

    goto/16 :goto_56

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "web_app_expand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x3d

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "web_app_request_write_access"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x3c

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "web_app_set_background_color"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0x3b

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "web_app_request_safe_area"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x3a

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "web_app_set_header_color"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/16 v3, 0x39

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "web_app_set_bottom_bar_color"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/16 v3, 0x38

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "web_app_biometry_update_token"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/16 v3, 0x37

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "web_app_start_device_orientation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/16 v3, 0x36

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "web_app_check_home_screen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    const/16 v3, 0x35

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "web_app_setup_settings_button"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x34

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "web_app_setup_swipe_behavior"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x33

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "web_app_setup_main_button"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x32

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "web_app_trigger_haptic_feedback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x31

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "web_app_biometry_request_access"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x30

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "web_app_setup_back_button"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x2f

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "web_app_open_location_settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x2e

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "web_app_exit_fullscreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x2d

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "web_app_secure_storage_save_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x2c

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "web_app_switch_inline_query"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x2b

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "web_app_request_fullscreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x2a

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "web_app_add_to_home_screen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x29

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "web_app_request_content_safe_area"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x28

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "web_app_data_send"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x27

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "web_app_send_prepared_message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x26

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "web_app_stop_accelerometer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x25

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "web_app_start_accelerometer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0x24

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "web_app_device_storage_clear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x23

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "web_app_secure_storage_clear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x22

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "web_app_stop_gyroscope"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "web_app_hide_keyboard"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "web_app_read_text_from_clipboard"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "web_app_ready"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "web_app_close"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "web_app_start_gyroscope"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "web_app_request_location"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "web_app_share_to_story"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "web_app_secure_storage_restore_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "web_app_open_tg_link"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "web_app_allow_scroll"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "web_app_toggle_orientation_lock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "web_app_biometry_request_auth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "web_app_device_storage_get_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "web_app_device_storage_save_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "web_app_stop_device_orientation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "web_app_request_emoji_status_access"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "web_app_request_viewport"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "web_app_biometry_open_settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "web_app_check_location"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "web_app_secure_storage_get_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_31
    const-string v3, "web_app_request_theme"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_32
    const-string v3, "web_app_request_phone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_33
    const-string v3, "web_app_open_scan_qr_popup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_34
    const-string v3, "web_app_setup_closing_behavior"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_35
    const-string v3, "web_app_setup_secondary_button"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_36
    const-string v3, "web_app_set_emoji_status"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_0

    :cond_38
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_37
    const-string v3, "web_app_open_invoice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_0

    :cond_39
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_38
    const-string v3, "web_app_open_popup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_39
    const-string v3, "web_app_request_file_download"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3a
    const-string v3, "web_app_open_link"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3b
    const-string v3, "web_app_biometry_get_info"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3c
    const-string v3, "web_app_close_scan_qr_popup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3d
    const-string v3, "web_app_invoke_custom_method"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/4 v3, 0x0

    :goto_1
    const-string v4, "device_storage_failed"

    move-object/from16 v29, v4

    const-string v4, "UNSUPPORTED"

    move-object/from16 v30, v4

    const-string v4, "refresh_rate"

    const-wide/16 v31, 0x3e8

    move-object/from16 v33, v5

    const-string v5, "reason"

    move-object/from16 v34, v6

    const-string v6, "req_id"

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    const-string v8, "text_color"

    const-string v9, "text"

    move-object/from16 v37, v6

    const-string v6, "is_visible"

    move-object/from16 v38, v10

    const-string v10, "cancelled"

    move-object/from16 v39, v11

    const-string v11, "color"

    move-object/from16 v40, v12

    const-string v12, "status"

    move-object/from16 v41, v13

    const-string v13, "error"

    const-wide/16 v42, 0x2710

    move-object/from16 v44, v13

    const/4 v13, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown webapp event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto/16 :goto_54

    :pswitch_0
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppExpand()V

    goto/16 :goto_54

    :pswitch_1
    const/4 v1, 0x3

    invoke-direct {v7, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->ignoreDialog(I)Z

    move-result v0

    if-eqz v0, :cond_40

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "write_access_requested"

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_40
    iget v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v2, Lorg/telegram/tgnet/tl/TL_bots$canSendMessage;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_bots$canSendMessage;-><init>()V

    iget v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_bots$canSendMessage;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;

    invoke-direct {v4, v7, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    :goto_3
    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_54

    :pswitch_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const-string v2, "#ffffff"

    invoke-virtual {v0, v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSetBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_54

    :catch_1
    move-exception v0

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_54

    :pswitch_3
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsets:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeInsets(Landroid/graphics/Rect;Z)V

    goto/16 :goto_54

    :pswitch_4
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSetActionBarColor(IIZ)V

    goto/16 :goto_54

    :cond_41
    const-string v1, "color_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4b676917

    if-eq v1, v2, :cond_43

    const v2, -0xc9046ac

    if-eq v1, v2, :cond_42

    goto :goto_5

    :cond_42
    const-string v1, "secondary_bg_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    goto :goto_6

    :cond_43
    const-string v1, "bg_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x0

    goto :goto_6

    :cond_44
    :goto_5
    const/4 v0, -0x1

    :goto_6
    if-eqz v0, :cond_46

    const/4 v1, 0x1

    if-eq v0, v1, :cond_45

    const/4 v4, -0x1

    goto :goto_8

    :cond_45
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    :goto_7
    move v4, v0

    goto :goto_8

    :cond_46
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    goto :goto_7

    :goto_8
    if-ltz v4, :cond_c3

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v4, v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSetActionBarColor(IIZ)V

    goto/16 :goto_54

    :pswitch_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_9

    :cond_47
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_9
    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v1, :cond_c3

    invoke-interface {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSetNavigationBarColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_54

    :pswitch_6
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :catch_2
    nop

    :goto_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/web/BotWebViewContainer;->createBiometry()V

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    if-nez v0, :cond_48

    return-void

    :cond_48
    iget-boolean v3, v0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    if-nez v3, :cond_49

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "biometry_token_updated"

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_b
    return-void

    :cond_49
    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda15;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;)V

    invoke-virtual {v0, v13, v1, v2}, Lorg/telegram/ui/bots/BotBiometry;->updateToken(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_54

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    instance-of v0, v0, Lorg/json/JSONException;

    if-eqz v0, :cond_4a

    invoke-direct {v7, v15}, Lorg/telegram/ui/web/BotWebViewContainer;->error(Ljava/lang/String;)V

    goto :goto_c

    :cond_4a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError()V

    :goto_c
    return-void

    :pswitch_7
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v31

    const-string v1, "need_absolute"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-wide/from16 v14, v31

    goto :goto_d

    :catch_5
    nop

    move-wide/from16 v14, v31

    const/4 v4, 0x0

    :goto_d
    const-wide/16 v16, 0x3e8

    const-wide/16 v18, 0x14

    invoke-static/range {v14 .. v19}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v1

    if-eqz v0, :cond_4b

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/ui/bots/BotSensors;->startOrientation(ZJ)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "device_orientation_started"

    :goto_e
    invoke-direct {v7, v0, v13}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_54

    :cond_4b
    move-object/from16 v0, v30

    move-object/from16 v2, v44

    goto/16 :goto_3e

    :pswitch_8
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4d

    iget v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v3, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->isShortcutAdded(JI)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "added"

    goto :goto_f

    :cond_4c
    const-string v0, "missed"

    goto :goto_f

    :cond_4d
    const-string v0, "unsupported"

    :goto_f
    invoke-static {v12, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "home_screen_checked"

    :goto_10
    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_54

    :pswitch_9
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isSettingsButtonVisible:Z

    if-eq v0, v1, :cond_c3

    iput-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isSettingsButtonVisible:Z

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSetSettingsButtonVisible(Z)V

    goto/16 :goto_54

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :pswitch_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const-string v2, "allow_vertical_swipe"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSwipingBehavior(Z)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_54

    :pswitch_b
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v14, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    iget-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    const/16 v16, 0x1

    goto :goto_11

    :cond_4e
    const/16 v16, 0x0

    :goto_11
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_12

    :cond_4f
    iget v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonColor:I

    :goto_12
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_13
    move-object/from16 v10, v41

    const/4 v5, 0x0

    goto :goto_14

    :cond_50
    iget v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonTextColor:I

    goto :goto_13

    :goto_14
    invoke-virtual {v0, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_51

    if-eqz v16, :cond_51

    move-object/from16 v12, v40

    const/16 v21, 0x1

    goto :goto_15

    :cond_51
    move-object/from16 v12, v40

    const/16 v21, 0x0

    :goto_15
    invoke-virtual {v0, v12, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_52

    if-eqz v16, :cond_52

    const/16 v22, 0x1

    goto :goto_16

    :cond_52
    const/16 v22, 0x0

    :goto_16
    iput v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonColor:I

    iput v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonTextColor:I

    iput-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastButtonText:Ljava/lang/String;

    iput-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->buttonData:Ljava/lang/String;

    iget-object v15, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-object/from16 v18, v3

    move/from16 v19, v2

    move/from16 v20, v4

    invoke-interface/range {v15 .. v22}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSetupMainButton(ZZLjava/lang/String;IIZZ)V

    goto/16 :goto_54

    :pswitch_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x469ec2ba

    if-eq v2, v3, :cond_55

    const v3, 0xb8209c3

    if-eq v2, v3, :cond_54

    const v3, 0x237a88eb

    if-eq v2, v3, :cond_53

    goto :goto_17

    :cond_53
    const-string v2, "notification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x1

    goto :goto_18

    :cond_54
    const-string v2, "selection_change"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x2

    goto :goto_18

    :cond_55
    const-string v2, "impact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 v1, 0x0

    goto :goto_18

    :cond_56
    :goto_17
    const/4 v1, -0x1

    :goto_18
    if-eqz v1, :cond_60

    const/4 v2, 0x1

    if-eq v1, v2, :cond_58

    const/4 v2, 0x2

    if-eq v1, v2, :cond_57

    goto/16 :goto_1e

    :cond_57
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->SELECTION_CHANGE:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    :goto_19
    move-object v13, v0

    goto/16 :goto_1e

    :cond_58
    const-string v1, "notification_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6f4abffd

    if-eq v1, v2, :cond_5b

    const v2, 0x5c4d208

    if-eq v1, v2, :cond_5a

    const v2, 0x4305af9c

    if-eq v1, v2, :cond_59

    goto :goto_1a

    :cond_59
    const-string v1, "warning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v4, 0x2

    goto :goto_1b

    :cond_5a
    move-object/from16 v2, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v4, 0x0

    goto :goto_1b

    :cond_5b
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v4, 0x1

    goto :goto_1b

    :cond_5c
    :goto_1a
    const/4 v4, -0x1

    :goto_1b
    if-eqz v4, :cond_5f

    const/4 v1, 0x1

    if-eq v4, v1, :cond_5e

    const/4 v0, 0x2

    if-eq v4, v0, :cond_5d

    goto/16 :goto_1e

    :cond_5d
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_WARNING:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_19

    :cond_5e
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_SUCCESS:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_19

    :cond_5f
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->NOTIFICATION_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto :goto_19

    :cond_60
    const-string v1, "impact_style"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_1c

    :sswitch_3e
    const-string v1, "rigid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v4, 0x3

    goto :goto_1d

    :sswitch_3f
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v4, 0x0

    goto :goto_1d

    :sswitch_40
    const-string v1, "heavy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v4, 0x2

    goto :goto_1d

    :sswitch_41
    const-string v1, "soft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v4, 0x4

    goto :goto_1d

    :sswitch_42
    const-string v1, "medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v4, 0x1

    goto :goto_1d

    :cond_61
    :goto_1c
    const/4 v4, -0x1

    :goto_1d
    if-eqz v4, :cond_66

    const/4 v1, 0x1

    if-eq v4, v1, :cond_65

    const/4 v0, 0x2

    if-eq v4, v0, :cond_64

    const/4 v1, 0x3

    if-eq v4, v1, :cond_63

    const/4 v0, 0x4

    if-eq v4, v0, :cond_62

    goto :goto_1e

    :cond_62
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_SOFT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto/16 :goto_19

    :cond_63
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_RIGID:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto/16 :goto_19

    :cond_64
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_HEAVY:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto/16 :goto_19

    :cond_65
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_MEDIUM:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto/16 :goto_19

    :cond_66
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->IMPACT_LIGHT:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    goto/16 :goto_19

    :goto_1e
    if-eqz v13, :cond_c3

    invoke-virtual {v13}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_54

    :pswitch_d
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_1f

    :catch_7
    nop

    :goto_1f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/web/BotWebViewContainer;->createBiometry()V

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    if-nez v0, :cond_67

    return-void

    :cond_67
    iget-boolean v1, v0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    if-eqz v1, :cond_68

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    return-void

    :cond_68
    iget-boolean v2, v0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    if-nez v2, :cond_6a

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda23;

    invoke-direct {v0, v7}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    sget v1, Lorg/telegram/messenger/R$string;->BotAllowBiometryTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->BotAllowBiometryMessage:I

    iget-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_20

    :cond_69
    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v1, Lorg/telegram/messenger/R$string;->BotAllowBiometryMessage:I

    iget-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :goto_20
    sget v1, Lorg/telegram/messenger/R$string;->Allow:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda24;

    invoke-direct {v3, v7, v2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda25;

    invoke-direct {v3, v7, v2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda26;

    invoke-direct {v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda26;-><init>([Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_54

    :cond_6a
    if-nez v1, :cond_c1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/bots/BotBiometry;->access_requested:Z

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotBiometry;->save()V

    goto/16 :goto_53

    :pswitch_e
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible:Z

    if-eq v0, v1, :cond_c3

    iput-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible:Z

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSetBackButtonVisible(Z)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_54

    :pswitch_f
    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_6d

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_6d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v42

    if-lez v2, :cond_6b

    goto :goto_21

    :cond_6b
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-nez v1, :cond_6c

    goto :goto_21

    :cond_6c
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const-string v0, "botPermissionLocation"

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->scrollToFragmentRow(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/String;)V

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_c3

    goto/16 :goto_41

    :cond_6d
    :goto_21
    return-void

    :pswitch_10
    move-object/from16 v2, v44

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onFullscreenRequested(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_71

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v1, v39

    invoke-static {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v3, v38

    :goto_22
    invoke-direct {v7, v3, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_54

    :pswitch_11
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_6e

    return-void

    :cond_6e
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_6f

    new-instance v0, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v15, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    :cond_6f
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    const-string v2, "secure_storage_key_saved"

    move-object/from16 v3, v36

    :goto_23
    invoke-direct {v7, v0, v1, v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->setStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    :pswitch_12
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "chat_types"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    :goto_24
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_70

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    add-int/2addr v4, v3

    goto :goto_24

    :cond_70
    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    iget-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    const-string v4, "query"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSwitchInlineQuery(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/util/List;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_54

    :pswitch_13
    move-object/from16 v3, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v44

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onFullscreenRequested(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_71

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_22

    :cond_71
    invoke-static {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "fullscreen_failed"

    goto/16 :goto_10

    :pswitch_14
    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_74

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_74

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v42

    if-lez v2, :cond_72

    goto :goto_25

    :cond_72
    iget v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v3, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->isShortcutAdded(JI)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "home_screen_added"

    invoke-direct {v7, v0, v13}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_73
    iget v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v3, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda27;

    invoke-direct {v4, v7}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaDataController;->installShortcut(JILorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_54

    :cond_74
    :goto_25
    return-void

    :pswitch_15
    iget v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsetsTopMargin:I

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeContentInsets(IZ)V

    goto/16 :goto_54

    :pswitch_16
    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-object/from16 v2, v35

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSendWebViewData(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_54

    :pswitch_17
    move-object/from16 v2, v44

    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_77

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_77

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v42

    if-lez v0, :cond_75

    goto :goto_26

    :cond_75
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    move-object/from16 v1, v34

    invoke-static {v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v3, v33

    invoke-direct {v7, v3, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_76
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v13, v7, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v14, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda28;

    invoke-direct {v14, v7}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    new-instance v15, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda29;

    move-object/from16 v0, p1

    invoke-direct {v15, v7, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;)V

    invoke-static/range {v8 .. v15}, Lorg/telegram/ui/bots/BotShareSheet;->share(Landroid/content/Context;IJLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback2;)V

    goto/16 :goto_54

    :catch_8
    move-exception v0

    move-object/from16 v3, v33

    move-object/from16 v1, v34

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-static {v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v7, v3, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_77
    :goto_26
    return-void

    :pswitch_18
    move-object/from16 v2, v44

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotSensors;->stopAccelerometer()Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "accelerometer_stopped"

    goto/16 :goto_e

    :cond_78
    move-object/from16 v0, v30

    goto :goto_29

    :pswitch_19
    move-object/from16 v2, v44

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    :try_start_e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v31
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    :goto_27
    move-wide/from16 v14, v31

    goto :goto_28

    :catch_9
    nop

    goto :goto_27

    :goto_28
    const-wide/16 v16, 0x3e8

    const-wide/16 v18, 0x14

    invoke-static/range {v14 .. v19}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    if-eqz v0, :cond_78

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/bots/BotSensors;->startAccelerometer(J)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "accelerometer_started"

    goto/16 :goto_e

    :goto_29
    invoke-static {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "accelerometer_failed"

    goto/16 :goto_10

    :pswitch_1a
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_79

    return-void

    :cond_79
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_7a

    new-instance v0, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    :cond_7a
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    const-string v2, "device_storage_cleared"

    move-object/from16 v3, v29

    invoke-direct {v7, v0, v1, v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->clearStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    :pswitch_1b
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_7b

    return-void

    :cond_7b
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_7c

    new-instance v0, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v15, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    :cond_7c
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    move-object/from16 v2, v23

    invoke-direct {v7, v0, v1, v2, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->clearStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    :pswitch_1c
    move-object/from16 v0, v30

    move-object/from16 v2, v44

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v1

    if-eqz v1, :cond_85

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotSensors;->stopGyroscope()Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v0, "gyroscope_stopped"

    goto/16 :goto_e

    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7d

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_7d
    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_54

    :pswitch_1e
    move-object/from16 v2, v35

    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v37

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->isClipboardAvailable()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v4, v8

    cmp-long v1, v4, v42

    if-lez v1, :cond_7e

    goto :goto_2c

    :cond_7e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "clipboard"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_7f
    const-string v1, ""

    :goto_2a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_2b
    move-object/from16 v1, v24

    goto :goto_2d

    :cond_80
    :goto_2c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2b

    :goto_2d
    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_54

    :pswitch_1f
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->setPageLoaded(Ljava/lang/String;Z)V

    goto/16 :goto_54

    :pswitch_20
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "return_back"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_2e

    :catch_a
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_2e
    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v1, v13}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_c3

    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->wasOpenedByLinkIntent:Z

    if-eqz v0, :cond_82

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_82

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_81

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_81
    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_c3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto/16 :goto_54

    :cond_82
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->wasOpenedByBot:Lorg/telegram/ui/bots/WebViewRequestProps;

    if-eqz v0, :cond_c3

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v0

    if-eqz v0, :cond_c3

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x0

    :goto_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_84

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->wasOpenedByBot:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-object v5, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/bots/WebViewRequestProps;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v5, v7, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eq v3, v5, :cond_83

    move-object v13, v2

    goto :goto_30

    :cond_83
    const/4 v2, 0x1

    add-int/2addr v4, v2

    goto :goto_2f

    :cond_84
    :goto_30
    if-eqz v13, :cond_c3

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    goto/16 :goto_54

    :pswitch_21
    move-object/from16 v0, v30

    move-object/from16 v2, v44

    iget-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v3}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v3

    :try_start_11
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v31
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    :goto_31
    move-wide/from16 v14, v31

    goto :goto_32

    :catch_b
    nop

    goto :goto_31

    :goto_32
    const-wide/16 v16, 0x3e8

    const-wide/16 v18, 0x14

    invoke-static/range {v14 .. v19}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v4

    if-eqz v3, :cond_85

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/bots/BotSensors;->startGyroscope(J)Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v0, "gyroscope_started"

    goto/16 :goto_e

    :cond_85
    invoke-static {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "gyroscope_failed"

    goto/16 :goto_10

    :pswitch_22
    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_89

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_86

    goto :goto_33

    :cond_86
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    if-nez v0, :cond_87

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/BotLocation;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotLocation;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->notifyLocationChecked:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotLocation;->listen(Ljava/lang/Runnable;)V

    :cond_87
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotLocation;->granted()Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda30;

    invoke-direct {v1, v7}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotLocation;->request(Lorg/telegram/messenger/Utilities$Callback2;)V

    goto/16 :goto_54

    :cond_88
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda7;

    invoke-direct {v1, v7}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotLocation;->requestObject(Lorg/telegram/messenger/Utilities$Callback;)V

    goto/16 :goto_54

    :cond_89
    :goto_33
    return-void

    :pswitch_23
    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_8e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v42

    if-gtz v0, :cond_8e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastPostStoryMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-gez v0, :cond_8a

    goto/16 :goto_37

    :cond_8a
    const-wide/16 v2, 0x0

    iput-wide v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastPostStoryMs:J

    :try_start_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "media_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    :try_start_13
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    :try_start_14
    const-string v3, "widget_link"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_8b

    move-object/from16 v3, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    :try_start_15
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    move-object v6, v0

    move-object v0, v1

    move-object v4, v2

    move-object v5, v3

    goto :goto_36

    :catch_c
    move-exception v0

    goto :goto_35

    :catch_d
    move-exception v0

    move-object v3, v13

    goto :goto_35

    :cond_8b
    move-object v0, v1

    move-object v4, v2

    move-object v5, v13

    move-object v6, v5

    goto :goto_36

    :catch_e
    move-exception v0

    move-object v2, v13

    :goto_34
    move-object v3, v2

    goto :goto_35

    :catch_f
    move-exception v0

    move-object v1, v13

    move-object v2, v1

    goto :goto_34

    :goto_35
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    move-object v4, v2

    move-object v5, v3

    move-object v6, v13

    :goto_36
    if-nez v0, :cond_8c

    return-void

    :cond_8c
    iget v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v1

    if-nez v1, :cond_8d

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$5;

    invoke-direct {v1, v7}, Lorg/telegram/ui/web/BotWebViewContainer$5;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    const/4 v2, 0x1

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void

    :cond_8d
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v8, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v9, Lorg/telegram/ui/web/HttpGetFileTask;

    new-instance v10, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda8;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v10, v13}, Lorg/telegram/ui/web/HttpGetFileTask;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-wide/16 v0, 0xfa

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    goto/16 :goto_54

    :cond_8e
    :goto_37
    return-void

    :pswitch_24
    move-object/from16 v2, v23

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_8f

    return-void

    :cond_8f
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_90

    new-instance v0, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iget-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v15, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    :cond_90
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    const-string v3, "secure_storage_key_restored"

    invoke-direct {v7, v0, v1, v3, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->restoreStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    :pswitch_25
    :try_start_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "path_full"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "force_request"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://t.me/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;Ljava/lang/String;ZZZ)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_54

    :pswitch_26
    :try_start_17
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    :try_start_18
    invoke-virtual {v0, v1, v1}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10

    goto :goto_39

    :catch_10
    nop

    goto :goto_38

    :catch_11
    nop

    const/4 v2, 0x1

    :goto_38
    const/4 v4, 0x1

    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowScroll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_c3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowThisScroll(ZZ)V

    goto/16 :goto_54

    :pswitch_27
    :try_start_19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "locked"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12

    goto :goto_3a

    :catch_12
    nop

    const/4 v4, 0x0

    :goto_3a
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_c3

    invoke-interface {v0, v4}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onOrientationLockChanged(Z)V

    goto/16 :goto_54

    :pswitch_28
    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_13

    goto :goto_3b

    :catch_13
    nop

    :goto_3b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/web/BotWebViewContainer;->createBiometry()V

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    if-nez v0, :cond_92

    return-void

    :cond_92
    iget-boolean v1, v0, Lorg/telegram/ui/bots/BotBiometry;->access_granted:Z

    if-nez v1, :cond_93

    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "biometry_auth_requested"

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_14

    goto :goto_3c

    :catch_14
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3c
    return-void

    :cond_93
    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda9;

    invoke-direct {v1, v7}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {v0, v13, v1}, Lorg/telegram/ui/bots/BotBiometry;->requestToken(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback2;)V

    goto/16 :goto_54

    :pswitch_29
    move-object/from16 v3, v29

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_94

    return-void

    :cond_94
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_95

    new-instance v0, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    :cond_95
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    const-string v2, "device_storage_key_received"

    :goto_3d
    invoke-direct {v7, v0, v1, v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->getStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    :pswitch_2a
    move-object/from16 v3, v29

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_96

    return-void

    :cond_96
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_97

    new-instance v0, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v15, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    :cond_97
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    const-string v2, "device_storage_key_saved"

    goto/16 :goto_23

    :pswitch_2b
    move-object/from16 v0, v30

    move-object/from16 v2, v44

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->getBotSensors()Lorg/telegram/ui/bots/BotSensors;

    move-result-object v1

    if-eqz v1, :cond_98

    invoke-virtual {v1}, Lorg/telegram/ui/bots/BotSensors;->stopOrientation()Z

    move-result v1

    if-eqz v1, :cond_98

    const-string v0, "device_orientation_stopped"

    goto/16 :goto_e

    :cond_98
    :goto_3e
    invoke-static {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_orientation_failed"

    goto/16 :goto_10

    :pswitch_2c
    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_9a

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_9a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v42

    if-lez v2, :cond_99

    goto :goto_3f

    :cond_99
    iget v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    new-instance v3, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda10;

    invoke-direct {v3, v7}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet;->askPermission(IJLorg/telegram/messenger/Utilities$Callback2;)V

    goto/16 :goto_54

    :cond_9a
    :goto_3f
    return-void

    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_9b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    if-eqz v0, :cond_9b

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_40

    :cond_9b
    const/4 v1, 0x1

    const/4 v4, 0x0

    :goto_40
    xor-int/lit8 v0, v4, 0x1

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    goto/16 :goto_54

    :pswitch_2e
    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_9e

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_9e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v42

    if-lez v2, :cond_9c

    goto :goto_42

    :cond_9c
    const-wide/16 v3, 0x0

    iput-wide v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-nez v1, :cond_9d

    goto :goto_42

    :cond_9d
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const-string v0, "botPermissionBiometry"

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->scrollToFragmentRow(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/String;)V

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v0, :cond_c3

    :goto_41
    invoke-interface {v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseToTabs()V

    goto/16 :goto_54

    :cond_9e
    :goto_42
    return-void

    :pswitch_2f
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    if-nez v0, :cond_9f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/BotLocation;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotLocation;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->notifyLocationChecked:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/BotLocation;->listen(Ljava/lang/Runnable;)V

    :cond_9f
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->notifyLocationChecked:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_54

    :pswitch_30
    move-object/from16 v3, v36

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_a0

    return-void

    :cond_a0
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    if-nez v0, :cond_a1

    new-instance v0, Lorg/telegram/ui/bots/BotStorage;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v11

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v15, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/bots/BotStorage;-><init>(Landroid/content/Context;IJJZ)V

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    :cond_a1
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    const-string v2, "secure_storage_key_received"

    goto/16 :goto_3d

    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyThemeChanged()V

    goto/16 :goto_54

    :pswitch_32
    const/4 v0, 0x4

    invoke-direct {v7, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->ignoreDialog(I)Z

    move-result v1

    if-eqz v1, :cond_a2

    :try_start_1c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phone_requested"

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_15

    goto :goto_43

    :catch_15
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_43
    return-void

    :cond_a2
    iget v8, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v9, v7, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v11, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->ShareYouPhoneNumberTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a3

    sget v3, Lorg/telegram/messenger/R$string;->AreYouSureShareMyContactInfoWebapp:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_44
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_45

    :cond_a3
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureShareMyContactInfoBot:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    :goto_45
    iget v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_a4

    const/4 v4, 0x1

    goto :goto_46

    :cond_a4
    const/4 v4, 0x0

    :goto_46
    if-eqz v4, :cond_a5

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureShareMyContactInfoBotUnblock:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_a5
    invoke-virtual {v11, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->ShareContact:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda11;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v3, v10

    move v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;ZILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-virtual {v11, v12, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v11, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda13;

    invoke-direct {v2, v10, v8, v9}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda13;-><init>([Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-direct {v7, v0, v1, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->showDialog(ILorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)Z

    goto/16 :goto_54

    :pswitch_33
    :try_start_1d
    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->hasQRPending:Z

    if-nez v0, :cond_c3

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_a6

    goto/16 :goto_54

    :cond_a6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastQrText:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->hasQRPending:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a7

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a7

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$4;

    invoke-direct {v2, v7}, Lorg/telegram/ui/web/BotWebViewContainer$4;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    sget v3, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_a7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/web/BotWebViewContainer;->openQrScanActivity()V

    goto/16 :goto_54

    :pswitch_34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    const-string v2, "need_confirmation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppSetupClosingBehavior(Z)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_6

    goto/16 :goto_54

    :pswitch_35
    move-object/from16 v12, v40

    move-object/from16 v10, v41

    :try_start_1e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v14, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    iget-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonText:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a8

    const/16 v25, 0x1

    goto :goto_47

    :cond_a8
    const/16 v25, 0x0

    :goto_47
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_48

    :cond_a9
    iget v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonColor:I

    :goto_48
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_49
    move v5, v4

    const/4 v4, 0x0

    goto :goto_4a

    :cond_aa
    iget v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonTextColor:I

    goto :goto_49

    :goto_4a
    invoke-virtual {v0, v10, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_ab

    if-eqz v25, :cond_ab

    const/16 v30, 0x1

    goto :goto_4b

    :cond_ab
    const/16 v30, 0x0

    :goto_4b
    invoke-virtual {v0, v12, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_ac

    if-eqz v25, :cond_ac

    move-object/from16 v4, v17

    const/16 v31, 0x1

    goto :goto_4c

    :cond_ac
    move-object/from16 v4, v17

    const/16 v31, 0x0

    :goto_4c
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_ad
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonPosition:Ljava/lang/String;

    :goto_4d
    if-nez v0, :cond_ae

    const-string v0, "left"

    :cond_ae
    iput v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonColor:I

    iput v5, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonTextColor:I

    iput-object v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonText:Ljava/lang/String;

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastSecondaryButtonPosition:Ljava/lang/String;

    iput-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->secondaryButtonData:Ljava/lang/String;

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-object/from16 v24, v1

    move-object/from16 v27, v3

    move/from16 v28, v2

    move/from16 v29, v5

    move-object/from16 v32, v0

    invoke-interface/range {v24 .. v32}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onSetupSecondaryButton(ZZLjava/lang/String;IIZZLjava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1

    goto/16 :goto_54

    :pswitch_36
    move-object/from16 v2, v44

    const-wide/16 v3, 0x0

    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_b1

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_b1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v8, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v5, v8

    cmp-long v0, v5, v42

    if-lez v0, :cond_af

    goto :goto_50

    :cond_af
    :try_start_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "custom_emoji_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_17

    :try_start_20
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_16

    move v14, v4

    move-wide v12, v8

    goto :goto_4f

    :catch_16
    nop

    goto :goto_4e

    :catch_17
    nop

    move-wide v8, v3

    :goto_4e
    move-wide v12, v8

    const/4 v14, 0x0

    :goto_4f
    iget-object v11, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v11, :cond_b0

    const-string v0, "UNKNOWN_ERROR"

    invoke-static {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "emoji_status_failed"

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_b0
    iget v10, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    new-instance v15, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda14;

    invoke-direct {v15, v7}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet;->show(ILorg/telegram/tgnet/TLRPC$User;JILorg/telegram/messenger/Utilities$Callback2;)V

    goto/16 :goto_54

    :cond_b1
    :goto_50
    return-void

    :pswitch_37
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "slug"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    if-eqz v1, :cond_b2

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v10, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_54

    :cond_b2
    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;->slug:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    iget v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda16;

    invoke-direct {v4, v7, v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_inputInvoiceSlug;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_54

    :pswitch_38
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_b3

    goto/16 :goto_54

    :cond_b3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogClosed:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x96

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b4

    iget v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->dialogSequentialOpenTimes:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->dialogSequentialOpenTimes:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_b4

    const/4 v2, 0x0

    iput v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->dialogSequentialOpenTimes:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogCooldownTime:J

    goto/16 :goto_54

    :cond_b4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogCooldownTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b5

    goto/16 :goto_54

    :cond_b5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "buttons"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_51
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b6

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_51

    :cond_b6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_b7

    goto/16 :goto_54

    :cond_b7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_b8

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    iget-object v3, v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda17;

    invoke-direct {v5, v7, v4, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :cond_b8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_b9

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    iget-object v3, v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda18;

    invoke-direct {v5, v7, v4, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :cond_b9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_ba

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    iget-object v3, v4, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->text:Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda19;

    invoke-direct {v5, v7, v4, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v3, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :cond_ba
    new-instance v3, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda20;

    invoke-direct {v3, v7, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_bb

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    iget v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v1, :cond_bb

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_bb

    iget v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v7, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_bb
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_bc

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    iget v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v1, :cond_bc

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_bc

    iget v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v7, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_bc
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c3

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;

    iget v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    if-ltz v1, :cond_c3

    iget-object v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_c3

    iget v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$PopupButton;->textColorKey:I

    invoke-direct {v7, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_6

    goto/16 :goto_54

    :pswitch_39
    move-object/from16 v3, v22

    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v0, :cond_c0

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_c0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, v7, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v4, v8

    cmp-long v0, v4, v42

    if-lez v0, :cond_bd

    goto :goto_52

    :cond_bd
    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->downloads:Lorg/telegram/ui/bots/BotDownloads;

    if-nez v0, :cond_be

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v2, v4, v5}, Lorg/telegram/ui/bots/BotDownloads;->get(Landroid/content/Context;IJ)Lorg/telegram/ui/bots/BotDownloads;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->downloads:Lorg/telegram/ui/bots/BotDownloads;

    :cond_be
    :try_start_22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_18

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->downloads:Lorg/telegram/ui/bots/BotDownloads;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/bots/BotDownloads;->getCached(Ljava/lang/String;)Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    move-result-object v2

    if-eqz v2, :cond_bf

    iget-object v2, v7, Lorg/telegram/ui/web/BotWebViewContainer;->downloads:Lorg/telegram/ui/bots/BotDownloads;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/bots/BotDownloads;->download(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/bots/BotDownloads$FileDownload;

    const-string v0, "downloading"

    invoke-static {v12, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_bf
    new-instance v2, Lorg/telegram/tgnet/tl/TL_bots$checkDownloadFileParams;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_bots$checkDownloadFileParams;-><init>()V

    iget v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_bots$checkDownloadFileParams;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-object v0, v2, Lorg/telegram/tgnet/tl/TL_bots$checkDownloadFileParams;->file_name:Ljava/lang/String;

    iput-object v1, v2, Lorg/telegram/tgnet/tl/TL_bots$checkDownloadFileParams;->url:Ljava/lang/String;

    iget v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda21;

    invoke-direct {v4, v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_18
    move-exception v0

    move-object/from16 v1, v16

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-static {v12, v10}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_c0
    :goto_52
    return-void

    :pswitch_3a
    move-object/from16 v3, v22

    :try_start_23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v1, "try_browser"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->webAppAllowedProtocols:Ljava/util/Set;

    if-eqz v1, :cond_c3

    iget v1, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->webAppAllowedProtocols:Ljava/util/Set;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    const-string v1, "try_instant_view"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;Ljava/lang/String;ZZZ)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1

    goto :goto_54

    :cond_c1
    :goto_53
    :pswitch_3b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyBiometryReceived()V

    goto :goto_54

    :pswitch_3c
    iget-boolean v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->hasQRPending:Z

    if-eqz v0, :cond_c3

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_54

    :pswitch_3d
    move-object/from16 v3, v37

    iget-object v0, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_c2

    return-void

    :cond_c2
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "params"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_19

    iget v3, v7, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    iget-object v4, v7, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v5, Lorg/telegram/tgnet/tl/TL_bots$invokeWebViewCustomMethod;

    invoke-direct {v5}, Lorg/telegram/tgnet/tl/TL_bots$invokeWebViewCustomMethod;-><init>()V

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v8, v7, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v6, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/tl/TL_bots$invokeWebViewCustomMethod;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-object v2, v5, Lorg/telegram/tgnet/tl/TL_bots$invokeWebViewCustomMethod;->custom_method:Ljava/lang/String;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/tl/TL_bots$invokeWebViewCustomMethod;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;

    invoke-direct {v2, v7, v1, v3, v4}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    invoke-virtual {v0, v5, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_c3
    :goto_54
    return-void

    :catch_19
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    instance-of v0, v0, Lorg/json/JSONException;

    if-eqz v0, :cond_c4

    invoke-direct {v7, v15}, Lorg/telegram/ui/web/BotWebViewContainer;->error(Ljava/lang/String;)V

    goto :goto_55

    :cond_c4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError()V

    :goto_55
    return-void

    :cond_c5
    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": no webview or delegate!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78380c2f -> :sswitch_3d
        -0x712ef480 -> :sswitch_3c
        -0x67840eae -> :sswitch_3b
        -0x665c257a -> :sswitch_3a
        -0x6643928e -> :sswitch_39
        -0x64ed6860 -> :sswitch_38
        -0x52e382df -> :sswitch_37
        -0x529356cf -> :sswitch_36
        -0x50abbe78 -> :sswitch_35
        -0x4feea439 -> :sswitch_34
        -0x4e07a07c -> :sswitch_33
        -0x4b514e0b -> :sswitch_32
        -0x4b1915b0 -> :sswitch_31
        -0x494594ed -> :sswitch_30
        -0x468baa4b -> :sswitch_2f
        -0x412ee203 -> :sswitch_2e
        -0x36e69d41 -> :sswitch_2d
        -0x3613b5a1 -> :sswitch_2c
        -0x24f605c5 -> :sswitch_2b
        -0x22de85df -> :sswitch_2a
        -0x22a1700e -> :sswitch_29
        -0x1e8f02cd -> :sswitch_28
        -0x1db0aec4 -> :sswitch_27
        -0x1c4afc94 -> :sswitch_26
        -0x1a365bc6 -> :sswitch_25
        -0x11848435 -> :sswitch_24
        -0xe9410c6 -> :sswitch_23
        -0xceaf632 -> :sswitch_22
        -0x6a09221 -> :sswitch_21
        -0x44674d1 -> :sswitch_20
        -0x3767926 -> :sswitch_1f
        0x14fedd3 -> :sswitch_1e
        0x79d187b -> :sswitch_1d
        0xb4715b1 -> :sswitch_1c
        0xff702aa -> :sswitch_1b
        0x14ccd349 -> :sswitch_1a
        0x190db429 -> :sswitch_19
        0x1c5922fb -> :sswitch_18
        0x2514a113 -> :sswitch_17
        0x27d30cb4 -> :sswitch_16
        0x280b07c0 -> :sswitch_15
        0x2b082f8f -> :sswitch_14
        0x2ca2c394 -> :sswitch_13
        0x2cc7cfc4 -> :sswitch_12
        0x2f410320 -> :sswitch_11
        0x2f73adf3 -> :sswitch_10
        0x36358261 -> :sswitch_f
        0x3c49757f -> :sswitch_e
        0x48211e2f -> :sswitch_d
        0x4bed2d1d -> :sswitch_c
        0x535b446d -> :sswitch_b
        0x569bcda2 -> :sswitch_a
        0x56c86043 -> :sswitch_9
        0x5927e9cc -> :sswitch_8
        0x6c06f5cd -> :sswitch_7
        0x7038f2de -> :sswitch_6
        0x7131a349 -> :sswitch_5
        0x7244ae57 -> :sswitch_4
        0x73755306 -> :sswitch_3
        0x7749e138 -> :sswitch_2
        0x795c475d -> :sswitch_1
        0x7f8ad843 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4041708b -> :sswitch_42
        0x35f42a -> :sswitch_41
        0x5e8f0c7 -> :sswitch_40
        0x6233516 -> :sswitch_3f
        0x677c22b -> :sswitch_3e
    .end sparse-switch
.end method

.method private onOpenUri(Landroid/net/Uri;)V
    .locals 7

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    xor-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/web/BotWebViewContainer;->onOpenUri(Landroid/net/Uri;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private onOpenUri(Landroid/net/Uri;Ljava/lang/String;ZZZ)V
    .locals 13

    .line 0
    move-object v0, p0

    const/4 v1, 0x0

    iget-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer;->isRequestingPageOpen:Z

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    const/4 v2, 0x1

    new-array v2, v2, [Z

    aput-boolean v1, v2, v1

    move-object v4, p1

    invoke-static {p1, v2}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;[Z)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-boolean v2, v2, v1

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->setKeyboardFocusable(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move/from16 v6, p3

    move-object v9, p2

    move/from16 v12, p5

    invoke-static/range {v3 .. v12}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onWebEventReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWebEventReceived "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, "actionBarColor"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "allowScroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "siteName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "navigationBarColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, v5, v5}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catch_1
    nop

    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1, p2, v5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->allowThisScroll(ZZ)V

    goto :goto_3

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "siteName "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz p1, :cond_8

    iput-object p2, p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastSiteName:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$400(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    goto :goto_3

    :pswitch_2
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int p2, v6

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {p2, v1, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    iput-boolean v5, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColorGot:Z

    iput p2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastActionBarColor:I

    goto :goto_2

    :cond_6
    iput-boolean v5, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColorGot:Z

    iput p2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastBackgroundColor:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$400(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppBackgroundChanged(ZI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_8
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x65085c9a -> :sswitch_3
        -0x1b948ebc -> :sswitch_2
        0x283bd272 -> :sswitch_1
        0x3b751b76 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openQrScanActivity()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$6;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v3, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Landroid/app/Activity;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->cameraBottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method public static proxyTON(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/WebResourceRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebResourceRequest;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lorg/telegram/ui/Components/PhotoViewerWebView$2$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/WebResourceRequest;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lorg/telegram/ui/web/BotWebViewContainer;->proxyTON(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static proxyTON(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->rotateTONHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "https"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/browser/Browser;->replaceHostname(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p2

    const-string v0, ";"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1, p0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private reportSafeContentInsets(IZ)V
    .locals 8

    if-nez p2, :cond_0

    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsetsTopMargin:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    int-to-float v0, p1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "right"

    const-string v6, "bottom"

    const-string v0, "left"

    const-string v2, "top"

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "content_safe_area_changed"

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsetsTopMargin:I

    return-void
.end method

.method private reportSafeInsets(Landroid/graphics/Rect;Z)V
    .locals 8

    .line 0
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p2, p1, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v4, "right"

    const-string v6, "bottom"

    const-string v0, "left"

    const-string v2, "top"

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "safe_area_changed"

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private restoreStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "KEY_INVALID"

    const-string v1, "error"

    const-string v2, "req_id"

    if-eqz p1, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string p2, "key"

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v9, :cond_1

    invoke-static {v2, v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1, v9}, Lorg/telegram/ui/bots/BotStorage;->getStoragesWithKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "RESTORE_UNAVAILABLE"

    invoke-static {v2, v7, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda42;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p4

    move-object v8, p1

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/bots/BotStorage;->showChooseStorage(Landroid/content/Context;Ljava/util/List;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v7, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_1
    invoke-static {v2, v7, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "UNKNOWN_ERROR"

    invoke-static {v2, p1, v1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static rotateTONHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "-d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v2, p0, v1

    const-string v3, "\\-"

    const-string v4, "-h"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->tonProxyAddress:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private runWithPermissions([Ljava/lang/String;Landroidx/core/util/Consumer;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->checkPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Landroidx/core/util/Consumer;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    if-eqz p2, :cond_2

    const/16 v0, 0xfa0

    invoke-static {p2, p1, v0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setStorageKey(Lorg/telegram/ui/bots/BotStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "KEY_INVALID"

    const-string v1, "error"

    const-string v2, "req_id"

    if-eqz p1, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v4, :cond_1

    invoke-static {v2, p2, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_1
    :try_start_2
    const-string v0, "value"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p1, v4, v0}, Lorg/telegram/ui/bots/BotStorage;->setKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v2, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p2, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_1
    const-string p1, "VALUE_INVALID"

    invoke-static {v2, p2, v1, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_2
    invoke-static {v2, p2, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_3
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "UNKNOWN_ERROR"

    invoke-static {v2, p1, v1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupFlickerParams(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isFlickeringCenter:Z

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p1, :cond_1

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 p1, -0x2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setupWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setupWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V

    return-void
.end method

.method private setupWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V
    .locals 9

    .line 0
    const-string v0, ")"

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->destroy()V

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    if-nez p1, :cond_5

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_2

    :cond_4
    :goto_1
    const-wide/16 v5, 0x0

    :goto_2
    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;-><init>(Landroid/content/Context;ZJ)V

    goto :goto_3

    :cond_5
    move-object v2, p1

    :goto_3
    iput-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-nez v3, :cond_8

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v2, v5, v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/CookieManager;Landroid/webkit/WebView;Z)V

    :cond_6
    if-lt v3, v4, :cond_7

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity$15$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/CookieManager;)V

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object v3, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    goto :goto_4

    :cond_8
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_4
    iget v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->disableBotFullscreenBlur:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewScrollListener:Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;

    invoke-virtual {v2, p0, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setContainers(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;)V

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onCloseListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setCloseListener(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    iget-boolean v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-nez v4, :cond_a

    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_a

    invoke-static {v2, v1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/WebSettings;Z)V

    :cond_a
    :try_start_1
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "; wv)"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\(Linux; Android.+;[^)]+\\)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Linux; Android "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; K)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Version/[\\d\\.]+ "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz v5, :cond_d

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v6

    if-nez v6, :cond_b

    const-string v1, "LOW"

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_b
    if-ne v6, v1, :cond_c

    const-string v1, "AVERAGE"

    goto :goto_5

    :cond_c
    const-string v1, "HIGH"

    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Telegram-Android/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer;->capitalizeFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; Android "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; SDK "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_d
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v4, "webview_database"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    if-nez p1, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz v0, :cond_15

    instance-of v0, p2, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    if-eqz v0, :cond_12

    check-cast p2, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    :cond_12
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    const-string v0, "TelegramWebviewProxy"

    if-nez p2, :cond_13

    new-instance p1, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    invoke-direct {p1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;->setContainer(Lorg/telegram/ui/web/BotWebViewContainer;)V

    goto :goto_a

    :cond_15
    instance-of v0, p2, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    if-eqz v0, :cond_16

    check-cast p2, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    :cond_16
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    const-string v0, "TelegramWebview"

    if-nez p2, :cond_17

    new-instance p1, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-direct {p1, p2, p0}, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Lorg/telegram/ui/web/BotWebViewContainer;)V

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_17
    if-nez p1, :cond_18

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;->setContainer(Lorg/telegram/ui/web/BotWebViewContainer;)V

    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onWebViewCreated(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    sput-boolean v3, Lorg/telegram/ui/web/BotWebViewContainer;->firstWebView:Z

    return-void
.end method

.method private showDialog(ILorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->ignoreDialog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p3}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setDismissDialogByButtons(Z)V

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogType:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastDialogType:I

    iput v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->blockedDialogsUntil:J

    :cond_1
    iget p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->shownDialogsCount:I

    return p2

    :cond_2
    :goto_0
    return v0
.end method

.method private static tonsite2magic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->isTonsite(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->rotateTONHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/web/BotWebViewContainer;->rotatedTONHosts:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/telegram/ui/web/BotWebViewContainer;->rotatedTONHosts:Ljava/util/HashMap;

    :cond_1
    sget-object v2, Lorg/telegram/ui/web/BotWebViewContainer;->rotatedTONHosts:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "https"

    invoke-static {p0, v1, v0}, Lorg/telegram/messenger/browser/Browser;->replaceHostname(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private unknownError()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->unknownError(Ljava/lang/String;)V

    return-void
.end method

.method private unknownError(Ljava/lang/String;)V
    .locals 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string v2, "UnknownError"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->error(Ljava/lang/String;)V

    return-void
.end method

.method private updateKeyboardFocusable()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->wasFocusable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->wasFocusable:Z

    return-void
.end method


# virtual methods
.method public checkCreateWebView()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setupWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailable:Z

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[webviewcontainer] #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public destroyWebView()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyWebView preserving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->preserving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->preserving:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->destroy()V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onWebViewDestroyed(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->biometry:Lorg/telegram/ui/bots/BotBiometry;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->storage:Lorg/telegram/ui/bots/BotStorage;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->secureStorage:Lorg/telegram/ui/bots/BotStorage;

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->notifyLocationChecked:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/BotLocation;->unlisten(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->location:Lorg/telegram/ui/bots/BotLocation;

    :cond_5
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz p1, :cond_0

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColorOverriden:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz p1, :cond_1

    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3, p2, v1, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyThemeChanged()V

    goto :goto_0

    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, p2, :cond_4

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p3, p3, v1

    check-cast p3, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    if-ne p1, p2, :cond_5

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, v2

    check-cast p2, [Ljava/lang/String;

    aget-object p3, p3, v1

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isFlickeringCenter:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    iget-boolean p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isFlickeringCenter:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-boolean p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isFlickeringCenter:Z

    if-nez p3, :cond_2

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v2, v2, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p4, p1, p3, v2, p0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return p2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewNotAvailableText:Landroid/widget/TextView;

    if-ne p2, v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-ne p2, v0, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public evaluateJs(Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBotProxy()Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    return-object v0
.end method

.method public getMinHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isFullSize()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v0

    sub-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->viewPortHeightOffset:F

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getProxy()Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$WebViewProxy;

    return-object v0
.end method

.method public getUrlLoaded()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    return-object v0
.end method

.method public hasUserPermissions()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->hasUserPermissions:Z

    return v0
.end method

.method public invalidateViewPortHeight()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method public invalidateViewPortHeight(Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(ZZ)V

    return-void
.end method

.method public invalidateViewPortHeight(ZZ)V
    .locals 4

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastExpanded:Z

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->getMinHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->viewPortHeightOffset:F

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportHeightReported:I

    if-ne v0, p2, :cond_5

    iget-boolean p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportStateStable:Z

    if-ne p2, p1, :cond_5

    iget-boolean p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportIsExpanded:Z

    iget-boolean v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastExpanded:Z

    if-eq p2, v1, :cond_6

    :cond_5
    iput v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportHeightReported:I

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportStateStable:Z

    iget-boolean p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastExpanded:Z

    iput-boolean p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastViewportIsExpanded:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{height:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is_state_stable:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is_expanded:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastExpanded:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "viewport_changed"

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent_fast(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public isBackButtonVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible:Z

    return v0
.end method

.method public isPageLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    return v0
.end method

.method public loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 9

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p4

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    invoke-static {p4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    const-string v4, "DurgerKingBot"

    invoke-virtual {p4, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    sget p2, Lorg/telegram/messenger/R$raw;->durgerking_placeholder:I

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->getColor(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/messenger/SvgHelper;->getDrawable(ILjava/lang/Integer;)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p2

    invoke-virtual {p1, v2, v2, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->setupFlickerParams(Z)V

    return-void

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-wide v4, p4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    cmp-long v6, v4, p2

    if-nez v6, :cond_1

    goto :goto_0

    :cond_2
    move-object p4, v2

    :goto_0
    const/4 p1, 0x1

    if-eqz p4, :cond_4

    invoke-static {p4}, Lorg/telegram/messenger/MediaDataController;->getPlaceholderStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {p4}, Lorg/telegram/messenger/MediaDataController;->getStaticAttachMenuBotIcon(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p2, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    invoke-virtual {p3, p2, v2, v2, p4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :goto_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setupFlickerParams(Z)V

    goto/16 :goto_4

    :cond_4
    const/16 p2, 0x200

    if-eqz v0, :cond_5

    iget-object p3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz p3, :cond_5

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    if-eqz p3, :cond_5

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->placeholder_svg_path:Landroid/graphics/Path;

    if-eqz p3, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->placeholder_svg_path:Landroid/graphics/Path;

    invoke-static {p3, p2, p2}, Lorg/telegram/messenger/SvgHelper;->getDrawableByPath(Landroid/graphics/Path;II)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const v0, 0x42d5547a

    const v4, 0x43705ae1

    invoke-virtual {p4, v0, v0, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {p3, p4, v6, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    const v7, 0x4387d28f

    const v8, 0x43caaae1

    invoke-virtual {p4, v7, v0, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p3, p4, v6, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p4, v0, v7, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p3, p4, v6, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p4, v7, v7, v8, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p3, p4, v6, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p3, p2, p2}, Lorg/telegram/messenger/SvgHelper;->getDrawableByPath(Landroid/graphics/Path;II)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz p2, :cond_6

    :goto_3
    iget p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    iget-object p4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p2, p3, p4, v1, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-virtual {p2, v2, v2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method public loadUrl(ILjava/lang/String;)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyEmojiStatusAccess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "status"

    invoke-static {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "emoji_status_access_requested"

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public notifyThemeChanged()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->buildThemeParams()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "theme_changed"

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "attached"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/web/BotWebViewContainer$3;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible:Z

    if-eqz v0, :cond_1

    const-string v0, "back_button_pressed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "detached"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onRequestPermissionResultReceived:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected onErrorShown(ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onFaviconChanged(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "slug"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "invoice_closed"

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoice_closed "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    if-nez p3, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentPaymentSlug:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onMainButtonPressed()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    const-string v0, "main_button_pressed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->forceHeight:I

    if-ltz v0, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0xfa0

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onPermissionsRequestResultCallback:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onSecondaryButtonPressed()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    const-string v0, "secondary_button_pressed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSettingsButtonPressed()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->lastClickMs:J

    const-string v0, "settings_button_pressed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isViewPortByMeasureSuppressed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    :cond_0
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onURLChanged(Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public onWebViewCreated(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    return-void
.end method

.method public onWebViewDestroyed(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 0

    return-void
.end method

.method public preserveWebView()V
    .locals 2

    const-string v0, "preserveWebView"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->preserving:Z

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "is_visible"

    invoke-static {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "visibility_changed"

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public replaceWebView(ILorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->currentAccount:I

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer;->setupWebView(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "is_visible"

    invoke-static {p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "visibility_changed"

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public reportSafeInsets(Landroid/graphics/Rect;I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeInsets(Landroid/graphics/Rect;Z)V

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->reportSafeContentInsets(IZ)V

    return-void
.end method

.method public resetWebView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    return-void
.end method

.method public restoreButtonData()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->buttonData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    const-string v2, "web_app_setup_main_button"

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onEventReceived(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->secondaryButtonData:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botWebViewProxy:Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;

    const-string v2, "web_app_setup_secondary_button"

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onEventReceived(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    return-void
.end method

.method public setFlickerViewColor(I)V
    .locals 4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const v1, -0x41e66666    # -0.15f

    :goto_0
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p1

    goto :goto_1

    :cond_0
    const v0, 0x3ccccccd    # 0.025f

    const v1, 0x3e19999a    # 0.15f

    goto :goto_0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz p1, :cond_2

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewDrawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_bot_loadingIcon:I

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerViewColorOverriden:Z

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setForceHeight(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->forceHeight:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->forceHeight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIsBackButtonVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible:Z

    return-void
.end method

.method public setKeyboardFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->keyboardFocusable:Z

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    return-void
.end method

.method public setOnCloseRequestedListener(Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->onCloseListener:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setCloseListener(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setOpener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->bot:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->opener:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    :cond_0
    return-void
.end method

.method public setPageLoaded(Ljava/lang/String;Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->dangerousUrl:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v4, 0x1

    :goto_4
    invoke-virtual {p0, v3, v2, v4}, Lorg/telegram/ui/web/BotWebViewContainer;->onURLChanged(Ljava/lang/String;ZZ)V

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v2, :cond_5

    invoke-static {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->access$202(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Z)Z

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    if-eqz v2, :cond_6

    const-string p1, "setPageLoaded: already loaded"

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_7

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v0, [F

    aput v3, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    new-array v6, v0, [F

    aput v2, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v1

    aput-object v2, v4, v0

    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/web/BotWebViewContainer$2;-><init>(Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz p2, :cond_8

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_9

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_5
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mUrl:Ljava/lang/String;

    const-string p1, "setPageLoaded: isPageLoaded = true!"

    invoke-virtual {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    iput-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->delegate:Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    invoke-interface {p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onWebAppReady()V

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method public setState(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->d(Ljava/lang/String;)V

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded:Z

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer;->mUrl:Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/ui/web/BotWebViewContainer;->updateKeyboardFocusable()V

    return-void
.end method

.method public setViewPortByMeasureSuppressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->isViewPortByMeasureSuppressed:Z

    return-void
.end method

.method public setViewPortHeightOffset(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->viewPortHeightOffset:F

    return-void
.end method

.method public setWasOpenedByBot(Lorg/telegram/ui/bots/WebViewRequestProps;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->wasOpenedByBot:Lorg/telegram/ui/bots/WebViewRequestProps;

    return-void
.end method

.method public setWasOpenedByLinkIntent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->wasOpenedByLinkIntent:Z

    return-void
.end method

.method public setWebViewProgressListener(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewProgressListener:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setWebViewScrollListener(Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webViewScrollListener:Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setContainers(Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/ui/web/BotWebViewContainer$WebViewScrollListener;)V

    :cond_0
    return-void
.end method

.method public showLinkCopiedBulletin()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public updateFlickerBackgroundColor(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/16 v1, 0x99

    const/16 v2, 0xcc

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setColors(III)V

    return-void
.end method
