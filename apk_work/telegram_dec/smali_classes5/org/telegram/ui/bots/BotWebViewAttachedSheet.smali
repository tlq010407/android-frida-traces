.class public abstract Lorg/telegram/ui/bots/BotWebViewAttachedSheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;
.implements Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;


# static fields
.field private static final ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;


# direct methods
.method public static synthetic $r8$lambda$2ljsgWWd0z2DS7mi0mN7h8I8ujA(Lorg/telegram/ui/bots/BotWebViewAttachedSheet;)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/bots/BotWebViewAttachedSheet;->lambda$static$1(Lorg/telegram/ui/bots/BotWebViewAttachedSheet;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Z8aan7GPKLiRq3iDgwZVMk5Gl3M(IJ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewAttachedSheet;->lambda$openPrivacy$37(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$frEEu6okCrK_l1W85skt8JpfieA(Lorg/telegram/ui/bots/BotWebViewAttachedSheet;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/bots/BotWebViewAttachedSheet;->lambda$static$2(Lorg/telegram/ui/bots/BotWebViewAttachedSheet;F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/bots/BotWebViewAttachedSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/bots/BotWebViewAttachedSheet$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lorg/telegram/ui/bots/BotWebViewAttachedSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/ui/bots/BotWebViewAttachedSheet$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "actionBarTransitionProgress"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/bots/BotWebViewAttachedSheet;->ACTION_BAR_TRANSITION_PROGRESS_VALUE:Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    return-void
.end method

.method public static hasPrivacyCommand(Lorg/telegram/tgnet/TLRPC$UserFull;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->privacy_policy_url:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    const-string v3, "privacy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method private static synthetic lambda$openPrivacy$37(IJ)V
    .locals 15

    invoke-static {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v1, "/privacy"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-wide/from16 v2, p1

    invoke-static/range {v1 .. v14}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    return-void
.end method

.method private static synthetic lambda$static$1(Lorg/telegram/ui/bots/BotWebViewAttachedSheet;)F
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private static synthetic lambda$static$2(Lorg/telegram/ui/bots/BotWebViewAttachedSheet;F)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static openPrivacy(IJ)Z
    .locals 4

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->privacy_policy_url:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewAttachedSheet;->hasPrivacyCommand(Lorg/telegram/tgnet/TLRPC$UserFull;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->BotDefaultPrivacyPolicy:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-eqz v3, :cond_6

    :cond_5
    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_6
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewAttachedSheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewAttachedSheet$$ExternalSyntheticLambda2;-><init>(IJ)V

    const-wide/16 p0, 0x96

    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p0, 0x1

    return p0
.end method
