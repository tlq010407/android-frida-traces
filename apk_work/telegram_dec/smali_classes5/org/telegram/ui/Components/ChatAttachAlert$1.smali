.class Lorg/telegram/ui/Components/ChatAttachAlert$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/web/BotWebViewContainer$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->showBotLayout(JLjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private botButtonAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$id:J

.field final synthetic val$startCommand:Ljava/lang/String;

.field final synthetic val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;


# direct methods
.method public static synthetic $r8$lambda$5VR9q9lwPAc0w9T9S9Rgia9EvsA(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onWebAppOpenInvoice$3(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8W8f4Bu9rzC3YPaXE0n85QR6P40(Lorg/telegram/ui/Components/ChatAttachAlert$1;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onWebAppSwitchInlineQuery$5(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Jf9Hd5X5eHvbcdLNhVHG5nlkbcU(Lorg/telegram/ui/Components/ChatAttachAlert$1;IILorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onWebAppSetActionBarColor$1(IILorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PmxU41FRyzgAm9jTxK4Sg8RKKow(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onWebAppOpenInvoice$4(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jlfGBgZH3a8Rg2pp0tjd8Al3-AU(Lorg/telegram/ui/Components/ChatAttachAlert$1;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onSetupMainButton$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o9xXvPK9XJQ3UhaUGaDM0nQN0oE(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onCloseRequested$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q6E3RRqmvpsYoMNSeFerin7cZDM(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1;->lambda$onWebAppOpenInvoice$2(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$startCommand:Ljava/lang/String;

    iput-wide p4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlert$1;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/ChatAttachAlert$1;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private static synthetic lambda$onCloseRequested$0(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSetupMainButton$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1302(Lorg/telegram/ui/Components/ChatAttachAlert;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void
.end method

.method private static synthetic lambda$onWebAppOpenInvoice$2(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$onWebAppOpenInvoice$3(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->getWebViewContainer()Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onWebAppOpenInvoice$4(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;->PENDING:Lorg/telegram/ui/PaymentFormActivity$InvoiceStatus;

    if-eq p3, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->getWebViewContainer()Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onInvoiceStatusUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onWebAppSetActionBarColor$1(IILorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1, p2, p5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    invoke-static {p1, p2, p5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setCustomActionBarBackground(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p4, p1, p5}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->updateActionBar(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    return-void
.end method

.method private synthetic lambda$onWebAppSwitchInlineQuery$5(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    const/4 p4, 0x0

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide p4, p4, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    const-string p7, "scrollToTopOnResume"

    const/4 p8, 0x1

    invoke-virtual {p6, p7, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p4, p5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p7

    if-eqz p7, :cond_0

    invoke-static {p4, p5}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result p4

    const-string p5, "enc_id"

    invoke-virtual {p6, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    invoke-static {p4, p5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p7

    if-eqz p7, :cond_1

    const-string p7, "user_id"

    :goto_0
    invoke-virtual {p6, p7, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    neg-long p4, p4

    const-string p7, "chat_id"

    goto :goto_0

    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "@"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "start_text"

    invoke-virtual {p6, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p6, p2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, p8}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    new-instance p1, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    new-instance p3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p3, p6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p1, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p1, p8}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    :cond_2
    return p8
.end method


# virtual methods
.method public synthetic getBotSensors()Lorg/telegram/ui/bots/BotSensors;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$getBotSensors(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    return-object v0
.end method

.method public isClipboardAvailable()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->botInAttachMenu(J)Z

    move-result v0

    return v0
.end method

.method public onCloseRequested(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic onCloseToTabs()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onCloseToTabs(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public synthetic onEmojiStatusGranted(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onEmojiStatusGranted(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V

    return-void
.end method

.method public synthetic onEmojiStatusSet(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onEmojiStatusSet(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public synthetic onFullscreenRequested(Z)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onFullscreenRequested(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onInstantClose()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onInstantClose(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public synthetic onLocationGranted(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onLocationGranted(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V

    return-void
.end method

.method public synthetic onOpenBackFromTabs()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onOpenBackFromTabs(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public synthetic onOrientationLockChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onOrientationLockChanged(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V

    return-void
.end method

.method public synthetic onSendWebViewData(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onSendWebViewData(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Ljava/lang/String;)V

    return-void
.end method

.method public onSetBackButtonVisible(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public onSetSettingsButtonVisible(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    iget-object v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onSetupMainButton(ZZLjava/lang/String;IIZZ)V
    .locals 4

    const/4 p7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    if-ne v0, v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$startCommand:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$700(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p4}, Lorg/telegram/ui/web/BotWebViewContainer;->getMainButtonRippleDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result p2

    const-wide/16 p3, 0xfa

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p2, p1, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p2, v3, p7

    const/4 p2, 0x1

    aput v2, v3, p2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;Z)V

    invoke-virtual {p2, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->botButtonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result p1

    if-eq p1, p6, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p6, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p6, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3dcccccd    # 0.1f

    if-eqz p6, :cond_7

    const/high16 p5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    const p5, 0x3dcccccd    # 0.1f

    :goto_2
    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p6, :cond_8

    goto :goto_3

    :cond_8
    const v1, 0x3dcccccd    # 0.1f

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$1$2;

    invoke-direct {p2, p0, p6}, Lorg/telegram/ui/Components/ChatAttachAlert$1$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_9
    :goto_4
    return-void
.end method

.method public onSetupSecondaryButton(ZZLjava/lang/String;IIZZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic onSharedTo(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onSharedTo(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic onWebAppBackgroundChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onWebAppBackgroundChanged(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;ZI)V

    return-void
.end method

.method public onWebAppExpand()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$000(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->canExpandByRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->scrollToTop()V

    :cond_1
    return-void
.end method

.method public onWebAppOpenInvoice(Lorg/telegram/tgnet/TLRPC$InputInvoice;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, p3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    if-eqz v2, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    move-object v5, p3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda5;

    invoke-direct {v7, p3, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Stars/StarsController;->openPaymentForm(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$InputInvoice;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;Ljava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void

    :cond_0
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    if-eqz p1, :cond_1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;

    iget p1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p1, p3, p2, v1}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentForm;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    :cond_1
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    if-eqz p1, :cond_2

    new-instance p1, Lorg/telegram/ui/PaymentFormActivity;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;

    invoke-direct {p1, p3}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$PaymentReceipt;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {p3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->scrollToTop()V

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    new-instance p3, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3, v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/PaymentFormActivity;->setPaymentFormCallback(Lorg/telegram/ui/PaymentFormActivity$PaymentFormCallback;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$500(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->addFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_3
    return-void
.end method

.method public synthetic onWebAppReady()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onWebAppReady(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public onWebAppSetActionBarColor(IIZ)V
    .locals 6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    new-instance v5, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;

    invoke-direct {v5}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;-><init>()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$200(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-virtual {v5, p1, v1}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->setFrom(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$102(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, p2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->setTo(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    new-instance p3, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda3;

    move-object v0, p3

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;IILorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onWebAppSetBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setCustomBackground(I)V

    return-void
.end method

.method public synthetic onWebAppSetNavigationBarColor(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onWebAppSetNavigationBarColor(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;I)V

    return-void
.end method

.method public onWebAppSetupClosingBehavior(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setNeedCloseConfirmation(Z)V

    return-void
.end method

.method public onWebAppSwipingBehavior(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->val$webViewLayout:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setAllowSwipes(Z)V

    return-void
.end method

.method public onWebAppSwitchInlineQuery(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p3, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    check-cast p3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dialogsType"

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "onlySelect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "groups"

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "allowGroups"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "allowLegacyGroups"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowMegagroups"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "users"

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowUsers"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "channels"

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "allowChannels"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "bots"

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "allowBots"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p3, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p3, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$1;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;)V

    invoke-virtual {p3, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->addFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :goto_0
    return-void
.end method
