.class Lorg/telegram/messenger/MessagesController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesController$MessagesLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/browser/Browser$Progress;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$progress:Lorg/telegram/messenger/browser/Browser$Progress;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$2;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$2;->val$progress:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$2;->val$progress:Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-virtual {v0}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public onMessagesLoaded(Z)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$2;->val$progress:Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
