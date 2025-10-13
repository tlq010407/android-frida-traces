.class Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;
.super Lorg/telegram/ui/Cells/PollEditTextCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/content/Context;ZILandroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;ZILandroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected drawDivider()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method protected isChecked(Lorg/telegram/ui/Cells/PollEditTextCell;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v0

    aget-boolean p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

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
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/ChatActivity;->fillActionModeMenu(Landroid/view/Menu;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    :cond_1
    return-void
.end method

.method protected onCheckBoxClick(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Cells/PollEditTextCell;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->setChecked(ZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->onCheckBoxClick(Lorg/telegram/ui/Cells/PollEditTextCell;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v0

    aput-boolean p2, v0, p1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    return-void
.end method

.method protected onEditTextFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$4200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;Z)V

    return-void
.end method

.method protected onEmojiButtonClicked(Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    return-void
.end method

.method protected onFieldTouchUp(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    return-void
.end method

.method public onPastedMultipleLines(Ljava/util/ArrayList;)Z
    .locals 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v2

    :goto_1
    if-le v3, v0, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    aput-object v4, v3, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2208(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3702(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Landroidx/recyclerview/widget/DefaultItemAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return v2
.end method

.method protected shouldShowCheckBox()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v0

    return v0
.end method
