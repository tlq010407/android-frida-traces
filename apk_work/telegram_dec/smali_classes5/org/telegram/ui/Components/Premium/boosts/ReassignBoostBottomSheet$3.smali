.class Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Ljava/util/List;

    move-result-object v0

    sub-int/2addr p2, v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setBoost(Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setChecked(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(F)V

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    sget p2, Lorg/telegram/messenger/R$string;->BoostingRemoveBoostFrom:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$602(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->setData(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v0, 0x16

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-direct {p2, p1, v1, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    :cond_3
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;->this$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->showBoosts(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
