.class Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TranslateAlert2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaddedAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private mainViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mainViewType:I

    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mMainView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mMainView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mainViewType:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-nez p2, :cond_0

    new-instance p2, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter$1;

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter$1;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mMainView:Landroid/view/View;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public updateMainView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mMainView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mainViewType:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mainViewType:I

    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
