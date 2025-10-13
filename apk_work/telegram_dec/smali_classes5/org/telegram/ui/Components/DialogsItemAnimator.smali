.class public abstract Lorg/telegram/ui/Components/DialogsItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;,
        Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;
    }
.end annotation


# static fields
.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private bottomClip:I

.field private final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field mAddAnimations:Ljava/util/ArrayList;

.field mAdditionsList:Ljava/util/ArrayList;

.field mChangeAnimations:Ljava/util/ArrayList;

.field mChangesList:Ljava/util/ArrayList;

.field mMoveAnimations:Ljava/util/ArrayList;

.field mMovesList:Ljava/util/ArrayList;

.field private mPendingAdditions:Ljava/util/ArrayList;

.field private mPendingChanges:Ljava/util/ArrayList;

.field private mPendingMoves:Ljava/util/ArrayList;

.field private mPendingRemovals:Ljava/util/ArrayList;

.field mRemoveAnimations:Ljava/util/ArrayList;

.field private removingDialog:Lorg/telegram/ui/Cells/DialogCell;

.field private topClip:I


# direct methods
.method public static synthetic $r8$lambda$1KH7iFPFYJLZVIt6F17GVHgF8tw(Lorg/telegram/ui/Components/DialogsItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->lambda$runPendingAnimations$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tmk-t5WHPBtOWx6TOR3yKVwc0EI(Lorg/telegram/ui/Components/DialogsItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->lambda$runPendingAnimations$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k34OtOvltMY4EoqnNz1n6KthLis(Lorg/telegram/ui/Components/DialogsItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->lambda$runPendingAnimations$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/DialogsItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method

.method private animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v3, v2, Lorg/telegram/ui/Cells/DialogCell;

    const-wide/16 v4, 0xb4

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/DialogCell;

    iget-object v6, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->removingDialog:Lorg/telegram/ui/Cells/DialogCell;

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v2, v6, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->topClip:I

    const v8, 0x7fffffff

    if-eq v2, v8, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v6, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->topClip:I

    sub-int/2addr v2, v6

    iput v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->bottomClip:I

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->removingDialog:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/DialogCell;->setTopClip(I)V

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->removingDialog:Lorg/telegram/ui/Cells/DialogCell;

    iget v6, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->bottomClip:I

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/DialogCell;->setBottomClip(I)V

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->bottomClip:I

    if-eq v2, v8, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v6, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->bottomClip:I

    sub-int/2addr v2, v6

    iput v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->topClip:I

    iget-object v6, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->removingDialog:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Cells/DialogCell;->setTopClip(I)V

    goto :goto_0

    :cond_1
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_2

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/DialogsItemAnimator$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/ViewGroup;F)V

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/DialogsItemAnimator$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/ViewGroup;Landroid/view/ViewOutlineProvider;)V

    :cond_2
    sget-object v2, Lorg/telegram/ui/Components/AnimationProperties;->CLIP_DIALOG_CELL_PROGRESS:Landroid/util/Property;

    new-array v1, v1, [F

    aput v7, v1, v0

    invoke-static {v3, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/DialogsItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/Components/DialogsItemAnimator$1;

    invoke-direct {v1, p0, p1, v3}, Lorg/telegram/ui/Components/DialogsItemAnimator$1;-><init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/ui/Cells/DialogCell;)V

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    :cond_3
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v7, v1, v0

    invoke-static {v3, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/DialogsItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/Components/DialogsItemAnimator$2;

    invoke-direct {v1, p0, p1, v3}, Lorg/telegram/ui/Components/DialogsItemAnimator$2;-><init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/ui/Cells/DialogCell;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/DialogsItemAnimator$3;

    invoke-direct {v3, p0, p1, v0, v2}, Lorg/telegram/ui/Components/DialogsItemAnimator$3;-><init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_3
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Components/DialogsItemAnimator;->endChangeAnimationIfNecessary(Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;)V
    .locals 1

    .line 0
    iget-object v0, p1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->endChangeAnimationIfNecessary(Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->endChangeAnimationIfNecessary(Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 0
    iget-object v0, p1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_0

    iput-object v2, p1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    iput-object v2, p1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v3, 0x1

    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_1
    return v3
.end method

.method private synthetic lambda$runPendingAnimations$0(Ljava/util/ArrayList;)V
    .locals 9

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;

    iget-object v3, v1, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v5, v1, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->fromX:I

    iget v6, v1, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->fromY:I

    iget v7, v1, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->toX:I

    iget v8, v1, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->toY:I

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/DialogsItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$runPendingAnimations$1(Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->animateChangeImpl(Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$runPendingAnimations$2(Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/DialogsItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/DialogCell;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p1, v0, :cond_2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->setMoving(Z)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/DialogsItemAnimator$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lorg/telegram/ui/Components/DialogsItemAnimator$4;-><init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
    .locals 8

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p3, p3, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/DialogsItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method animateChangeImpl(Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, p1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0xb4

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v1, [F

    const/4 v8, 0x0

    aput v8, v7, v0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array v7, v1, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v0

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v5, v6, v0

    aput-object v3, v6, v1

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/ui/Components/DialogsItemAnimator$6;

    invoke-direct {v0, p0, p1, v2, v4}, Lorg/telegram/ui/Components/DialogsItemAnimator$6;-><init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
    .locals 7

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    add-int v3, p3, v0

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    float-to-int p3, p3

    add-int v4, p4, p3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p3, p5, v3

    sub-int p4, p6, v4

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    if-eqz p4, :cond_2

    neg-int p3, p4

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p3, p2, Lorg/telegram/ui/Cells/DialogCell;

    const/4 p4, 0x1

    if-eqz p3, :cond_3

    check-cast p2, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/DialogCell;->setMoving(Z)V

    goto :goto_0

    :cond_3
    instance-of p3, p2, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    if-eqz p3, :cond_4

    check-cast p2, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iput-boolean p4, p2, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->moving:Z

    :cond_4
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance p3, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;

    move-object v1, p3

    move-object v2, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return p4
.end method

.method animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)V
    .locals 7

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v3, p5, p3

    sub-int v5, p6, p4

    const/4 p2, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    if-le p4, p6, :cond_2

    sub-int/2addr p4, p6

    iput p4, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->bottomClip:I

    goto :goto_0

    :cond_2
    iput v5, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->topClip:I

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->removingDialog:Lorg/telegram/ui/Cells/DialogCell;

    if-eqz p2, :cond_4

    iget p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->topClip:I

    const p4, 0x7fffffff

    if-eq p3, p4, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->topClip:I

    sub-int/2addr p2, p3

    iput p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->bottomClip:I

    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->removingDialog:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->setTopClip(I)V

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->removingDialog:Lorg/telegram/ui/Cells/DialogCell;

    iget p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->bottomClip:I

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Cells/DialogCell;->setBottomClip(I)V

    goto :goto_2

    :cond_3
    iget p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->bottomClip:I

    if-eq p3, p4, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->bottomClip:I

    sub-int/2addr p2, p3

    iput p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->topClip:I

    iget-object p3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->removingDialog:Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Cells/DialogCell;->setTopClip(I)V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 p2, 0xb4

    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/DialogsItemAnimator$5;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/DialogsItemAnimator$5;-><init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    const/high16 v3, -0x80000000

    if-le v2, v3, :cond_0

    instance-of v2, v1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    move-object p2, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne p1, p2, :cond_2

    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->removingDialog:Lorg/telegram/ui/Cells/DialogCell;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p1, Lorg/telegram/ui/Cells/DialogsEmptyCell;

    return p1
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->onAllAnimationsDone()V

    :cond_0
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;

    iget-object v3, v3, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->setClipProgress(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/DialogCell;->setClipProgress(F)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {p0, v4, p1}, Lorg/telegram/ui/Components/DialogsItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_5
    if-ltz v5, :cond_9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;

    iget-object v6, v6, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v6, p1, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    instance-of v4, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v4, :cond_b

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/DialogCell;->setClipProgress(F)V

    goto :goto_8

    :cond_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;

    iget-object v3, v2, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, v2, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v4, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Cells/DialogCell;->setClipProgress(F)V

    goto :goto_3

    :cond_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/DialogsItemAnimator;->endChangeAnimationIfNecessary(Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_6
    if-ltz v4, :cond_7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;

    iget-object v6, v5, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, v5, Lorg/telegram/ui/Components/DialogsItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_8
    if-ltz v4, :cond_b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v7, v6, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v7, :cond_9

    check-cast v6, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Cells/DialogCell;->setClipProgress(F)V

    goto :goto_9

    :cond_9
    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_9
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_b
    if-ltz v2, :cond_e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/DialogsItemAnimator;->endChangeAnimationIfNecessary(Lorg/telegram/ui/Components/DialogsItemAnimator$ChangeInfo;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->cancelAll(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onAllAnimationsDone()V
    .locals 0

    return-void
.end method

.method public onListScroll(I)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    int-to-float v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    int-to-float v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public prepareForRemove()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->topClip:I

    iput v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->bottomClip:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->removingDialog:Lorg/telegram/ui/Cells/DialogCell;

    return-void
.end method

.method public runPendingAnimations()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/DialogsItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lorg/telegram/ui/Components/DialogsItemAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Ljava/util/ArrayList;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    if-eqz v2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lorg/telegram/ui/Components/DialogsItemAnimator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Ljava/util/ArrayList;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    if-eqz v3, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lorg/telegram/ui/Components/DialogsItemAnimator$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/DialogsItemAnimator$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/DialogsItemAnimator;Ljava/util/ArrayList;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method
