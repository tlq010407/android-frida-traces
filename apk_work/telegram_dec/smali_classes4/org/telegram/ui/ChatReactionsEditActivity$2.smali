.class Lorg/telegram/ui/ChatReactionsEditActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatReactionsEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatReactionsEditActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/ChatReactionsEditActivity;->isChannel:Z

    const/4 v2, 0x0

    invoke-static {v0}, Lorg/telegram/ui/ChatReactionsEditActivity;->access$200(Lorg/telegram/ui/ChatReactionsEditActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatReactionsEditActivity;->access$100(Lorg/telegram/ui/ChatReactionsEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatReactionsEditActivity;->access$100(Lorg/telegram/ui/ChatReactionsEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    return v2
.end method

.method public getItemViewType(I)I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatReactionsEditActivity;->isChannel:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    if-ne p1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    :goto_1
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChatReactionsEditActivity$2;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/AvailableReactionCell;

    iget-object v0, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatReactionsEditActivity;->access$100(Lorg/telegram/ui/ChatReactionsEditActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/ChatReactionsEditActivity;->isChannel:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    :goto_0
    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object v0, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatReactionsEditActivity;->access$200(Lorg/telegram/ui/ChatReactionsEditActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatReactionsEditActivity;->access$300(Lorg/telegram/ui/ChatReactionsEditActivity;)I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/AvailableReactionCell;->bind(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;ZI)V

    goto :goto_3

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->OnlyAllowThisReactions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    iget-boolean v0, p2, Lorg/telegram/ui/ChatReactionsEditActivity;->isChannel:Z

    if-eqz v0, :cond_5

    invoke-static {p2}, Lorg/telegram/ui/ChatReactionsEditActivity;->access$000(Lorg/telegram/ui/ChatReactionsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget p2, Lorg/telegram/messenger/R$string;->EnableReactionsChannelInfo:I

    goto :goto_2

    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->EnableReactionsGroupInfo:I

    goto :goto_2

    :goto_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    iget p2, p2, Lorg/telegram/ui/ChatReactionsEditActivity;->selectedType:I

    if-ne p2, v1, :cond_6

    sget p2, Lorg/telegram/messenger/R$string;->EnableSomeReactionsInfo:I

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_6
    if-nez p2, :cond_7

    sget p2, Lorg/telegram/messenger/R$string;->EnableAllReactionsInfo:I

    goto :goto_2

    :cond_7
    if-ne p2, v2, :cond_8

    sget p2, Lorg/telegram/messenger/R$string;->DisableReactionsInfo:I

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Cells/AvailableReactionCell;

    iget-object v0, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Lorg/telegram/ui/Cells/AvailableReactionCell;-><init>(Landroid/content/Context;ZZ)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatReactionsEditActivity;->contorlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatReactionsEditActivity;->contorlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatReactionsEditActivity;->contorlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->this$0:Lorg/telegram/ui/ChatReactionsEditActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatReactionsEditActivity;->contorlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->val$context:Landroid/content/Context;

    const/16 v1, 0x17

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatReactionsEditActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
