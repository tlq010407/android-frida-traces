.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)V

    return-void
.end method

.method private did(Lorg/telegram/tgnet/TLRPC$InputPeer;)J
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;->access$15800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;->access$15700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setIsSendAs(ZZ)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;->access$15700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, p2, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;->access$15800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_2

    :cond_0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;->access$15800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;->access$15800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;I)V

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;->access$15800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;->access$15900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    if-nez v3, :cond_4

    if-eq p2, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;->access$15900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->did(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v5

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->did(Lorg/telegram/tgnet/TLRPC$InputPeer;)J

    move-result-wide v1

    cmp-long v3, v5, v1

    if-nez v3, :cond_6

    :cond_5
    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setChecked(ZZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-eq p2, v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setDivider(Z)V

    :cond_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;->access$15600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    :cond_1
    :goto_0
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet$Adapter;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ChoosePeerSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_2

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p2, v0

    const/high16 v0, 0x43990000    # 306.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_1

    :cond_2
    const/high16 p2, 0x42580000    # 54.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
