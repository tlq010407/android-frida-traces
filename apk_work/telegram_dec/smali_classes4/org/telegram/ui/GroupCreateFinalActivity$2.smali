.class Lorg/telegram/ui/GroupCreateFinalActivity$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateFinalActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/GroupCreateFinalActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateFinalActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    :goto_1
    if-ge v2, p1, :cond_a

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    const/16 v7, 0x33

    :cond_2
    and-int/lit8 v8, v7, 0x70

    and-int/lit8 v7, v7, 0x7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_4

    const/4 v9, 0x5

    if-eq v7, v9, :cond_3

    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_3
    sub-int v7, p4, v5

    :goto_2
    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v9

    goto :goto_3

    :cond_4
    sub-int v7, p4, p2

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    goto :goto_2

    :goto_3
    const/16 v9, 0x10

    if-eq v8, v9, :cond_7

    const/16 v9, 0x30

    if-eq v8, v9, :cond_6

    const/16 v9, 0x50

    if-eq v8, v9, :cond_5

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_5
    sub-int v8, p5, v1

    sub-int/2addr v8, p3

    sub-int/2addr v8, v6

    :goto_4
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v8, v4

    goto :goto_5

    :cond_6
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_5

    :cond_7
    sub-int v8, p5, v1

    sub-int/2addr v8, p3

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    goto :goto_4

    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v8}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    :goto_6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v4, v8

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    goto :goto_6

    :cond_9
    :goto_7
    add-int/2addr v5, v7

    add-int/2addr v6, v4

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$000(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->ignoreLayout:Z

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hideEmojiView()V

    iput-boolean v4, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->ignoreLayout:Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v4, v2, :cond_8

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$200(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    if-ne v6, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->this$0:Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCreateFinalActivity;->access$100(Lorg/telegram/ui/GroupCreateFinalActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v3, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v6, v3, v5}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_3
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_4

    const/high16 v7, 0x43480000    # 200.0f

    goto :goto_3

    :cond_4
    const/high16 v7, 0x43a00000    # 320.0f

    :goto_3
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v8, v1, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_5
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v7, v1, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateFinalActivity$2;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
