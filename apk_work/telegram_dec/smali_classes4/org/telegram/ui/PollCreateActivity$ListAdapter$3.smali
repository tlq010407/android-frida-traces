.class Lorg/telegram/ui/PollCreateActivity$ListAdapter$3;
.super Lorg/telegram/ui/Cells/PollEditTextCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PollCreateActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PollCreateActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PollCreateActivity$ListAdapter;Landroid/content/Context;ZILandroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;ZILandroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onActionModeStart(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/view/ActionMode;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->hasSelection()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const p2, 0x1020021

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->access$1900(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/ChatActivity;->fillActionModeMenu(Landroid/view/Menu;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    :cond_1
    return-void
.end method

.method protected onEditTextFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/PollCreateActivity;->access$6200(Lorg/telegram/ui/PollCreateActivity;Lorg/telegram/ui/Cells/PollEditTextCell;Z)V

    return-void
.end method

.method protected onEmojiButtonClicked(Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/PollCreateActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/PollCreateActivity;->access$6300(Lorg/telegram/ui/PollCreateActivity;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    return-void
.end method
