.class Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SearchDownloadsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;


# direct methods
.method public static synthetic $r8$lambda$9okgf1Ocn_hRZOCaYmxiGLY2dmw(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Lorg/telegram/ui/Components/SearchDownloadsContainer$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;I)Lorg/telegram/messenger/MessageObject;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getMessage(I)Lorg/telegram/messenger/MessageObject;

    move-result-object p0

    return-object p0
.end method

.method private getMessage(I)Lorg/telegram/messenger/MessageObject;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v1, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    if-lt p1, v1, :cond_0

    iget v2, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    if-ge p1, v2, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    :goto_0
    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesStartRow:I

    if-lt p1, v1, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesEndRow:I

    if-ge p1, v2, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v0, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentActivity:Landroid/app/Activity;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/DownloadsInfoBottomSheet;->show(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v0, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v1, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesHeader:I

    if-eq p1, v1, :cond_3

    iget v0, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesHeader:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getMessage(I)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v1, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesHeader:I

    if-ne p2, v1, :cond_3

    sget p2, Lorg/telegram/messenger/R$string;->Downloading:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GraySectionCell;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-static {p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->access$100(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->PauseAll:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->ResumeAll:I

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->access$100(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_a

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->access$100(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->PauseAll:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->ResumeAll:I

    goto :goto_2

    :goto_3
    new-instance v1, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter$2;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;)V

    :goto_4
    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    :cond_3
    iget v0, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesHeader:I

    if-ne p2, v0, :cond_d

    sget p2, Lorg/telegram/messenger/R$string;->RecentlyDownloaded:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;)V

    goto :goto_4

    :cond_4
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getMessage(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v2, v2, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v2}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v5, v2, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    if-lt p2, v5, :cond_5

    iget v2, v2, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    if-ge p2, v2, :cond_5

    const/4 p2, 0x1

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    :goto_5
    if-ne v0, v4, :cond_9

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    iget-object v0, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    :goto_6
    iget-object v2, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-static {v2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->access$300(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    move-result-object v2

    iget-object v5, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iget-object v6, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->set(IJ)V

    iget-object v2, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v5, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v6, v5, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-static {v5}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->access$300(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->isSelected(Lorg/telegram/ui/FilteredSearchView$MessageHashId;)Z

    move-result v5

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v0, v6, :cond_7

    const/4 v6, 0x1

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_8

    const/4 v3, 0x1

    :cond_8
    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->showReorderIcon(ZZ)V

    goto :goto_a

    :cond_9
    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    :goto_8
    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/Cells/SharedAudioCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-static {v2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->access$300(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->set(IJ)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget-object v5, v2, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-static {v2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->access$300(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->isSelected(Lorg/telegram/ui/FilteredSearchView$MessageHashId;)Z

    move-result v2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v0, v5, :cond_b

    const/4 v5, 0x1

    goto :goto_9

    :cond_b
    const/4 v5, 0x0

    :goto_9
    invoke-virtual {p1, v2, v5}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v3, 0x1

    :cond_c
    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/SharedAudioCell;->showReorderIcon(ZZ)V

    :cond_d
    :goto_a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->this$0:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter$1;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;Landroid/content/Context;)V

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
