.class Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesController$MessagesLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openChat(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

.field final synthetic val$chatActivity:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$progress:Lorg/telegram/messenger/browser/Browser$Progress;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->val$progress:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->val$progress:Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-virtual {v0}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onMessagesLoaded(Z)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->val$progress:Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
