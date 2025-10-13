.class public Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;,
        Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;,
        Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;
    }
.end annotation


# instance fields
.field private animationCallback:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

.field private animator:Landroid/animation/ValueAnimator;

.field public forceUseStableId:Z

.field public isDialogs:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private oldStableIds:Ljava/util/HashMap;

.field public positionToOldView:Landroid/util/SparseArray;

.field private recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private scrollDirection:I

.field private scrollListener:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;


# direct methods
.method public static synthetic $r8$lambda$XKJ0bGsG8BPWiTbxGVyGlTBdt7k(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;IIZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->lambda$scrollToPosition$0(IIZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->oldStableIds:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->oldStableIds:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animationCallback:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollListener:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;

    return-object p0
.end method

.method private clear()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->onAnimationEnd()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$scrollToPosition$0(IIZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZZ)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->clear()V

    return-void
.end method

.method public scrollToPosition(IIZZ)V
    .locals 6

    .line 0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZZ)V

    return-void
.end method

.method public scrollToPosition(IIZZZ)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_1

    iget-object p5, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p5

    new-instance v6, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;IIZZ)V

    invoke-virtual {p5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result p5

    if-eqz p5, :cond_2

    return-void

    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result p5

    if-eqz p5, :cond_2

    return-void

    :cond_2
    if-eqz p4, :cond_11

    iget p4, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollDirection:I

    const/4 p5, -0x1

    if-ne p4, p5, :cond_3

    goto/16 :goto_7

    :cond_3
    iget-object p4, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-eqz p4, :cond_10

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p5

    const-string v0, "view_animations"

    const/4 v1, 0x1

    invoke-interface {p5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-nez p5, :cond_4

    goto/16 :goto_6

    :cond_4
    iget p5, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollDirection:I

    const/4 v0, 0x0

    if-nez p5, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setScrollEnabled(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object p5, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {p5}, Landroid/util/SparseArray;->clear()V

    iget-object p5, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    iget-object p5, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->oldStableIds:Ljava/util/HashMap;

    invoke-virtual {p5}, Ljava/util/HashMap;->clear()V

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p4, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v7, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->forceUseStableId:Z

    if-eqz v3, :cond_9

    :cond_6
    iget-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->forceUseStableId:Z

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-gez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v7

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->oldStableIds:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_a

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2, v1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    :cond_a
    :goto_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_b
    iget-object p4, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->prepareForFastScroll()V

    instance-of p4, v4, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    if-eqz p4, :cond_c

    move-object p4, v4

    check-cast p4, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    :goto_4
    move-object v7, p4

    goto :goto_5

    :cond_c
    const/4 p4, 0x0

    goto :goto_4

    :goto_5
    iget-object p4, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p4, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animationCallback:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->onStartAnimation()V

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-boolean v1, p1, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->onAnimationStart()V

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;-><init>(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/util/ArrayList;ZLorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_10
    :goto_6
    iget-object p4, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p4, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return-void

    :cond_11
    :goto_7
    iget-object p4, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p4, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return-void
.end method

.method public setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animationCallback:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    return-void
.end method

.method public setScrollDirection(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollDirection:I

    return-void
.end method

.method public setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollListener:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;

    return-void
.end method
