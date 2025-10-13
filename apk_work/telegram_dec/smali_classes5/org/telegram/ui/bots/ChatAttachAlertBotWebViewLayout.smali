.class public Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;,
        Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
    }
.end annotation


# instance fields
.field private addToHomeScreenItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private botId:J

.field private currentAccount:I

.field private customActionBarBackground:I

.field private customBackground:I

.field private destroyed:Z

.field private hasCustomActionBarBackground:Z

.field private hasCustomBackground:Z

.field private ignoreLayout:Z

.field private ignoreMeasure:Z

.field private isBotButtonAvailable:Z

.field private lastSwipeTime:J

.field private measureOffsetY:I

.field private monoforumTopicId:J

.field private needCloseConfirmation:Z

.field private needReload:Z

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private peerId:J

.field private pollRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

.field private queryId:J

.field private replyToMsgId:I

.field public settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private silent:Z

.field private startCommand:Ljava/lang/String;

.field private swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

.field private webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

.field private webViewScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$5Ab7RVhknSIMwSkIQ_dn5LoQO3U(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$onCheckDismissByUser$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7QZuwVuCVy4M_7w_LPF3EbSpB7Y(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$AgocBWNml0KvU_oiBV_eWXAj0qk(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dcy2_aW3m8aiuhd3tfIXxEM3BwA(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$PHmzxYntilaozeO2a27TxMYjC10(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$onShown$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$QxcN3h-zqVmh4dzAB2rTiVBd8SU(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->requestEnableKeyboard()V

    return-void
.end method

.method public static synthetic $r8$lambda$WPgeZCK_RXwecO6d6f_qtJ4dOM0(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$requestWebView$13(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WYs0Xp5KYxtKiPcXYdqg4zuPyrI(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X2GZYsFuC4NS93sPq3YpiG1X9zs(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$requestWebView$12(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XmrdIGh8dhKZmqf3VOMevwSBSRM(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$6(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ch5NgLmQjgdZBJJhkqOKyxtjRHg(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$onPanTransitionStart$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gIemrNU9CNCGUEkpQxJhZyP6vWo(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$m9JO_92P3nVZVhERFOff53dF4bM(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sMzTVjr0xt0tktVWbhAWhmQFc0I(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w9wKCLsqTkX3Yl7XZkdnj-R6DCw(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$showJustAddedBulletin$14(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y1Y_-eVs0sEScJhLXoWfR4fsy8Y(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$8(Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_open_bot:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewOpenBot:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_settings:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewSettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$id;->menu_reload_page:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewReloadPage:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$id;->menu_add_to_home_screen_bot:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_home:I

    sget v3, Lorg/telegram/messenger/R$string;->AddShortcut:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->addToHomeScreenItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_tos_bot:I

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_intro:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewToS:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_delete_bot:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewDeleteBot:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$1;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v7

    const/4 v8, 0x1

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$1;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$2;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollListener(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollEndListener(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setDelegate(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setIsKeyboardVisible(Lorg/telegram/messenger/GenericProvider;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/4 v5, 0x0

    const/high16 v6, 0x42a80000    # 84.0f

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->setWebViewProgressListener(Landroidx/core/util/Consumer;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/web/BotWebViewContainer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->measureOffsetY:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->destroyed:Z

    if-nez v0, :cond_4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;-><init>()V

    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->peerId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->queryId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->query_id:J

    iget-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->silent:Z

    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->replyToMsgId:I

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->replyToMsgId:I

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget-wide v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->monoforumTopicId:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    iget v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->monoforumTopicId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    :cond_0
    :goto_0
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->monoforumTopicId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->monoforumTopicId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    :cond_2
    :goto_1
    iget-wide v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->peerId:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->peerId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_3

    iget v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    :cond_3
    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lastSwipeTime:J

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method private synthetic lambda$new$5(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$6(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

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

.method private synthetic lambda$new$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Float;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

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

    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$3;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->requestEnableKeyboard()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$onCheckDismissByUser$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onPanTransitionStart$10(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setScrollY(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onShown$11()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->restoreButtonData()V

    return-void
.end method

.method private synthetic lambda$requestWebView$12(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->query_id:J

    iput-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->queryId:J

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$13(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda14;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showJustAddedBulletin$14(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private requestEnableKeyboard()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public canExpandByRequest()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
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

    iget-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->queryId:J

    cmp-long p3, v0, p1

    if-nez p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->destroyWebView()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needReload:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->updateFlickerBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public disallowSwipeOffsetAnimation()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    return-void
.end method

.method public getButtonsHideOffset()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCustomActionBarBackground()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->customActionBarBackground:I

    return v0
.end method

.method public getCustomBackground()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->customBackground:I

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getStartCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->startCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewContainer()Lorg/telegram/ui/web/BotWebViewContainer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    return-object v0
.end method

.method public hasCustomActionBarBackground()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->hasCustomActionBarBackground:Z

    return v0
.end method

.method public hasCustomBackground()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->hasCustomBackground:Z

    return v0
.end method

.method public isBotButtonAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    return v0
.end method

.method public needReload()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needReload:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needReload:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onBackPressed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    return v1
.end method

.method public onCheckDismissByUser()Z
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needCloseConfirmation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

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

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

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

    new-instance v3, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

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

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->destroyWebView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->destroyed:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDismissWithTouchOutside()Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onHide()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->hasUserPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->destroyWebView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needReload:Z

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreMeasure:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onBackPressed()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    goto/16 :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->menu_open_bot:I

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    const-string v2, "user_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto/16 :goto_0

    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->menu_reload_page:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgress(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    iget-object v3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->reload()V

    goto :goto_0

    :cond_3
    sget v0, Lorg/telegram/messenger/R$id;->menu_delete_bot:I

    if-ne p1, v0, :cond_5

    iget p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onLongClickBotButton(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    :cond_5
    sget v0, Lorg/telegram/messenger/R$id;->menu_settings:I

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onSettingsButtonPressed()V

    goto :goto_0

    :cond_6
    sget v0, Lorg/telegram/messenger/R$id;->menu_add_to_home_screen_bot:I

    if-ne p1, v0, :cond_7

    iget p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    sget v2, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->installShortcut(JI)V

    goto :goto_0

    :cond_7
    sget v0, Lorg/telegram/messenger/R$id;->menu_tos_bot:I

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewToSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onPanTransitionEnd()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreMeasure:Z

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setViewPortByMeasureSuppressed(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->requestLayout()V

    return-void
.end method

.method public onPanTransitionStart(ZI)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setViewPortByMeasureSuppressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result p1

    neg-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreMeasure:Z

    iget-object v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p2

    add-int/2addr v1, p1

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;I)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_0

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    const/4 p2, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    int-to-float p1, p1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreLayout:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setOffsetY(F)V

    iput-boolean p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreLayout:Z

    :cond_2
    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    iget p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetY(F)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->setParentActivity(Landroid/app/Activity;)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    :cond_2
    return-void
.end method

.method public onShown()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->requestEnableKeyboard()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public requestWebView(IJJZILjava/lang/String;J)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    iput-wide p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->peerId:J

    iput-wide p4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    iput-boolean p6, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->silent:Z

    iput p7, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->replyToMsgId:I

    iput-wide p9, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->monoforumTopicId:J

    iput-object p8, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->startCommand:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->addToHomeScreenItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lorg/telegram/messenger/MediaDataController;->canCreateAttachedMenuBotShortcut(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->addToHomeScreenItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->addToHomeScreenItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1, p4, p5, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p4

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput-boolean p6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->silent:Z

    const-string p4, "android"

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    const-wide/16 p4, 0x0

    cmp-long p6, p2, p4

    if-gez p6, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    neg-long p2, p2

    invoke-virtual {p6, p2, p3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit16 p2, p2, 0x2000

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_2
    if-eqz p8, :cond_3

    iput-object p8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->start_param:Ljava/lang/String;

    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr p2, v1

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_3
    if-eqz p7, :cond_5

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p2

    invoke-virtual {p2, p7}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    cmp-long p3, p9, p4

    if-eqz p3, :cond_4

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p9, p10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    :cond_4
    :goto_1
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    goto :goto_2

    :cond_5
    cmp-long p2, p9, p4

    if-eqz p2, :cond_6

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p9, p10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    :cond_6
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_7
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;I)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public scrollToTop()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    return-void
.end method

.method public setAllowSwipes(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setAllowSwipes(Z)V

    return-void
.end method

.method public setCustomActionBarBackground(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->hasCustomActionBarBackground:Z

    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->customActionBarBackground:I

    return-void
.end method

.method public setCustomBackground(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->customBackground:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->hasCustomBackground:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setDelegate(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public setMeasureOffsetY(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->measureOffsetY:I

    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNeedCloseConfirmation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needCloseConfirmation:Z

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public shouldHideBottomButtons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showJustAddedBulletin()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

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

    iget-wide v7, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

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

    const-string v0, "BotAttachMenuShortcatAddedAttachAndSide"

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedSide:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "BotAttachMenuShortcatAddedSide"

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget v3, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedAttach:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "BotAttachMenuShortcatAddedAttach"

    invoke-static {v0, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
