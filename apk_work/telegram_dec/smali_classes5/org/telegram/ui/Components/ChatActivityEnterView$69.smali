.class Lorg/telegram/ui/Components/ChatActivityEnterView$69;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/browser/Browser$Progress;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$botId:J

.field final synthetic val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$replyMessageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;JLorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iput-wide p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$botId:J

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iput-object p6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iget-wide v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$botId:J

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$button:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    iget-object v10, v1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    instance-of v11, v1, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSimpleWebView;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move v12, v1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-nez v1, :cond_3

    const-wide/16 v1, 0x0

    :goto_1
    move-wide v13, v1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v1

    goto :goto_1

    :goto_2
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v4 .. v22}, Lorg/telegram/ui/bots/WebViewRequestProps;->of(IJJLjava/lang/String;Ljava/lang/String;IIJZLorg/telegram/tgnet/TLRPC$BotApp;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;IZZ)Lorg/telegram/ui/bots/WebViewRequestProps;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tryReopenTab(Lorg/telegram/ui/bots/WebViewRequestProps;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/bots/BotCommandsMenuView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/bots/BotCommandsMenuView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/bots/BotCommandsMenuView;->setOpened(Z)V

    :cond_4
    return-void

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/MessagesController;->showCantOpenAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance v2, Lorg/telegram/ui/bots/BotWebViewSheet;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/bots/BotWebViewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->setParentActivity(Landroid/app/Activity;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->requestWebView(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/bots/WebViewRequestProps;)V

    invoke-virtual {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->show()V

    return-void

    :cond_8
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
