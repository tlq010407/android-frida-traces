.class Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LiteModeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LiteModeSettingsActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/LiteModeSettingsActivity;Lorg/telegram/ui/LiteModeSettingsActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    if-ltz p2, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    invoke-virtual {p1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->update()V

    goto/16 :goto_7

    :cond_2
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_9

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    add-int/2addr p2, v2

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    iget p2, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq p2, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_3
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_6
    if-eqz v0, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    goto :goto_3

    :cond_8
    const/4 p2, 0x0

    goto :goto_4

    :cond_9
    const/4 v5, 0x3

    if-eq v1, v5, :cond_b

    const/4 v5, 0x4

    if-ne v1, v5, :cond_a

    goto :goto_5

    :cond_a
    const/4 p2, 0x5

    if-ne v1, p2, :cond_d

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    iget p2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->type:I

    if-ne p2, v2, :cond_d

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "view_animations"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iget-object v0, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p2, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_7

    :cond_b
    :goto_5
    add-int/2addr p2, v2

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    iget p2, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq p2, v3, :cond_c

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->set(Lorg/telegram/ui/LiteModeSettingsActivity$Item;Z)V

    :cond_d
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p2, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    :goto_0
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter$1;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter$1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    if-eq p2, p1, :cond_5

    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    if-ne p2, p1, :cond_4

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    new-instance p1, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/content/Context;)V

    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
