.class Lorg/telegram/ui/ChatActivity$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$13;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$13;

.field final synthetic val$canDeleteHistory:Z


# direct methods
.method public static synthetic $r8$lambda$9Euo7HKyr5HLr_FvyNjkBjplnwE(Lorg/telegram/ui/ChatActivity$13$1;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$13$1;->lambda$run$0(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ifRSfhF2Cxa72Jv8eLj3Ool94oc(Lorg/telegram/ui/ChatActivity$13$1;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$13$1;->lambda$run$1(ZI)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity$13;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$13$1;->this$1:Lorg/telegram/ui/ChatActivity$13;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$13$1;->val$canDeleteHistory:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(ZZ)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$13$1;->this$1:Lorg/telegram/ui/ChatActivity$13;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$13;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/ChatActivity;->performHistoryClear(ZZ)V

    return-void
.end method

.method private synthetic lambda$run$1(ZI)V
    .locals 11

    const/16 v0, 0x32

    if-lt p2, v0, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$13$1;->this$1:Lorg/telegram/ui/ChatActivity$13;

    iget-object v0, p2, Lorg/telegram/ui/ChatActivity$13;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    new-instance v9, Lorg/telegram/ui/ChatActivity$13$1$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/ChatActivity$13$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$13$1;Z)V

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$13$1;->this$1:Lorg/telegram/ui/ChatActivity$13;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$13;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v8, p1

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->createClearOrDeleteDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$13$1;->this$1:Lorg/telegram/ui/ChatActivity$13;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity$13;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/ChatActivity;->performHistoryClear(ZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$13$1;->this$1:Lorg/telegram/ui/ChatActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$13;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$13$1;->val$canDeleteHistory:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$13$1;->this$1:Lorg/telegram/ui/ChatActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$13;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$13$1;->val$canDeleteHistory:Z

    new-instance v3, Lorg/telegram/ui/ChatActivity$13$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/ChatActivity$13$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$13$1;Z)V

    invoke-virtual {p1, v0, v1, v3}, Lorg/telegram/messenger/MessagesStorage;->getMessagesCount(JLorg/telegram/messenger/MessagesStorage$IntCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$13$1;->this$1:Lorg/telegram/ui/ChatActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$13;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$13$1;->val$canDeleteHistory:Z

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->performHistoryClear(ZZ)V

    :goto_0
    return-void
.end method
