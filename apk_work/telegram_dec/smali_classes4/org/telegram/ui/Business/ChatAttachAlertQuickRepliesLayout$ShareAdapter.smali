.class public Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareAdapter"
.end annotation


# instance fields
.field private currentAccount:I

.field private mContext:Landroid/content/Context;

.field private replies:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->this$0:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->replies:Ljava/util/ArrayList;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->currentAccount:I

    iput-object p2, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Business/QuickRepliesController;->getFilteredReplies()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->getSectionCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-ltz p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->getSectionCount()I

    move-result v0

    sub-int/2addr v0, p2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    const/4 p1, 0x0

    aput p1, p3, p1

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method

.method public getSectionCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->getSectionCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->replies:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p3, p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->replies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->replies:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Business/QuickRepliesController;->getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Business/QuickRepliesController;->getFilteredReplies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->this$0:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-static {v0}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;->access$1700(Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;)V

    return-void
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->getSectionCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->getCountForSection(I)I

    move-result p1

    sub-int/2addr p1, v3

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    instance-of p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    if-eqz p1, :cond_2

    check-cast v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    const/4 p1, 0x0

    invoke-virtual {p3, v0, p1, v3}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->set(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->this$0:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-static {p1}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;->access$1600(Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;)Ljava/util/HashSet;

    move-result-object p1

    iget p2, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p3, p1, v2}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;->setChecked(ZZ)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;

    iget-object p2, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout$ShareAdapter;->this$0:Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;

    invoke-static {v0}, Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;->access$1500(Lorg/telegram/ui/Business/ChatAttachAlertQuickRepliesLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Business/QuickRepliesActivity$QuickReplyView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
