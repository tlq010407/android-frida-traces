.class Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;
.super Lorg/telegram/ui/Components/JoinToSendSettingsView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public static synthetic $r8$lambda$-pjIyjZdHQEzdEgop3n9uq-Xq20(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->lambda$onJoinToSendToggle$6(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$11vV_-bNlf2IWHN3BUOVXo_wsLM(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Ljava/lang/Runnable;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->lambda$migrateIfNeeded$0(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$E_KZHUUGdBzBazsyfkuhp3-4fSo(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->lambda$onJoinRequestToggle$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ih4f3YWzGb_YJeF8UGjuUcRidW0(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Lorg/telegram/tgnet/TLRPC$Chat;ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->lambda$onJoinRequestToggle$3(Lorg/telegram/tgnet/TLRPC$Chat;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q6jSSsL04c8kaAcbT1klSbLdgQo(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;ZLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->lambda$onJoinToSendToggle$7(ZLorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W5x4PEwFf-kWJ9hPbuYF9WmfBVs(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->lambda$onJoinToSendToggle$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$d4RS7__r88YIeGDA2XUIw0zUlok(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->lambda$onJoinToSendToggle$8(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eV8pWcBxkrQnwAbEE9BcHyBwopI(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->lambda$onJoinRequestToggle$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$sZxQV8vCAXSMukS3icRJC-Tg8HI(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->lambda$overrideCancel$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yq6lzvo1CABliAvK5joi61l-mJs(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Lorg/telegram/tgnet/TLRPC$Chat;ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->lambda$onJoinToSendToggle$9(Lorg/telegram/tgnet/TLRPC$Chat;ZLjava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iput-object p4, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/JoinToSendSettingsView;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method private synthetic lambda$migrateIfNeeded$0(Ljava/lang/Runnable;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$600(Lorg/telegram/ui/ChatLinkActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$800(Lorg/telegram/ui/ChatLinkActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0, p3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0, p2, p3}, Lorg/telegram/ui/ChatLinkActivity;->access$1602(Lorg/telegram/ui/ChatLinkActivity;J)J

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/telegram/ui/ChatLinkActivity;->access$1202(Lorg/telegram/ui/ChatLinkActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onJoinRequestToggle$1()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$1402(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    return-void
.end method

.method private synthetic lambda$onJoinRequestToggle$2(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$1402(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onJoinRequestToggle$3(Lorg/telegram/tgnet/TLRPC$Chat;ZLjava/lang/Runnable;)V
    .locals 7

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    new-instance v5, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;)V

    new-instance v6, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p3}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Ljava/lang/Runnable;)V

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->toggleChatJoinRequest(JZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onJoinToSendToggle$5()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$1402(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    return-void
.end method

.method private synthetic lambda$onJoinToSendToggle$6(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinRequest:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$onJoinToSendToggle$7(ZLorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$1502(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    if-nez p1, :cond_0

    iget-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    iget-object p1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatLinkActivity;->access$1402(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    new-instance v4, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;)V

    new-instance v5, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, p2}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->toggleChatJoinRequest(JZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onJoinToSendToggle$8(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$1502(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onJoinToSendToggle$9(Lorg/telegram/tgnet/TLRPC$Chat;ZLjava/lang/Runnable;)V
    .locals 7

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->join_to_send:Z

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    new-instance v5, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p2, p1}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;ZLorg/telegram/tgnet/TLRPC$Chat;)V

    new-instance v6, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, p3}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Ljava/lang/Runnable;)V

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->toggleChatJoinToSend(JZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$overrideCancel$4(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$1502(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$1402(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private migrateIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$1200(Lorg/telegram/ui/ChatLinkActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v5, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    new-instance v6, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, p2}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Ljava/lang/Runnable;)V

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private overrideCancel(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public onJoinRequestToggle(ZLjava/lang/Runnable;)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$1400(Lorg/telegram/ui/ChatLinkActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$1402(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->overrideCancel(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v3, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2, p1, p2}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Lorg/telegram/tgnet/TLRPC$Chat;ZLjava/lang/Runnable;)V

    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->migrateIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return v1
.end method

.method public onJoinToSendToggle(ZLjava/lang/Runnable;)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatLinkActivity;->access$1500(Lorg/telegram/ui/ChatLinkActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ChatLinkActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatLinkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatLinkActivity;->access$1502(Lorg/telegram/ui/ChatLinkActivity;Z)Z

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->overrideCancel(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v3, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p1, p2}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;Lorg/telegram/tgnet/TLRPC$Chat;ZLjava/lang/Runnable;)V

    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/ChatLinkActivity$ListAdapter$1;->migrateIfNeeded(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return v1
.end method
