.class Lorg/telegram/ui/Components/ChatAvatarContainer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAvatarContainer;->openSetTimer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field final synthetic val$scrimPopupWindow:[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAvatarContainer;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->val$scrimPopupWindow:[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->val$scrimPopupWindow:[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setAutoDeleteHistory(II)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/MessagesController;->setDialogHistoryTTL(JI)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$2;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->access$100(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v0, :cond_2

    iget p1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    goto :goto_0

    :cond_2
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p2

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public synthetic showGlobalAutoDeleteScreen()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback$-CC;->$default$showGlobalAutoDeleteScreen(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;)V

    return-void
.end method
