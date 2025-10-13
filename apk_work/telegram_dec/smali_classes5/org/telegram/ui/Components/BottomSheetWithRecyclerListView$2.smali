.class Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

.field final synthetic val$hasFixedSize:Z

.field final synthetic val$stackFromEnd:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Landroid/content/Context;ZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->val$stackFromEnd:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->val$hasFixedSize:Z

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->ignoreLayout:Z

    return-void
.end method

.method private onMeasureInternal(II)V
    .locals 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isWaitingForKeyboardOpen()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isAnimatePopupClosing()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->ignoreLayout:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    iput-boolean v4, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->ignoreLayout:Z

    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ltz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-static {v2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->access$100(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sget-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v5, :cond_2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v4, v2, :cond_a

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_3

    goto :goto_5

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v5, v5, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v5, :cond_8

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v5, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/view/View;->measure(II)V

    goto :goto_5

    :cond_5
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_6

    const/high16 v7, 0x43480000    # 200.0f

    goto :goto_4

    :cond_6
    const/high16 v7, 0x43a00000    # 320.0f

    :goto_4
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v8, v1, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_2

    :cond_7
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v7, v1, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->preDrawInternal(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->postDrawInternal(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-static {v1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->access$200(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->val$hasFixedSize:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->clipToActionBar:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-static {v2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->access$300(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v2, :cond_1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-gt v0, v2, :cond_1

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_b

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    const/16 v7, 0x33

    :cond_3
    and-int/lit8 v8, v7, 0x70

    and-int/lit8 v7, v7, 0x7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_5

    const/4 v9, 0x5

    if-eq v7, v9, :cond_4

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_2

    :cond_4
    sub-int v7, p4, p2

    sub-int/2addr v7, v5

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v7, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-static {v9}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->access$400(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;)I

    move-result v9

    :goto_1
    sub-int/2addr v7, v9

    goto :goto_2

    :cond_5
    sub-int v7, p4, p2

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :goto_2
    const/16 v9, 0x10

    if-eq v8, v9, :cond_8

    const/16 v9, 0x30

    if-eq v8, v9, :cond_7

    const/16 v9, 0x50

    if-eq v8, v9, :cond_6

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_6
    sub-int v8, p5, v1

    sub-int/2addr v8, p3

    sub-int/2addr v8, v6

    :goto_3
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v8, v4

    goto :goto_4

    :cond_7
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_4

    :cond_8
    sub-int v8, p5, v1

    sub-int/2addr v8, p3

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    goto :goto_3

    :goto_4
    instance-of v8, v3, Lorg/telegram/ui/Components/EmojiView;

    if-eqz v8, :cond_a

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v4, v8

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    goto :goto_5

    :cond_a
    :goto_6
    add-int/2addr v5, v7

    add-int/2addr v6, v4

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->contentHeight:I

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onPreMeasure(II)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->val$stackFromEnd:Z

    if-eqz v0, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget p2, p2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->contentHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-object v0, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$2;->onMeasureInternal(II)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method
