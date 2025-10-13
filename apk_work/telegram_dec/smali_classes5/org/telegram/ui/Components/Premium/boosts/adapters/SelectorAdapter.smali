.class public Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;
    }
.end annotation


# instance fields
.field private callButtonsVisible:Z

.field private chatsParticipantsCount:Ljava/util/HashMap;

.field private final context:Landroid/content/Context;

.field private isGreenSelector:Z

.field private items:Ljava/util/List;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field public needChecks:Z

.field public needChecks2:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private topSectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

.field private topSectionClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$58NzZRn9DiMiIrXLBhDM019LGyw(ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->lambda$setCallButtonsVisible$1(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VzVkPN3bcBO2oOPTLiF2NWVHLYM(Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->lambda$new$0(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->chatsParticipantsCount:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->callButtonsVisible:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->needChecks:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;)V

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->loadParticipantsCount(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->chatsParticipantsCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->chatsParticipantsCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$setCallButtonsVisible$1(ZLandroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCallButtonsVisible(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getParticipantsCount(Lorg/telegram/tgnet/TLRPC$Chat;)I
    .locals 3

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->chatsParticipantsCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->chatsParticipantsCount:Ljava/util/HashMap;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public notifyChangedLast()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    if-eqz v0, :cond_18

    if-gez p2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_b

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->subtext:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCustomUser(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->subtext:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_3

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    :goto_0
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->getParticipantsCount(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v6

    invoke-virtual {p1, v2, v6}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;I)V

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_7

    instance-of v6, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    if-eqz v6, :cond_4

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_3

    :cond_4
    instance-of v6, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    if-eqz v6, :cond_5

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    goto :goto_1

    :cond_5
    instance-of v6, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    if-eqz v6, :cond_6

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    goto :goto_0

    :cond_6
    instance-of v6, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v6, :cond_7

    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    goto :goto_2

    :cond_7
    :goto_3
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    invoke-virtual {p1, v2, v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setChecked(ZZ)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCheckboxAlpha(FZ)V

    add-int/2addr p2, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    iget v2, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v2, v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_4
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setDivider(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    iget p2, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p2, v3, :cond_a

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setDivider(Z)V

    :cond_a
    iget-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->options:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setOptions(Landroid/view/View$OnClickListener;)V

    iget-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->audioCall:Landroid/view/View$OnClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->videoCall:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCallButtons(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->callButtonsVisible:Z

    invoke-virtual {p1, p2, v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCallButtonsVisible(ZZ)V

    goto/16 :goto_8

    :cond_b
    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge p2, v1, :cond_c

    add-int/2addr p2, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge p2, v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;

    iget p2, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq p2, v3, :cond_c

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    iget-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->country:Lorg/telegram/tgnet/TLRPC$TL_help_country;

    invoke-virtual {p1, p2, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->setCountry(Lorg/telegram/tgnet/TLRPC$TL_help_country;Z)V

    iget-boolean p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->checked:Z

    invoke-virtual {p1, p2, v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;->setChecked(ZZ)V

    goto/16 :goto_8

    :cond_d
    const/4 p2, -0x1

    if-ne v1, p2, :cond_f

    iget v0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->padHeight:I

    if-ltz v0, :cond_e

    goto :goto_6

    :cond_e
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    :cond_f
    if-ne v1, v3, :cond_10

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorLetterCell;

    iget-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorLetterCell;->setLetter(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_10
    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    :try_start_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :cond_11
    const/16 v2, 0x8

    if-ne v1, v2, :cond_15

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GraySectionCell;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->subtext:Ljava/lang/CharSequence;

    if-nez p2, :cond_12

    const-string p2, ""

    :cond_12
    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->callback:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2, v4, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_13
    iget-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GraySectionCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceWithRestrictedEmoji(Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->subtext:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14

    iget-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->subtext:Ljava/lang/CharSequence;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->callback:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_14
    :goto_7
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->topSectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    goto :goto_8

    :cond_15
    const/16 v2, 0x9

    if-ne v1, v2, :cond_16

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    iget-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->text:Ljava/lang/CharSequence;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->resId:I

    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_8

    :cond_16
    const/16 v2, 0xa

    if-ne v1, v2, :cond_18

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_17

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->view:Landroid/view/View;

    if-eq v1, v2, :cond_18

    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->view:Landroid/view/View;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$Item;->view:Landroid/view/View;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :catch_0
    :cond_18
    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->needChecks:Z

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->needChecks2:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->isGreenSelector:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x5

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, p2, v1, v2, v0}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    if-ne p2, p1, :cond_3

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorLetterCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorLetterCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x6

    if-ne p2, p1, :cond_4

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x8

    if-ne p2, p1, :cond_5

    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x9

    if-ne p2, p1, :cond_6

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 p2, 0x10

    iput p2, p1, Lorg/telegram/ui/Cells/TextCell;->leftPadding:I

    const/16 p2, 0x13

    iput p2, p1, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    goto :goto_0

    :cond_6
    const/16 p1, 0xa

    if-ne p2, p1, :cond_7

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->callButtonsVisible:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setCallButtonsVisible(ZZ)V

    :cond_0
    return-void
.end method

.method public setCallButtonsVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->callButtonsVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->callButtonsVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->items:Ljava/util/List;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method

.method public setGreenSelector(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->isGreenSelector:Z

    return-void
.end method

.method public setNeedChecks2(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->needChecks2:Z

    return-void
.end method

.method public setTopSectionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->topSectionClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/SelectorAdapter;->topSectionCell:Lorg/telegram/ui/Cells/GraySectionCell;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->UsersDeselectAll:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method
