.class public abstract Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# instance fields
.field private baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private container:Landroid/widget/FrameLayout;

.field private giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

.field private isUnused:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private slug:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4ObwOuFEVWilRpdMhPy_pSxyTR8(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$onBindViewHolder$1(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b5coppIyQ9b4ZR_m8gwAMlyoJvo(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$onBindViewHolder$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dE2HXMwgZgPVa0eVZfBLONxI0BQ(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->share()V

    return-void
.end method

.method public static synthetic $r8$lambda$fjrnpH7dJv9ZfyEvZe8WUJIaqVE(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Ljava/lang/Void;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$onBindViewHolder$0(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h0vGbgoMo7ZLA76X70xFF3x1IIU(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$onBindViewHolder$2(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iiFH9_hQaTIBxDLbcR_xCeDzS2U(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Ljava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$share$4(Ljava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Ljava/lang/Void;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->afterCodeApplied()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->container:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    invoke-static {p2, p1, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->processApplyGiftCodeError(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Landroid/view/View;)V
    .locals 2

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->isUnused:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;)V

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->applyGiftCode(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->dismiss()V

    return-void
.end method

.method private synthetic lambda$share$4(Ljava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 21

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    move-object/from16 v15, p0

    iget-object v4, v15, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v4, p1

    move-wide v5, v0

    move-object/from16 v20, v14

    move/from16 v14, v18

    move/from16 v15, v19

    invoke-static/range {v4 .. v17}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v4

    move-object/from16 v5, v20

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showGiftLinkForwardedBulletin(J)V

    const/4 v0, 0x1

    return v0
.end method

.method private share()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.me/giftcode/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "onlySelect"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "dialogsType"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->dismiss()V

    return-void
.end method


# virtual methods
.method protected abstract afterCodeApplied()V
.end method

.method protected abstract dismiss()V
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public init(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;Landroid/widget/FrameLayout;)V
    .locals 1

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->used_date:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->isUnused:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->container:Landroid/widget/FrameLayout;

    return-void
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_c

    if-eq v2, v1, :cond_9

    if-eq v2, p2, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 p2, 0x4

    if-eq v2, p2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->isUnused:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOkStyle(Z)V

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    if-nez v0, :cond_1

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setCloseStyle()V

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/TextInfoCell;

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextGravity(I)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    const/16 v5, 0xf

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    if-eqz v6, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->BoostingLinkNotActivated:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_2
    return-void

    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->isUnused:Z

    if-eqz v2, :cond_7

    iget-wide v1, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_6

    sget p2, Lorg/telegram/messenger/R$string;->BoostingSendLinkToAnyone:I

    :goto_3
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->BoostingSendLinkToFriends:I

    goto :goto_3

    :goto_4
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1, v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    :goto_5
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_7
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->used_date:I

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v3, p2, v0

    aput-object v2, p2, v1

    const-string v2, "formatDateAtTime"

    invoke-static {v2, v4, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v2, Lorg/telegram/messenger/R$string;->BoostingUsedLinkDate:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "BoostingUsedLinkDate"

    invoke-static {p2, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->setData(Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_7

    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->setSlug(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    if-nez p2, :cond_a

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->hideSlug(Ljava/lang/Runnable;)V

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    cmp-long p2, v0, v3

    if-nez p2, :cond_f

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->hideSlug(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->isUnused:Z

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->setGiftLinkText()V

    goto :goto_6

    :cond_d
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->setUsedGiftLinkText()V

    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    if-eqz v0, :cond_e

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->setGiftLinkToUserText(JLorg/telegram/messenger/Utilities$Callback;)V

    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    cmp-long p2, v0, v3

    if-nez p2, :cond_f

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->setUnclaimedText()V

    :cond_f
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/TextInfoCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TextInfoCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_3
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_4
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method protected abstract onHiddenLinkClicked()V
.end method

.method protected abstract onObjectClicked(Lorg/telegram/tgnet/TLObject;)V
.end method
