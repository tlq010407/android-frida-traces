.class public Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAdapter"
.end annotation


# instance fields
.field private lastSearchId:I

.field private mContext:Landroid/content/Context;

.field private reqId:I

.field private searchResult:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;


# direct methods
.method public static synthetic $r8$lambda$FY7XYqsZtmgqCjhtKVJSYT9-ayc(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->lambda$updateSearchResults$2(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RiP-6jzfMkhwYnoDKWBggkE1DPw(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->lambda$search$0(Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u8xM-HCRE_L1eW6dqrmfxwxIYVA(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->lambda$search$1(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->reqId:I

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$search$0(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->lastSearchId:I

    invoke-direct {p0, p2, p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v4, v3

    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v2

    if-eqz v1, :cond_4

    aput-object v1, v5, v3

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$AudioEntry;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_8

    aget-object v7, v5, v6

    iget-object v8, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_6

    iget-object v9, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    invoke-direct {p0, v0, p1, p3}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$search$1(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$700(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateSearchResults$2(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->NoAudioFoundInfo:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "NoAudioFoundInfo"

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
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

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$1000(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 p2, p2, -0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-eq p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Landroid/util/LongSparseArray;

    move-result-object p2

    iget-wide v0, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-virtual {p2, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->mContext:Landroid/content/Context;

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
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$1;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->setCheckForButtonPress(Z)V

    move-object p1, p2

    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->lastSearchId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->lastSearchId:I

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method
