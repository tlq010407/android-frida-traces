.class Lorg/telegram/ui/FilteredSearchView$3;
.super Lorg/telegram/ui/Components/BlurredRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FilteredSearchView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FilteredSearchView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$3;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView$3;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v1}, Lorg/telegram/ui/FilteredSearchView;->access$300(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BlurredRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView$3;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v1}, Lorg/telegram/ui/FilteredSearchView;->access$300(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BlurredRecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method
