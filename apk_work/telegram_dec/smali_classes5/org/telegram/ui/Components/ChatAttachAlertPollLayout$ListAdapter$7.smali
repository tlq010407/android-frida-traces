.class Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$cell:Lorg/telegram/ui/Cells/PollEditTextCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->val$cell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->val$cell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    sub-int v2, v1, v2

    if-ltz v2, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ImageSpan;

    const/4 v5, 0x0

    invoke-interface {p1, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ImageSpan;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    invoke-interface {p1, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->val$cell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->getEditField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {p1, v3, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    const/high16 v4, 0x43260000    # 166.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDirection(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDirection(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v3

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->val$cell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/SuggestEmojiView;->setDelegate(Lorg/telegram/ui/Components/SuggestEmojiView$AnchorViewDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->fireUpdate()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/CharSequence;

    move-result-object v0

    aput-object p1, v0, v2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->val$cell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    nop

    :cond_4
    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
