.class Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatUsersAdapter"
.end annotation


# instance fields
.field private chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private mContext:Landroid/content/Context;

.field private sortedUsers:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->sortedUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->sortedUsers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;Lorg/telegram/tgnet/TLRPC$ChatFull;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    return p1

    :cond_0
    const/16 p1, 0x15

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/UserCell;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->sortedUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->sortedUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_8

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    goto :goto_5

    :cond_2
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v0, :cond_5

    :goto_2
    sget v0, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    const-string v2, "ChannelCreator"

    :goto_3
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v0, :cond_6

    :goto_4
    sget v0, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    const-string v2, "ChannelAdmin"

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/UserCell;->setAdminRole(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-eq p2, p1, :cond_7

    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    const/4 v6, 0x0

    :goto_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const/16 p1, 0x14

    const/4 v0, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, v2, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->createEmptyStubView(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$ChatUsersAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v3, 0x9

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
