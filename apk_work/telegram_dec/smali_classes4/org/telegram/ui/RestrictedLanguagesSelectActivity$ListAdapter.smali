.class Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/RestrictedLanguagesSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private search:Z

.field final synthetic this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->search:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->search:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$400(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$400(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$500(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$600(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->search:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$500(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckbox2Cell;

    iget-boolean v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->search:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-ltz p2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$400(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$400(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/telegram/messenger/TranslateController$Language;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$400(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$500(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$500(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)I

    move-result v0

    if-le p2, v0, :cond_4

    add-int/lit8 p2, p2, -0x1

    :cond_4
    if-ltz p2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$600(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$600(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/TranslateController$Language;

    iget-object v3, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$600(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne p2, v3, :cond_5

    move-object v3, v0

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_5
    move-object v3, v0

    :cond_6
    const/4 p2, 0x0

    :goto_1
    if-nez v3, :cond_7

    return-void

    :cond_7
    iget-object v0, v3, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, v3, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    :cond_8
    iget-object v4, v3, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    xor-int/2addr p2, v1

    invoke-virtual {p1, v0, v4, v2, p2}, Lorg/telegram/ui/Cells/TextCheckbox2Cell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$700(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/HashSet;

    move-result-object p2

    iget-object v0, v3, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckbox2Cell;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    sget p2, Lorg/telegram/messenger/R$string;->ChooseLanguages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckbox2Cell;

    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckbox2Cell;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
