.class public Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryAdapterRecycler"
.end annotation


# instance fields
.field private final currentAccount:I

.field private drawChecked:Z

.field private final mContext:Landroid/content/Context;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showPremiumBlock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->drawChecked:Z

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->mContext:Landroid/content/Context;

    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->currentAccount:I

    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->showPremiumBlock:Z

    iput-object p5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HintDialogCell;

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    move-object v7, v3

    move-object v3, p2

    move-object p2, v7

    goto :goto_1

    :cond_0
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    neg-long v1, v1

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    neg-long v1, v0

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_0

    :cond_2
    move-object p2, v3

    move-wide v1, v4

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_5

    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->currentAccount:I

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string p2, ""

    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v2, v0, p2}, Lorg/telegram/ui/Cells/HintDialogCell;->setDialog(JZLjava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    new-instance p1, Lorg/telegram/ui/Cells/HintDialogCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->drawChecked:Z

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/HintDialogCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->showPremiumBlock:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HintDialogCell;->showPremiumBlocked()V

    :cond_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x42ac0000    # 86.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setIndex(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
