.class public Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;
.super Lorg/telegram/ui/Components/BlurredRecyclerView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogsRecyclerView"
.end annotation


# instance fields
.field public additionalPadding:I

.field animateFromSelectorPosition:F

.field animateSwitchingSelector:Z

.field private animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

.field animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

.field private appliedPaddingTop:I

.field private firstLayout:Z

.field private ignoreLayout:Z

.field lastDrawSelectorY:F

.field private lastListPadding:I

.field private lastTop:I

.field paint:Landroid/graphics/Paint;

.field private final parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

.field poller:Lorg/telegram/ui/Stories/UserListPoller;

.field rectF:Landroid/graphics/RectF;

.field private rightFragmentOpenedProgress:F

.field private selectorPaint:Landroid/graphics/Paint;

.field selectorPositionProgress:F

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field public updateDialogsOnNextDraw:Z


# direct methods
.method public static synthetic $r8$lambda$42apmN7D-9rOf-q331ohLsObjVo(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lambda$onTouchEvent$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->firstLayout:Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rectF:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    const/high16 p1, 0x43480000    # 200.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/BlurredRecyclerView;->additionalClipBottom:I

    return-void
.end method

.method static synthetic access$16700(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;ZLorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->toggleArchiveHidden(ZLorg/telegram/ui/Cells/DialogCell;)V

    return-void
.end method

.method static synthetic access$23300(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updatePullState()V

    return-void
.end method

.method private drawMovingViewsOverlayed()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onTouchEvent$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setViewsOffset(F)V

    return-void
.end method

.method private toggleArchiveHidden(ZLorg/telegram/ui/Cells/DialogCell;)V
    .locals 7

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleArchiveHidden()V

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$12802(Lorg/telegram/ui/DialogsActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$3402(Lorg/telegram/ui/DialogsActivity;Z)Z

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr p2, v3

    add-int/2addr v0, p2

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, p2, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v3, :cond_0

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->isExpanded()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/DialogsActivity;->access$3302(Lorg/telegram/ui/DialogsActivity;Z)Z

    const/high16 p2, 0x42a20000    # 81.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr v0, p2

    :cond_0
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/DialogsActivity;->access$12902(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updatePullState()V

    :cond_2
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x6

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updatePullState()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/DialogCell;->resetPinnedArchiveState()V

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/DialogCell;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updatePullState()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$12002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$12000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setWillDraw(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lorg/telegram/ui/DialogsActivity;->viewOffset:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected allowSelectChildAtPosition(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    cmpl-float v1, v1, v11

    if-lez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v8, v10, v10, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    int-to-float v3, v7

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, v1

    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v1, v9

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    move v12, v1

    :goto_1
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/high16 v4, 0x4f000000

    const/high16 v5, -0x31000000

    const/4 v7, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/high16 v16, 0x437f0000    # 255.0f

    if-ge v7, v6, :cond_12

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v14, v6, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v14, :cond_e

    move-object v14, v6

    check-cast v14, Lorg/telegram/ui/Cells/DialogCell;

    iget v15, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/DialogCell;->setRightFragmentOpenedProgress(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v17

    iget-object v15, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v15}, Lorg/telegram/ui/DialogsActivity;->access$11400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v15

    iget-wide v9, v15, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    cmp-long v15, v17, v9

    if-nez v15, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v14, v9}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    if-eqz v9, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v10, :cond_a

    move v15, v12

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/util/LongSparseArray;->delete(J)V

    if-eqz v9, :cond_b

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v11

    if-le v11, v1, :cond_7

    move v1, v11

    :cond_7
    if-ge v11, v2, :cond_8

    move v2, v11

    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    mul-float v11, v11, v12

    iput v11, v14, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    iget v12, v14, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v11, v12

    cmpg-float v11, v11, v4

    if-gez v11, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget v11, v14, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v4, v11

    sub-float/2addr v4, v15

    :cond_9
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget v13, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    invoke-static {v12, v9, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v9

    add-int/2addr v11, v9

    int-to-float v9, v11

    iget v11, v14, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v9, v11

    cmpl-float v11, v9, v5

    if-lez v11, :cond_b

    sub-float v5, v9, v15

    goto :goto_4

    :cond_a
    move v15, v12

    :cond_b
    :goto_4
    iget-boolean v9, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updateDialogsOnNextDraw:Z

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {v14, v11, v9}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c
    invoke-virtual {v14}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v11

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v9, v9, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v9}, Lorg/telegram/ui/RightSlidingDialogContainer;->getCurrentFragmetDialogId()J

    move-result-wide v19

    cmp-long v9, v11, v19

    if-nez v9, :cond_d

    move v9, v1

    move v11, v2

    move v12, v4

    move v13, v5

    move-object v5, v14

    goto :goto_5

    :cond_d
    move v9, v1

    move v11, v2

    move v12, v4

    move v13, v5

    move-object v5, v14

    move-object v14, v3

    goto :goto_5

    :cond_e
    move v15, v12

    move v9, v1

    move v11, v2

    move-object v14, v3

    move v12, v4

    move v13, v5

    const/4 v5, 0x0

    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v5, :cond_f

    neg-float v1, v15

    iput v1, v5, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    move v10, v4

    move-object/from16 v21, v5

    move-object v1, v6

    move/from16 v16, v7

    goto :goto_6

    :cond_f
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    iget v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v1, v17, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    const/16 v16, 0x0

    const/16 v17, 0x1f

    const/16 v18, 0x0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v2

    move/from16 v2, v18

    move/from16 v18, v3

    move/from16 v3, v16

    move v10, v4

    move/from16 v4, v18

    move-object/from16 v21, v5

    move/from16 v5, v20

    move-object/from16 v22, v6

    move/from16 v6, v19

    move/from16 v16, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object/from16 v1, v22

    :goto_6
    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v1, v21

    if-eqz v1, :cond_10

    if-eq v1, v14, :cond_10

    const/4 v2, 0x0

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    :cond_10
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_7

    :cond_11
    move/from16 v16, v7

    :goto_7
    add-int/lit8 v7, v16, 0x1

    move v1, v9

    move v2, v11

    move v4, v12

    move v5, v13

    move-object v3, v14

    move v12, v15

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_12
    if-eqz v3, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    iget v7, v3, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v6, v7

    iget-object v7, v3, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    const/4 v4, 0x0

    iput v4, v3, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    iput v4, v3, Lorg/telegram/ui/Cells/DialogCell;->rightFragmentOffset:F

    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v9, v6, v7

    if-eqz v9, :cond_13

    const v9, 0x3da3d70a    # 0.08f

    add-float/2addr v6, v9

    iput v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_13
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    cmpl-float v6, v4, v7

    if-eqz v6, :cond_15

    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateFromSelectorPosition:F

    const/high16 v7, -0x31000000

    cmpl-float v9, v6, v7

    if-eqz v9, :cond_15

    iget v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const v9, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v9

    cmpg-float v6, v6, v7

    if-gez v6, :cond_14

    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateFromSelectorPosition:F

    iget v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    goto :goto_8

    :cond_14
    const/4 v6, 0x1

    goto :goto_9

    :cond_15
    :goto_8
    const/4 v6, 0x0

    :goto_9
    iget-boolean v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateSwitchingSelector:Z

    if-eqz v7, :cond_17

    if-nez v6, :cond_16

    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateFromSelectorPosition:F

    const/high16 v7, -0x31000000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_17

    :cond_16
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_17
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_b

    :goto_a
    sub-float v13, v6, v4

    goto :goto_c

    :goto_b
    iget v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    goto :goto_a

    :goto_c
    cmpl-float v4, v13, v6

    if-nez v4, :cond_18

    const/high16 v4, -0x31000000

    iput v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    :cond_18
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v4, v4, v13

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    add-float/2addr v9, v4

    iget v10, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v10, v12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v4

    iget v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    iget-object v3, v3, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    add-float/2addr v4, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    invoke-virtual {v6, v9, v10, v12, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_19

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPaint:Landroid/graphics/Paint;

    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPaint:Landroid/graphics/Paint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6, v3, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v3, -0x31000000

    goto :goto_d

    :cond_1a
    const/high16 v3, -0x31000000

    iput v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_21

    const/4 v3, 0x0

    const/high16 v14, 0x4f000000

    const/high16 v15, -0x31000000

    :goto_e
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v6

    if-ge v6, v2, :cond_1b

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v15

    if-lez v7, :cond_1b

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    move v15, v7

    :cond_1b
    if-le v6, v1, :cond_1c

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v14

    if-gez v6, :cond_1c

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    move v14, v4

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1d
    const/4 v11, 0x0

    :goto_f
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_20

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    const/4 v6, 0x1

    iput-boolean v6, v4, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    iget v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Cells/DialogCell;->setRightFragmentOpenedProgress(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    if-le v3, v1, :cond_1e

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    sub-float/2addr v7, v14

    :goto_10
    invoke-virtual {v8, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_11

    :cond_1e
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    sub-float/2addr v7, v15

    goto :goto_10

    :goto_11
    invoke-virtual {v2, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v8, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_12

    :cond_1f
    const/4 v6, 0x1

    :goto_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_21
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updateDialogsOnNextDraw:Z

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_22
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v2, :cond_23

    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/BlurredRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_23
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->drawMovingViewsOverlayed()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v10, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v10, v1, :cond_28

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v1, v7, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_24

    move-object v1, v7

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isMoving()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_24
    instance-of v1, v7, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    if-eqz v1, :cond_27

    move-object v1, v7

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iget-boolean v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->moving:Z

    if-eqz v1, :cond_27

    :cond_25
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_26

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    const/16 v3, 0x1f

    invoke-virtual {v8, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_14

    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_14
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_15

    :cond_27
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_15
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_13

    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/PacmanAnimation;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/PacmanAnimation;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$11500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$11500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v8, v2}, Lorg/telegram/ui/Components/PacmanAnimation;->draw(Landroid/graphics/Canvas;I)V

    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    if-nez v1, :cond_2b

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Stories/UserListPoller;->getInstance(I)Lorg/telegram/ui/Stories/UserListPoller;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    :cond_2b
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/UserListPoller;->checkList(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->drawMovingViewsOverlayed()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BlurredRecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getViewOffset()F
    .locals 1

    sget v0, Lorg/telegram/ui/DialogsActivity;->viewOffset:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/DialogsActivity;->viewOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->drawOverScroll(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$15000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$14902(Lorg/telegram/ui/DialogsActivity;Z)Z

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastListPadding:I

    iput p3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastTop:I

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$12102(Lorg/telegram/ui/DialogsActivity;F)F

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    const/4 p2, 0x0

    iput p2, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->pageAdditionalOffset:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->hasPendingScrollPosition()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v4

    if-eq v4, v1, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$3200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$12000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastListPadding:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$12100(Lorg/telegram/ui/DialogsActivity;)F

    move-result v5

    add-float/2addr v3, v5

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget v5, v5, Lorg/telegram/ui/DialogsActivity$ViewPage;->pageAdditionalOffset:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v4, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iput-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    goto :goto_1

    :cond_1
    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->firstLayout:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11800(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$3200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_5
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v3, :cond_8

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$12300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_7

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    :goto_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$12200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v3

    if-eqz v3, :cond_9

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v0, v3

    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v4, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    const/high16 v5, 0x42a20000    # 81.0f

    if-eqz v4, :cond_a

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$12400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a
    iput v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->additionalPadding:I

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$12500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$12600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->additionalPadding:I

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->additionalPadding:I

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-eq v0, v3, :cond_e

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    invoke-virtual {p0, v2, v0, v2, v2}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$12700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setPaddingTop(I)V

    goto :goto_6

    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$12700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setPaddingTop(I)V

    :goto_6
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    if-eqz v4, :cond_d

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    iput-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    :goto_8
    iget-boolean v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->firstLayout:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController;->dialogsLoaded:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$3200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_f

    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iput-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    :cond_f
    iput-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->firstLayout:Z

    :cond_10
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/BlurredRecyclerView;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$6800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_12

    iget p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->appliedPaddingTop:I

    if-eq p1, v0, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    array-length p1, p1

    if-le p1, v1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_12

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView;->isAnimatingIndicator()Z

    :cond_12
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    const/4 v3, 0x0

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_1
    const/4 v4, 0x3

    if-eq v2, v1, :cond_2

    if-ne v2, v4, :cond_b

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->isIdle()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$13000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$SwipeController;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$SwipeController;->access$13100(Lorg/telegram/ui/DialogsActivity$SwipeController;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$13000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$SwipeController;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/telegram/ui/DialogsActivity$SwipeController;->access$13202(Lorg/telegram/ui/DialogsActivity$SwipeController;Z)Z

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$13000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$SwipeController;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$SwipeController;->access$13300(Lorg/telegram/ui/DialogsActivity$SwipeController;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$13000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$SwipeController;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$SwipeController;->access$13300(Lorg/telegram/ui/DialogsActivity$SwipeController;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v6, v5, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v6, :cond_b

    check-cast v5, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/telegram/messenger/DialogObject;->isFolderDialogId(J)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v3, v5}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->toggleArchiveHidden(ZLorg/telegram/ui/Cells/DialogCell;)V

    goto/16 :goto_5

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v5, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$13400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v6

    if-ne v6, v1, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-gtz v8, :cond_5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v7, v5}, Lorg/telegram/ui/DialogsActivity;->access$13502(Lorg/telegram/ui/DialogsActivity;I)I

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v7, 0x65

    :goto_2
    invoke-static {v5, v6, v7, v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$13600(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;IZZ)V

    goto/16 :goto_5

    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$13700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v6

    if-ne v6, v4, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v9, v10, v6, v7}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v5

    if-nez v5, :cond_7

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v8

    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/NotificationsController;->setDialogNotificationsSettings(JJI)V

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$13900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-virtual {v11, v9, v10, v6, v7}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v6

    xor-int/2addr v6, v1

    invoke-static {v8, v6}, Lorg/telegram/ui/DialogsActivity;->access$13802(Lorg/telegram/ui/DialogsActivity;I)I

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$13800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v7

    if-lez v7, :cond_8

    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    const/4 v7, 0x1

    :goto_3
    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->access$14002(Lorg/telegram/ui/DialogsActivity;I)I

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v7, 0x68

    :goto_4
    invoke-static {v6, v5, v7, v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$13600(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;IZZ)V

    goto :goto_5

    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$14100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v6

    if-nez v6, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7, v5}, Lorg/telegram/ui/DialogsActivity;->access$14200(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$Dialog;)Z

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    xor-int/2addr v5, v1

    invoke-static {v7, v5}, Lorg/telegram/ui/DialogsActivity;->access$14302(Lorg/telegram/ui/DialogsActivity;I)I

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v7, 0x64

    goto/16 :goto_2

    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$14400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v5

    if-ne v5, v7, :cond_b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v7, 0x66

    goto :goto_4

    :cond_b
    :goto_5
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$3200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v5

    if-nez v5, :cond_13

    if-eq v2, v1, :cond_c

    if-ne v2, v4, :cond_13

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$12000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v2

    if-ne v2, v0, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5, v6}, Lorg/telegram/ui/DialogsActivity;->access$14500(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object v5

    if-eqz v5, :cond_13

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v6, :cond_d

    const/high16 v6, 0x429c0000    # 78.0f

    goto :goto_6

    :cond_d
    const/high16 v6, 0x42900000    # 72.0f

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f59999a    # 0.85f

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$14600(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const/4 v10, 0x0

    if-lt v7, v6, :cond_11

    const-wide/16 v11, 0xc8

    cmp-long v6, v8, v11

    if-gez v6, :cond_e

    goto :goto_8

    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$12000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    if-eq v6, v1, :cond_12

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v6

    cmpl-float v6, v6, v10

    if-nez v6, :cond_f

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v1}, Lorg/telegram/ui/DialogsActivity;->access$12802(Lorg/telegram/ui/DialogsActivity;Z)Z

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v2

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p0, v3, v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :cond_f
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$14700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/DialogsActivity;->access$14702(Lorg/telegram/ui/DialogsActivity;Z)Z

    :try_start_0
    invoke-virtual {p0, v4, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    nop

    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$11300(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->colorize(Z)V

    :cond_10
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/DialogCell;->startOutAnimation()V

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2, v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$12002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrArchivedChatsShown:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_11
    :goto_8
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/DialogsActivity;->access$12802(Lorg/telegram/ui/DialogsActivity;Z)Z

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p0, v3, v7, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2, v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$12002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    :cond_12
    :goto_9
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v2

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v2

    new-array v0, v0, [F

    aput v2, v0, v3

    aput v10, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v1

    invoke-static {}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getMaxOverscroll()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x43af0000    # 350.0f

    sub-float/2addr v2, v1

    float-to-long v1, v2

    const-wide/16 v4, 0x64

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setScrollEnabled(Z)V

    new-instance v1, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView$1;-><init>(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_13
    return p1

    :cond_14
    :goto_a
    return v3
.end method

.method public prepareSelectorForAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    iput v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateFromSelectorPosition:F

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateSwitchingSelector:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/BlurredRecyclerView;->requestLayout()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->firstLayout:Z

    return-void
.end method

.method public setAnimationSupportView(Lorg/telegram/ui/Components/RecyclerListView;FZZ)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_0

    :cond_0
    move-object v0, v8

    :goto_0
    if-nez v0, :cond_1

    iput-object v9, v8, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v3, v2

    const v4, 0x7fffffff

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v10

    iget-object v12, v8, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v12, v12, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v12}, Lorg/telegram/ui/RightSlidingDialogContainer;->getCurrentFragmetDialogId()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-nez v14, :cond_2

    move-object v2, v7

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    if-ltz v10, :cond_3

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v4, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    move v4, v3

    move-object v3, v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    mul-int v4, v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v4, v5, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    move-object v10, v2

    goto :goto_2

    :cond_5
    move-object v10, v3

    :goto_2
    iput-object v9, v8, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v10, :cond_9

    if-eqz v9, :cond_7

    iget v2, v8, Lorg/telegram/ui/Components/BlurredRecyclerView;->topPadding:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v9, v3, v2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Adapters/DialogsAdapter;->findDialogPosition(J)I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    add-float v0, v0, p2

    float-to-int v3, v0

    if-ltz v11, :cond_7

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$3200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$12000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v5, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$15100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    move-object v0, v2

    move-object v1, p0

    move v2, v11

    move/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixScrollGap(Lorg/telegram/ui/Components/RecyclerListView;IIZZZZ)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v11, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->findDialogPosition(J)I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz p4, :cond_8

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v2, :cond_8

    const/high16 v2, 0x42a20000    # 81.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    :cond_8
    if-ltz v0, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_9
    return-void
.end method

.method public setOpenRightFragmentProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setViewsOffset(F)V
    .locals 5

    sput p1, Lorg/telegram/ui/DialogsActivity;->viewOffset:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateClip([I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method protected updateEmptyViewAnimated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
