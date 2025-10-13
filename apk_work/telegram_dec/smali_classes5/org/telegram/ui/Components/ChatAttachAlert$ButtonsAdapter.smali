.class Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonsAdapter"
.end annotation


# instance fields
.field private attachBotsEndRow:I

.field private attachBotsStartRow:I

.field private attachMenuBots:Ljava/util/List;

.field private buttonsCount:I

.field private contactButton:I

.field private documentButton:I

.field private galleryButton:I

.field private locationButton:I

.field private mContext:Landroid/content/Context;

.field private musicButton:I

.field private pollButton:I

.field private quickRepliesButton:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private todoButton:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_0

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->todoButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->quickRepliesButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v4, :cond_0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    iput v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    iget-boolean v0, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    if-eqz v0, :cond_13

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    goto/16 :goto_4

    :cond_0
    iget-object v4, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_4

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$17700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    add-int/lit8 v2, v0, 0x2

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$17700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$17700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    if-ne v0, v7, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$17700(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    if-ne v0, v6, :cond_13

    goto/16 :goto_3

    :cond_4
    instance-of v1, v3, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_6

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    :cond_6
    if-eqz v1, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v8, v3, v5

    if-lez v8, :cond_7

    const/4 v0, 0x1

    :cond_7
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$17800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$17900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_8
    if-nez v0, :cond_d

    if-eqz v2, :cond_9

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_d

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    goto :goto_2

    :cond_b
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    :goto_2
    invoke-static {v4, v5}, Lorg/telegram/messenger/MediaDataController;->canShowAttachMenuBot(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    :cond_d
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$18000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$18100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$18200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->todoButton:I

    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$18000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_12

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    if-nez v2, :cond_12

    if-eqz v1, :cond_12

    if-nez v0, :cond_12

    iget-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->hasReplies()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->quickRepliesButton:I

    :cond_12
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    :cond_13
    :goto_4
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsStartRow:I

    if-lt p2, v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachBotsEndRow:I

    if-ge p2, v1, :cond_1

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->attachMenuBots:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setAttachBot(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    goto/16 :goto_4

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->buttonsCount:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_4

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->galleryButton:I

    if-ne p2, v0, :cond_3

    sget p2, Lorg/telegram/messenger/R$string;->ChatGallery:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    aget-object v5, p2, v0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachGalleryBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachGalleryText:I

    const/4 v3, 0x1

    :goto_0
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->documentButton:I

    const/4 v8, 0x4

    if-ne p2, v0, :cond_4

    sget p2, Lorg/telegram/messenger/R$string;->ChatDocument:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x2

    aget-object v5, p2, v0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachFileBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachFileText:I

    const/4 v3, 0x4

    :goto_2
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->locationButton:I

    const/4 v9, 0x6

    if-ne p2, v0, :cond_5

    sget p2, Lorg/telegram/messenger/R$string;->ChatLocation:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v8

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationText:I

    const/4 v3, 0x6

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->musicButton:I

    const/4 v8, 0x3

    if-ne p2, v0, :cond_6

    sget p2, Lorg/telegram/messenger/R$string;->AttachMusic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v1

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioText:I

    const/4 v3, 0x3

    goto :goto_2

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->pollButton:I

    const/4 v1, 0x5

    if-ne p2, v0, :cond_7

    sget p2, Lorg/telegram/messenger/R$string;->Poll:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v1

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollText:I

    const/16 v3, 0x9

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    const/16 p2, 0x9

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->contactButton:I

    if-ne p2, v0, :cond_8

    sget p2, Lorg/telegram/messenger/R$string;->AttachContact:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v8

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactText:I

    const/4 v3, 0x5

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->quickRepliesButton:I

    if-ne p2, v0, :cond_9

    sget p2, Lorg/telegram/messenger/R$string;->AttachQuickReplies:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_reply:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachContactText:I

    const/16 v3, 0xb

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;II)V

    const/16 p2, 0xb

    goto :goto_3

    :cond_9
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->todoButton:I

    if-ne p2, v0, :cond_a

    sget p2, Lorg/telegram/messenger/R$string;->Todo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v5, p2, v9

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachTodoBackground:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachTodoText:I

    const/16 v3, 0xc

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(ILjava/lang/CharSequence;Lorg/telegram/ui/Components/RLottieDrawable;II)V

    const/16 p2, 0xc

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    if-eqz p2, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ButtonsAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$17600(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V

    return-void
.end method
