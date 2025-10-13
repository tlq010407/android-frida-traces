.class public Lorg/telegram/ui/bots/BotBiometrySettings;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# instance fields
.field private final biometryBots:Ljava/util/ArrayList;

.field private final botName:Ljava/util/HashMap;

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;


# direct methods
.method public static synthetic $r8$lambda$C5izhjsEqBD_Wndr5FX4xdeqZSM(Lorg/telegram/ui/bots/BotBiometrySettings;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/BotBiometrySettings;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FyQwmvnaCuxdUb9Xw0E7t82sEsc(Lorg/telegram/ui/bots/BotBiometrySettings;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/bots/BotBiometrySettings;->onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$buU3pTP4agEiSbcLsjY6rWpN0ys(Lorg/telegram/ui/bots/BotBiometrySettings;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/BotBiometrySettings;->lambda$createView$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gv0xHXO8Hnx5sTJ7IQlupsfHUIA(Lorg/telegram/ui/bots/BotBiometrySettings;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/bots/BotBiometrySettings;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->biometryBots:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->botName:Ljava/util/HashMap;

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 8

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->biometryBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->biometryBots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/bots/BotBiometry$Bot;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->botName:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v4, "a   "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Lorg/telegram/ui/AvatarSpan;

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v6, 0x0

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-direct {v4, v6, v5, v7}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    iget-object v5, v1, Lorg/telegram/ui/bots/BotBiometry$Bot;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/AvatarSpan;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    const/16 v5, 0x21

    invoke-virtual {v2, v4, p2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v4, v1, Lorg/telegram/ui/bots/BotBiometry$Bot;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->botName:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0, v2}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    iget-boolean v1, v1, Lorg/telegram/ui/bots/BotBiometry$Bot;->disabled:Z

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyBiometryBotsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$createView$0(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->biometryBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->biometryBots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 2

    iget p2, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ltz p2, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->biometryBots:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->biometryBots:Ljava/util/ArrayList;

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/bots/BotBiometry$Bot;

    iget-boolean p2, p1, Lorg/telegram/ui/bots/BotBiometry$Bot;->disabled:Z

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    iput-boolean p2, p1, Lorg/telegram/ui/bots/BotBiometry$Bot;->disabled:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget p4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object p5, p1, Lorg/telegram/ui/bots/BotBiometry$Bot;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-boolean p1, p1, Lorg/telegram/ui/bots/BotBiometry$Bot;->disabled:Z

    invoke-static {p2, p4, v0, v1, p1}, Lorg/telegram/ui/bots/BotBiometry;->toggleBotDisabled(Landroid/content/Context;IJZ)V

    iget-object p1, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyBiometryBots:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/bots/BotBiometrySettings$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotBiometrySettings$1;-><init>(Lorg/telegram/ui/bots/BotBiometrySettings;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lorg/telegram/ui/bots/BotBiometrySettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotBiometrySettings$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/BotBiometrySettings;)V

    new-instance v2, Lorg/telegram/ui/bots/BotBiometrySettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotBiometrySettings$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/bots/BotBiometrySettings;)V

    new-instance v3, Lorg/telegram/ui/bots/BotBiometrySettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/BotBiometrySettings$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/bots/BotBiometrySettings;)V

    invoke-direct {p1, p0, v1, v2, v3}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotBiometrySettings;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, -0x1

    const/16 v2, 0x77

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/bots/BotBiometrySettings$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/BotBiometrySettings$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/bots/BotBiometrySettings;)V

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/bots/BotBiometry;->getBots(Landroid/content/Context;ILorg/telegram/messenger/Utilities$Callback;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method
