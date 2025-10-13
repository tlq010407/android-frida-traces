.class public abstract Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private bottomView:Landroid/view/View;

.field private bottomViewReactionsOffset:F

.field private bottomViewYOffset:F

.field private expandSize:F

.field private maxHeight:I

.field private popupLayoutLeftOffset:F

.field private popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private progressToSwipeBack:F

.field private reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method public static synthetic $r8$lambda$iAF2DY1XnHmzg5rOLv_8viKWf84(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->lambda$setPopupWindowLayout$1(Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$qzeQ8pfVpqQG2bHXK04XS8AizNY(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->lambda$setPopupWindowLayout$0(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private synthetic lambda$setPopupWindowLayout$0(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getVisibleHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomViewYOffset:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updateBottomViewPosition()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setPopupWindowLayout$1(Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iput p3, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->progressToSwipeBack:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updatePopupTranslation()V

    return-void
.end method

.method private updateBottomViewPosition()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomViewYOffset:F

    iget v2, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->expandSize:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomViewReactionsOffset:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private updatePopupTranslation()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->progressToSwipeBack:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupLayoutLeftOffset:F

    mul-float v1, v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyViewBottom(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->maxHeight:I

    if-eqz v1, :cond_0

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v2, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupLayoutLeftOffset:F

    move/from16 v5, p1

    invoke-super {v0, v5, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-le v7, v6, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    :cond_1
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-le v7, v6, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v7

    if-eqz v7, :cond_3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->measureHint()V

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTotalWidth()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v8

    :goto_1
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_2

    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :goto_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v9, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v9, v11

    const/high16 v11, 0x42100000    # 36.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v9, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getHintTextWidth()I

    move-result v12

    if-le v12, v9, :cond_5

    move v9, v12

    goto :goto_3

    :cond_5
    if-le v9, v6, :cond_6

    move v9, v6

    :cond_6
    :goto_3
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    iput v14, v13, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v13

    const/high16 v14, 0x41000000    # 8.0f

    if-eqz v13, :cond_7

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v7, v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v7, v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v9, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    goto :goto_5

    :cond_7
    if-le v7, v9, :cond_b

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v9, v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    div-int/2addr v9, v13

    add-int/lit8 v9, v9, 0x1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    mul-int v13, v13, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v13, v15

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v10, v12, v16

    if-le v10, v13, :cond_8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int v13, v12, v10

    :cond_8
    if-gt v13, v7, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getItemsCount()I

    move-result v10

    if-ne v9, v10, :cond_9

    goto :goto_4

    :cond_9
    move v7, v13

    :cond_a
    :goto_4
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    :cond_b
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_5
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ne v7, v6, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v6, v3

    int-to-float v3, v6

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v3, v3, v6

    iput v3, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupLayoutLeftOffset:F

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    float-to-int v3, v7

    iput v3, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-ge v3, v6, :cond_d

    iput v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupLayoutLeftOffset:F

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    :cond_d
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updatePopupTranslation()V

    goto :goto_a

    :cond_e
    :goto_7
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v7

    if-eqz v7, :cond_f

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v7, v9

    goto :goto_8

    :cond_f
    const/4 v7, 0x0

    :goto_8
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v9, v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v7

    if-le v3, v6, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v6, v3

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v7, v6, v3

    :cond_10
    if-gez v7, :cond_11

    goto :goto_9

    :cond_11
    move v4, v7

    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupLayoutLeftOffset:F

    goto :goto_6

    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v2, :cond_15

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updatePopupTranslation()V

    goto :goto_b

    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v4, v3

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_c

    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_c

    :cond_14
    move/from16 v5, p1

    :cond_15
    :goto_c
    invoke-super {v0, v5, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->maxHeight:I

    return-void
.end method

.method public setExpandSize(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iput p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->expandSize:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updateBottomViewPosition()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->maxHeight:I

    return-void
.end method

.method public setPopupAlpha(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setPopupWindowLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setOnSizeChangedListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;)V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->addOnSwipeBackProgressListener(Lorg/telegram/ui/Components/PopupSwipeBackLayout$OnSwipeBackProgressListener;)V

    :cond_0
    return-void
.end method

.method public setReactionsLayout(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->reactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setChatScrimView(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;)V

    :cond_0
    return-void
.end method

.method public setReactionsTransitionProgress(F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setReactionsTransitionProgress(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p1, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->popupWindowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v0, v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomViewReactionsOffset:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->updateBottomViewPosition()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->bottomView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method
