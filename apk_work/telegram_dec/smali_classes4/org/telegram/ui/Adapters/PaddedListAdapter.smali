.class public Lorg/telegram/ui/Adapters/PaddedListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# instance fields
.field private final PADDING_VIEW_TYPE:I

.field private lastPadding:I

.field private mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private padding:Ljava/lang/Integer;

.field public paddingView:Landroid/view/View;

.field public paddingViewAttached:Z

.field private wrappedAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const v0, -0xf0360

    iput v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->PADDING_VIEW_TYPE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->padding:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    new-instance v0, Lorg/telegram/ui/Adapters/PaddedListAdapter$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Adapters/PaddedListAdapter$2;-><init>(Lorg/telegram/ui/Adapters/PaddedListAdapter;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->mDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iput-object p1, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->wrappedAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/PaddedListAdapter;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/PaddedListAdapter;->getPadding(I)I

    move-result p0

    return p0
.end method

.method private getPadding(I)I
    .locals 0

    .line 0
    iget-object p1, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->padding:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->lastPadding:I

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->wrappedAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const p1, -0xf0360

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->wrappedAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getPadding()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->lastPadding:I

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->wrappedAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    if-lez p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->wrappedAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const v0, -0xf0360

    if-ne p2, v0, :cond_0

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance v0, Lorg/telegram/ui/Adapters/PaddedListAdapter$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Adapters/PaddedListAdapter$1;-><init>(Lorg/telegram/ui/Adapters/PaddedListAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->wrappedAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setPadding(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->padding:Ljava/lang/Integer;

    iget-object p1, p0, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
