.class Lorg/telegram/ui/WebviewActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WebviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WebviewActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity$1;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$1;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/WebviewActivity;->access$000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$1;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$1;->this$0:Lorg/telegram/ui/WebviewActivity;

    iget-object v1, v0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/WebviewActivity;->access$200(Lorg/telegram/ui/WebviewActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$1;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/WebviewActivity;->access$000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->sendTyping(JJII)Z

    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$1;->this$0:Lorg/telegram/ui/WebviewActivity;

    iget-object v0, v0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x61a8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
