.class Lorg/telegram/ui/Components/EmojiView$TrendingListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrendingListView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TrendingListView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorRadius(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$TrendingListView$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/EmojiView$TrendingListView$1;-><init>(Lorg/telegram/ui/Components/EmojiView$TrendingListView;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiView;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TrendingListView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$5000(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
