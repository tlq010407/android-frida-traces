.class Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$CategoryAdapterRecycler;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryAdapterRecycler"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$CategoryAdapterRecycler;->this$1:Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Lorg/telegram/ui/WallpapersListActivity$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$CategoryAdapterRecycler;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    invoke-static {}, Lorg/telegram/ui/WallpapersListActivity;->access$3300()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/WallpapersListActivity$ColorCell;

    invoke-static {}, Lorg/telegram/ui/WallpapersListActivity;->access$3300()[I

    move-result-object v0

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/WallpapersListActivity$ColorCell;->setColor(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance p1, Lorg/telegram/ui/WallpapersListActivity$ColorCell;

    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$CategoryAdapterRecycler;->this$1:Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;

    iget-object v0, p2, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p2}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->access$3200(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/telegram/ui/WallpapersListActivity$ColorCell;-><init>(Lorg/telegram/ui/WallpapersListActivity;Landroid/content/Context;)V

    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
