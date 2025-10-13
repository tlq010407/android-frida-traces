.class Lorg/telegram/ui/CallLogActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private activeEndRow:I

.field private activeHeaderRow:I

.field private activeStartRow:I

.field private callsEndRow:I

.field private callsHeaderRow:I

.field private callsStartRow:I

.field private createCallInfoRow:I

.field private createCallRow:I

.field private loadingCallsRow:I

.field private mContext:Landroid/content/Context;

.field private rowsCount:I

.field private sectionRow:I

.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/CallLogActivity$ListAdapter;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsStartRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CallLogActivity$ListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/CallLogActivity$ListAdapter;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeHeaderRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/CallLogActivity$ListAdapter;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->createCallRow:I

    return p0
.end method

.method private updateRows()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeStartRow:I

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeEndRow:I

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsStartRow:I

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsEndRow:I

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->loadingCallsRow:I

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->sectionRow:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->createCallRow:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->createCallInfoRow:I

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity;->access$2100(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    iput v2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeHeaderRow:I

    iput v3, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeStartRow:I

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity;->access$2100(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    iput v3, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeEndRow:I

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity;->access$1400(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeHeaderRow:I

    if-eq v2, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    add-int/lit8 v2, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->sectionRow:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    iput v2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsHeaderRow:I

    :cond_1
    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->access$1400(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsEndRow:I

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/CallLogActivity;->access$1200(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    iput v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->loadingCallsRow:I

    :cond_2
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->rowsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeHeaderRow:I

    if-eq p1, v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsHeaderRow:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsStartRow:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsEndRow:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeStartRow:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeEndRow:I

    if-ge p1, v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->loadingCallsRow:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->sectionRow:I

    if-eq p1, v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->createCallInfoRow:I

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->createCallRow:I

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    const/4 p1, 0x2

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x5

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x3

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

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

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->updateRows()V

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->updateRows()V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->updateRows()V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->updateRows()V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->updateRows()V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->updateRows()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->updateRows()V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->updateRows()V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_b

    if-eq v4, v6, :cond_9

    const/4 v3, 0x4

    if-eq v4, v3, :cond_3

    const/4 v3, 0x5

    if-eq v4, v3, :cond_1

    const/4 v2, 0x6

    if-eq v4, v2, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->GroupCallCreate:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_call_create:I

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    goto/16 :goto_e

    :cond_1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget v3, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->createCallInfoRow:I

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->conferenceCallSizeLimit:I

    const-string v3, "GroupCallCreateInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto/16 :goto_e

    :cond_2
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto/16 :goto_e

    :cond_3
    iget v3, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeStartRow:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/CallLogActivity;->access$2100(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iget-object v4, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/CallLogActivity$GroupCallCell;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->access$3000(Lorg/telegram/ui/CallLogActivity$GroupCallCell;)Lorg/telegram/ui/Components/ProgressButton;

    move-result-object v3

    iget-wide v4, v10, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_5

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    :goto_0
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v13, v3

    goto :goto_2

    :cond_4
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    goto :goto_0

    :cond_5
    iget-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz v3, :cond_6

    sget v3, Lorg/telegram/messenger/R$string;->MegaLocation:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_7

    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    goto :goto_0

    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->MegaPublic:I

    goto :goto_0

    :goto_2
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->access$3100(Lorg/telegram/ui/CallLogActivity$GroupCallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/CallLogActivity;->access$2100(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    if-eq v2, v4, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity;->access$1200(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    iput-boolean v7, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->access$3100(Lorg/telegram/ui/CallLogActivity$GroupCallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_e

    :cond_9
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    iget v3, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->activeHeaderRow:I

    if-ne v2, v3, :cond_a

    sget v2, Lorg/telegram/messenger/R$string;->VoipChatActiveChats:I

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_a
    iget v3, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsHeaderRow:I

    if-ne v2, v3, :cond_1b

    sget v2, Lorg/telegram/messenger/R$string;->VoipChatRecentCalls:I

    goto :goto_4

    :cond_b
    iget v4, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsStartRow:I

    sub-int/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/CallLogActivity;->access$1400(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/CallLogActivity$CallCell;

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2300(Lorg/telegram/ui/CallLogActivity$CallCell;)Landroid/widget/ImageView;

    move-result-object v9

    iget-boolean v10, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->video:Z

    if-eqz v10, :cond_c

    sget v10, Lorg/telegram/messenger/R$drawable;->profile_video:I

    goto :goto_5

    :cond_c
    sget v10, Lorg/telegram/messenger/R$drawable;->profile_phone:I

    :goto_5
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v9, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Message;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_d

    const-string v10, "\u202b"

    goto :goto_6

    :cond_d
    const-string v10, ""

    :goto_6
    iget-object v11, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, v7, :cond_e

    new-instance v11, Landroid/text/SpannableString;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v13, v9

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->formatDateCallLog(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_e
    new-instance v11, Landroid/text/SpannableString;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  (%d) %s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v14, v9

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->formatDateCallLog(J)Ljava/lang/String;

    move-result-object v9

    new-array v14, v3, [Ljava/lang/Object;

    aput-object v13, v14, v8

    aput-object v9, v14, v7

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_7
    iget v9, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    if-eqz v9, :cond_11

    if-eq v9, v7, :cond_10

    if-eq v9, v3, :cond_f

    goto :goto_9

    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/CallLogActivity;->access$2600(Lorg/telegram/ui/CallLogActivity;)Landroid/text/style/ImageSpan;

    move-result-object v3

    :goto_8
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v11, v3, v9, v10, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/CallLogActivity;->access$2500(Lorg/telegram/ui/CallLogActivity;)Landroid/text/style/ImageSpan;

    move-result-object v3

    goto :goto_8

    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/CallLogActivity;->access$2400(Lorg/telegram/ui/CallLogActivity;)Landroid/text/style/ImageSpan;

    move-result-object v3

    goto :goto_8

    :goto_9
    iget-wide v9, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->call_id:J

    const-wide/16 v12, 0x0

    cmp-long v3, v9, v12

    if-eqz v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    :goto_a
    iget-object v10, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v9, v10, :cond_13

    if-lez v9, :cond_12

    const-string v10, ", "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v10, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLObject;

    invoke-static {v10}, Lorg/telegram/messenger/DialogObject;->getShortName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v9, v7

    goto :goto_a

    :cond_13
    iget-object v9, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v6, :cond_14

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v6

    new-array v10, v8, [Ljava/lang/Object;

    const-string v12, "AndOther"

    invoke-static {v12, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2700(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setAllowEmojiStatus(Z)V

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2700(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v12

    iget-object v10, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_15

    iget-object v5, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    :cond_15
    move-object v13, v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v11

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2800(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2700(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2700(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v3

    iput-boolean v7, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->dontDrawAvatar:Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v3, :cond_16

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2800(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v6

    iget-object v10, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v10}, Lorg/telegram/ui/CallLogActivity;->access$2900(Lorg/telegram/ui/CallLogActivity;)I

    move-result v10

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v6, v5, v10, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/2addr v5, v7

    goto :goto_b

    :cond_16
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2800(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    goto :goto_c

    :cond_17
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2700(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setAllowEmojiStatus(Z)V

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2700(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v12

    iget-object v3, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    :cond_18
    move-object v13, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v11

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2800(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2700(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v3

    iput-boolean v8, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->dontDrawAvatar:Z

    :goto_c
    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2700(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v5}, Lorg/telegram/ui/CallLogActivity;->access$1400(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    if-ne v2, v5, :cond_1a

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity;->access$1200(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_d

    :cond_19
    const/4 v7, 0x0

    :cond_1a
    :goto_d
    iput-boolean v7, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->access$2300(Lorg/telegram/ui/CallLogActivity$CallCell;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1b
    :goto_e
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    :goto_0
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/telegram/ui/CallLogActivity$GroupCallCell;

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/CallLogActivity$GroupCallCell;-><init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v4, 0x15

    const/16 v5, 0xf

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    move-object p1, p2

    goto :goto_1

    :cond_5
    new-instance p1, Lorg/telegram/ui/CallLogActivity$CallCell;

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/CallLogActivity$CallCell;-><init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;)V

    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/CallLogActivity$CallCell;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/CallLogActivity;->access$1400(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->callsStartRow:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/CallLogActivity$CallCell;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$ListAdapter;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object v0, v0, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lorg/telegram/ui/CallLogActivity;->access$2200(Lorg/telegram/ui/CallLogActivity;Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/CallLogActivity$CallCell;->setChecked(ZZ)V

    :cond_0
    return-void
.end method
