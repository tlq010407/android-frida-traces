.class Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TooManyCommunitiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field endPaddingPosition:I

.field headerPosition:I

.field hintPosition:I

.field inactiveChatsEndRow:I

.field inactiveChatsStartRow:I

.field rowCount:I

.field shadowPosition:I

.field final synthetic this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TooManyCommunitiesActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->hintPosition:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->shadowPosition:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->headerPosition:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->endPaddingPosition:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x5

    return p1

    :cond_3
    const/4 p1, 0x4

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->inactiveChatsStartRow:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->inactiveChatsEndRow:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->updateRows()V

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->headerPosition:I

    if-lt p2, v0, :cond_0

    if-lez v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$900(Lorg/telegram/ui/TooManyCommunitiesActivity;)F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$700(Lorg/telegram/ui/TooManyCommunitiesActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->inactiveChatsStartRow:I

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$1000(Lorg/telegram/ui/TooManyCommunitiesActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->inactiveChatsStartRow:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->inactiveChatsEndRow:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    if-eq p2, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1, v0, v2, v1, v4}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    iget-object p2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p2}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$1100(Lorg/telegram/ui/TooManyCommunitiesActivity;)Ljava/util/Set;

    move-result-object p2

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    goto/16 :goto_2

    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/EmptyCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v4, 0x15

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    const/16 p1, 0x36

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    sget p1, Lorg/telegram/messenger/R$string;->InactiveChats:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v2, p1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    new-instance v1, Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$802(Lorg/telegram/ui/TooManyCommunitiesActivity;Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;)Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {p1}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$800(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    move-result-object p2

    iget-object p1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    iget p1, p1, Lorg/telegram/ui/TooManyCommunitiesActivity;->type:I

    if-nez p1, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->TooManyCommunitiesHintJoin:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    sget p1, Lorg/telegram/messenger/R$string;->TooManyCommunitiesHintEdit:I

    goto :goto_0

    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->TooManyCommunitiesHintCreate:I

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$800(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;->setMessageText(Ljava/lang/String;)V

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/high16 v0, 0x41b80000    # 23.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$800(Lorg/telegram/ui/TooManyCommunitiesActivity;)Lorg/telegram/ui/Cells/TooManyCommunitiesHintCell;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public updateRows()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->headerPosition:I

    iput v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->inactiveChatsStartRow:I

    iput v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->inactiveChatsEndRow:I

    iput v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->endPaddingPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->hintPosition:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->rowCount:I

    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->shadowPosition:I

    iget-object v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v2}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$700(Lorg/telegram/ui/TooManyCommunitiesActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->headerPosition:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->inactiveChatsStartRow:I

    iget-object v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->this$0:Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-static {v0}, Lorg/telegram/ui/TooManyCommunitiesActivity;->access$700(Lorg/telegram/ui/TooManyCommunitiesActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->inactiveChatsEndRow:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/TooManyCommunitiesActivity$Adapter;->endPaddingPosition:I

    :cond_0
    return-void
.end method
