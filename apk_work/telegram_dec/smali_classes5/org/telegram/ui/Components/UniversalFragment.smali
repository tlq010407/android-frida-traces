.class public abstract Lorg/telegram/ui/Components/UniversalFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# instance fields
.field public listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private savedScrollOffset:I

.field private savedScrollPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->savedScrollPosition:I

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/UniversalFragment;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->savedScrollPosition:I

    return p1
.end method


# virtual methods
.method public applyScrolledPosition()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->savedScrollPosition:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v2, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v3, p0, Lorg/telegram/ui/Components/UniversalFragment;->savedScrollOffset:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/UniversalFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Components/UniversalFragment$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/UniversalFragment$1;-><init>(Lorg/telegram/ui/Components/UniversalFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Lorg/telegram/ui/Components/UniversalFragment$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/UniversalFragment$2;-><init>(Lorg/telegram/ui/Components/UniversalFragment;Landroid/content/Context;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/UniversalFragment$3;

    new-instance v4, Lorg/telegram/ui/Components/UniversalFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/UniversalFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UniversalFragment;)V

    new-instance v5, Lorg/telegram/ui/Components/UniversalFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/UniversalFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/UniversalFragment;)V

    new-instance v6, Lorg/telegram/ui/Components/UniversalFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/UniversalFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/UniversalFragment;)V

    move-object v1, p1

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/UniversalFragment$3;-><init>(Lorg/telegram/ui/Components/UniversalFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
.end method

.method protected abstract getTitle()Ljava/lang/CharSequence;
.end method

.method protected abstract onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
.end method

.method protected abstract onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
.end method

.method public saveScrollPosition()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eq v5, v0, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-ge v7, v2, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    move v2, v1

    move v4, v5

    move-object v1, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    iput v4, p0, Lorg/telegram/ui/Components/UniversalFragment;->savedScrollPosition:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->savedScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/UniversalFragment;->savedScrollPosition:I

    if-nez v2, :cond_2

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-le v0, v3, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->savedScrollOffset:I

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    return-void
.end method
