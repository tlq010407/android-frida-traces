.class Lorg/telegram/ui/ChatActivity$153;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->processLoadedDiscussionMessage(ZLorg/telegram/tgnet/TLRPC$TL_messages_discussionMessage;ZLorg/telegram/tgnet/TLRPC$messages_Messages;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$chatActivity:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$commentsClassGuid:I

.field final synthetic val$openCommentsChat:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$cOjKPwsL-H_8mhchIf9p5ZP9WOc(Lorg/telegram/ui/ChatActivity;II[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$153;->lambda$didReceivedNotification$0(Lorg/telegram/ui/ChatActivity;II[Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;ILjava/lang/Runnable;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$153;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$153;->val$commentsClassGuid:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$153;->val$openCommentsChat:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$153;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$didReceivedNotification$0(Lorg/telegram/ui/ChatActivity;II[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity;->didReceivedNotification(II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    if-ne p1, v0, :cond_0

    const/16 v1, 0xa

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ChatActivity$153;->val$commentsClassGuid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$153;->val$openCommentsChat:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$153;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity$153$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$153$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity;II[Ljava/lang/Object;)V

    const-wide/16 p1, 0x32

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$153;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$72800(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method
