.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private onBack:Ljava/lang/Runnable;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public reversedLayout:Z

.field private searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iput-object p5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->onBack:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$802(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1a

    if-ltz p2, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->reversedLayout:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-lez p2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v2

    sub-int/2addr p2, v4

    :goto_0
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;

    goto :goto_1

    :cond_1
    add-int/2addr p2, v4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object p2, v3

    :goto_1
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    iget p2, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p2, v1, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_a

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->sendAs:Z

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setIsSendAs(ZZ)V

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->type:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v1, :cond_5

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->typeCount:I

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, v1, v5, v6}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setType(IILorg/telegram/tgnet/TLRPC$User;)V

    :cond_4
    :goto_3
    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setCheckboxAlpha(FZ)V

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_6

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    if-nez v1, :cond_4

    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$9300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;I)V

    :cond_7
    :goto_4
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->checked:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->halfChecked:Z

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_5
    invoke-virtual {p1, v4, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setChecked(ZZ)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setDivider(Z)V

    iget-boolean p2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->red:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->setRedCheckbox(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$6800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;->access$10702(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;Z)Z

    goto/16 :goto_b

    :cond_a
    const/4 v5, 0x2

    if-ne v1, v5, :cond_b

    goto/16 :goto_b

    :cond_b
    const/4 v5, -0x1

    if-nez v1, :cond_c

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p2, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    :goto_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    :cond_c
    if-ne v1, v5, :cond_10

    iget p2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    const/16 v1, 0x21

    if-lez p2, :cond_e

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-lez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$10800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_7

    :cond_d
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    :goto_7
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->subtractHeight:I

    sub-int/2addr p2, v0

    :goto_8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    iget p2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->padHeight:I

    if-ltz p2, :cond_f

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    const v0, 0x3e99999a    # 0.3f

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_8

    :goto_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v5, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    :cond_10
    if-ne v1, v4, :cond_11

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->searchField:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->resultContainerHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p2, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_6

    :cond_11
    const/4 v4, 0x4

    if-ne v1, v4, :cond_12

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell2;

    iget-object p2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text2:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell2;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_12
    const/4 v4, 0x5

    if-ne v1, v4, :cond_13

    :try_start_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :cond_13
    const/4 v4, 0x6

    if-ne v1, v4, :cond_15

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    if-nez p2, :cond_14

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_14
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    iget-object p2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_15
    const/4 v2, 0x7

    if-ne v1, v2, :cond_17

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->resId:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    goto :goto_a

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result v0

    :goto_a
    invoke-virtual {p1, v1, v0, p2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_b

    :cond_17
    const/16 v2, 0x9

    if-ne v1, v2, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_18

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueDrawable(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_b

    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0, p2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_b

    :cond_19
    const/16 p2, 0x8

    if-ne v1, p2, :cond_1a

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :catch_0
    :cond_1a
    :goto_b
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$PadView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$PadView;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x23

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x22

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$UserCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell2;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$HeaderCell2;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0x8

    if-ne p2, v0, :cond_5

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    new-instance p2, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2, p1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lorg/telegram/ui/Components/StickerEmptyView;->linearLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    move-object p1, p2

    goto :goto_2

    :cond_6
    const/4 p1, 0x6

    if-ne p2, p1, :cond_7

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const p2, -0xf2f2f3

    goto :goto_1

    :cond_7
    const/4 p1, 0x7

    if-ne p2, p1, :cond_8

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v2, 0x17

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    :cond_8
    const/16 p1, 0x9

    if-ne p2, p1, :cond_9

    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x17

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_2

    :cond_9
    new-instance p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;->context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$Adapter;Landroid/content/Context;)V

    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
