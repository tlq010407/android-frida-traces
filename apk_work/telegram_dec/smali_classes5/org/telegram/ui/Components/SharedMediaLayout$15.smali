.class Lorg/telegram/ui/Components/SharedMediaLayout$15;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v2

    const/4 v4, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemViewType(I)I

    move-result p1

    if-ne p1, v4, :cond_2

    return v0

    :cond_2
    return v3

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->getItemViewType(I)I

    move-result p1

    if-ne p1, v4, :cond_4

    return v0

    :cond_4
    return v3

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->getItemViewType(I)I

    move-result p1

    if-ne p1, v4, :cond_6

    return v0

    :cond_6
    return v3

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GifAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$600(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanSizeForItem(I)I

    move-result p1

    return p1
.end method
