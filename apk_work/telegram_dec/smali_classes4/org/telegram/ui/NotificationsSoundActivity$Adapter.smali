.class Lorg/telegram/ui/NotificationsSoundActivity$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/NotificationsSoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NotificationsSoundActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/NotificationsSoundActivity;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/NotificationsSoundActivity;Lorg/telegram/ui/NotificationsSoundActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;-><init>(Lorg/telegram/ui/NotificationsSoundActivity;)V

    return-void
.end method

.method private getTone(I)Lorg/telegram/ui/NotificationsSoundActivity$Tone;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesStartRow:I

    if-lt p1, v1, :cond_0

    iget v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesEndRow:I

    if-ge p1, v2, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    :goto_0
    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    return-object p1

    :cond_0
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesStartRow:I

    if-lt p1, v1, :cond_1

    iget v2, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesEndRow:I

    if-ge p1, v2, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->rowCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->getTone(I)Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    int-to-long v0, p1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesHeaderRow:I

    if-ne p1, v1, :cond_1

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_1
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesHeaderRow:I

    if-ne p1, v1, :cond_2

    const-wide/16 v0, 0x2

    return-wide v0

    :cond_2
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->uploadRow:I

    if-ne p1, v1, :cond_3

    const-wide/16 v0, 0x3

    return-wide v0

    :cond_3
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow:I

    if-ne p1, v1, :cond_4

    const-wide/16 v0, 0x4

    return-wide v0

    :cond_4
    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow2:I

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x5

    return-wide v0

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesStartRow:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesEndRow:I

    if-ge p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesHeaderRow:I

    if-eq p1, v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesHeaderRow:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->uploadRow:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow:I

    if-eq p1, v1, :cond_4

    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->dividerRow2:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

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
    .locals 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/CreationTextCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    iget-object v4, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v4, v4, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    iget-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v5, v5, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v2, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget p2, Lorg/telegram/messenger/R$string;->UploadSound:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v1}, Lorg/telegram/ui/Cells/CreationTextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_5

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v1, v0, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesHeaderRow:I

    if-ne p2, v1, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->TelegramTones:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_2
    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesHeaderRow:I

    if-ne p2, v0, :cond_a

    sget p2, Lorg/telegram/messenger/R$string;->SystemTones:I

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v3, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesStartRow:I

    if-lt p2, v3, :cond_4

    iget v4, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesEndRow:I

    if-ge p2, v4, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v4, v3, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesStartRow:I

    if-lt p2, v4, :cond_5

    iget v5, v3, Lorg/telegram/ui/NotificationsSoundActivity;->serverTonesEndRow:I

    if-ge p2, v5, :cond_5

    iget-object v0, v3, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    sub-int v3, p2, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    :cond_5
    if-eqz v0, :cond_a

    iget-object v3, p1, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-ne v3, v0, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v5, v4, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-ne v0, v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    iget-object v4, v4, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    iget v6, v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->stableId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    iput-object v0, p1, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->tone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->access$800(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->title:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->systemTonesEndRow:I

    sub-int/2addr v0, v2

    if-eq p2, v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-static {p1, v1}, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->access$902(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;Z)Z

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->access$1000(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;)Lorg/telegram/ui/Components/RadioButton;

    move-result-object p2

    invoke-virtual {p2, v5, v3}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;->access$1100(Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;)Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_a
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/CreationTextCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v1, 0x46

    invoke-direct {p2, p1, v1, v0}, Lorg/telegram/ui/Cells/CreationTextCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 p1, 0x3d

    iput p1, p2, Lorg/telegram/ui/Cells/CreationTextCell;->startPadding:I

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$Adapter;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/NotificationsSoundActivity$ToneCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :goto_1
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
