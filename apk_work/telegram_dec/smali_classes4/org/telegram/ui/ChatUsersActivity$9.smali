.class Lorg/telegram/ui/ChatUsersActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;

.field final synthetic val$fragment:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method public static synthetic $r8$lambda$Oyjf6MjhSelHTvEtN7EJ9XlM2PI(Lorg/telegram/ui/ChatUsersActivity$9;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$9;->lambda$didSelectUsers$0(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WM9sKtXUV1LfNHXgRVln15qtB-Y(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ChatUsersActivity$9;->lambda$didSelectUsers$1(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->val$fragment:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didSelectUsers$0(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$11800(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$11800(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$10500(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$1400(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$11800(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$11800(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$11800(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$11400(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    :goto_1
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2000(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    :goto_2
    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$1400(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$1400(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatUsersActivity;->access$11600(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    return-void
.end method

.method private static synthetic lambda$didSelectUsers$1(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public didSelectUsers(Ljava/util/ArrayList;I)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$9;->val$fragment:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$2000(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    new-instance v6, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatUsersActivity$9;)V

    new-instance v7, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda1;-><init>()V

    const/4 v8, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->addUsersToChat(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;ILandroidx/core/util/Consumer;Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public needAddBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$9;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x1

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ChatUsersActivity;->access$11700(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void
.end method
