.class Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

.field final synthetic val$animationType:I

.field final synthetic val$cell:Landroid/view/View;

.field final synthetic val$chatActivity:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$emojiSize:I

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$fromHolder:Z

.field final synthetic val$fromScale:F

.field final synthetic val$fromX:F

.field final synthetic val$fromY:F

.field final synthetic val$isStories:Z

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;


# direct methods
.method public static synthetic $r8$lambda$LKhmwNfktLBrFEUqoA7T_l8i7vw(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->lambda$dispatchDraw$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$xSaUmKhRdy1EfK5wcgunMP6c8vs(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->lambda$dispatchDraw$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;IIZFFFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iput-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Landroid/view/View;

    iput-boolean p5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$isStories:Z

    iput-object p6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p7, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iput p8, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$emojiSize:I

    iput p9, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    iput-boolean p10, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromHolder:Z

    iput p11, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromScale:F

    iput p12, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromX:F

    iput p13, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromY:F

    iput-object p14, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$dispatchDraw$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)V

    return-void
.end method

.method private synthetic lambda$dispatchDraw$1()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z

    move-result v2

    const v3, 0x3dda740e

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$216(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$202(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F

    new-instance v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v2

    sub-float/2addr v4, v2

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-boolean v5, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v6, v2, Lorg/telegram/ui/ChatActivity;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$400(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)I

    move-result v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/ChatActivity;->findCell(IZ)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Landroid/view/View;

    :goto_0
    iget-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$isStories:Z

    const/high16 v8, 0x41a00000    # 20.0f

    if-eqz v6, :cond_7

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v6

    if-eqz v6, :cond_6

    const/high16 v6, 0x42f00000    # 120.0f

    :goto_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    :goto_2
    int-to-float v6, v6

    goto :goto_3

    :cond_6
    const/high16 v6, 0x42480000    # 50.0f

    goto :goto_1

    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->shouldDrawReactionsInLayout()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_2

    :cond_8
    const/high16 v6, 0x41600000    # 14.0f

    goto :goto_1

    :goto_3
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x1

    if-eqz v2, :cond_e

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v12, v12, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v2, v12}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v13, v12, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    aget v14, v13, v7

    int-to-float v14, v14

    aget v13, v13, v11

    int-to-float v13, v13

    instance-of v15, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v15, :cond_a

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$500(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v12

    iget-boolean v15, v2, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom:Z

    if-eqz v15, :cond_9

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawTimeOnMedia()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v13, v15

    :cond_9
    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v13, v2

    goto :goto_5

    :cond_a
    instance-of v15, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v15, :cond_b

    move-object v15, v2

    check-cast v15, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-static {v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$500(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v12

    invoke-virtual {v15, v12}, Lorg/telegram/ui/Cells/ChatActionCell;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v12

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_c

    iget-object v2, v12, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    add-float/2addr v14, v12

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v13, v2

    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_d

    iget v2, v2, Lorg/telegram/ui/ChatActivity;->drawingChatListViewYoffset:F

    add-float/2addr v13, v2

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2, v14}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$602(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2, v13}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$702(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;F)F

    goto :goto_6

    :cond_e
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$isStories:Z

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    div-float v12, v6, v10

    sub-float v14, v2, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    sub-float v13, v2, v12

    goto :goto_6

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$600(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v14

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$700(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)F

    move-result v13

    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v12, v12, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    invoke-virtual {v2, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7

    :cond_10
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$isStories:Z

    if-nez v2, :cond_11

    return-void

    :cond_11
    :goto_7
    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$emojiSize:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    div-float/2addr v2, v10

    sub-float v12, v14, v2

    sub-float v2, v13, v2

    iget-boolean v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$isStories:Z

    if-eqz v15, :cond_12

    iget v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-nez v15, :cond_12

    const/high16 v15, 0x42200000    # 40.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v12, v15

    :cond_12
    iget v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-eq v15, v11, :cond_14

    iget-boolean v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$isStories:Z

    if-nez v15, :cond_14

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v15, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    aget v15, v15, v7

    int-to-float v8, v15

    cmpg-float v16, v12, v8

    if-gez v16, :cond_13

    move v12, v8

    :cond_13
    iget v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$emojiSize:I

    int-to-float v8, v8

    add-float/2addr v8, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    int-to-float v15, v15

    cmpl-float v8, v8, v15

    if-lez v8, :cond_14

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v8, v8, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->loc:[I

    aget v8, v8, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v8, v12

    iget v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$emojiSize:I

    sub-int/2addr v8, v12

    int-to-float v12, v8

    :cond_14
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v15, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    invoke-virtual {v8, v15}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v15

    iget v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/4 v3, 0x2

    if-ne v10, v3, :cond_15

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v10, v15}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v10

    invoke-virtual {v8, v15}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_8

    :cond_15
    iget-boolean v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromHolder:Z

    if-eqz v10, :cond_16

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v9, v9, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v10

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v9, v9, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v8

    goto :goto_8

    :cond_16
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v10, v8, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    move v8, v10

    :goto_8
    sub-float v9, v4, v10

    iget v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromScale:F

    mul-float v7, v7, v9

    add-float/2addr v7, v10

    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$emojiSize:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-ne v5, v11, :cond_17

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_17
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromX:F

    mul-float v5, v5, v9

    mul-float v12, v12, v10

    add-float/2addr v12, v5

    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromY:F

    sub-float v18, v4, v8

    mul-float v5, v5, v18

    mul-float v2, v2, v8

    add-float/2addr v2, v5

    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    sub-float v11, v4, v15

    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-ne v5, v3, :cond_18

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromScale:F

    mul-float v2, v2, v9

    mul-float v6, v6, v10

    add-float v7, v2, v6

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromX:F

    mul-float v2, v2, v9

    mul-float v14, v14, v10

    add-float v12, v2, v14

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromY:F

    sub-float v6, v4, v8

    mul-float v2, v2, v6

    mul-float v13, v13, v8

    :goto_a
    add-float/2addr v2, v13

    goto :goto_b

    :cond_18
    const/4 v8, 0x0

    cmpl-float v9, v15, v8

    if-eqz v9, :cond_19

    mul-float v7, v7, v11

    mul-float v6, v6, v15

    add-float/2addr v7, v6

    mul-float v12, v12, v11

    mul-float v14, v14, v15

    add-float/2addr v12, v14

    mul-float v2, v2, v11

    mul-float v13, v13, v15

    goto :goto_a

    :cond_19
    :goto_b
    const v6, 0x3f333333    # 0.7f

    const/4 v8, 0x1

    if-eq v5, v8, :cond_1c

    iget-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$isStories:Z

    if-nez v5, :cond_1b

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    cmpl-float v8, v15, v6

    if-lez v8, :cond_1a

    sub-float/2addr v15, v6

    const v8, 0x3e99999a    # 0.3f

    div-float v8, v15, v8

    goto :goto_c

    :cond_1a
    const/4 v8, 0x0

    :goto_c
    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_d

    :cond_1b
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$900(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_1c
    :goto_d
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-nez v5, :cond_1d

    iget-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$isStories:Z

    if-eqz v5, :cond_1d

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1000(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    :cond_1d
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1100(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const v5, 0x3d3b3ee7

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1e

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1000(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    if-eqz v2, :cond_20

    :cond_1e
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v7, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    cmpl-float v8, v7, v4

    if-eqz v8, :cond_20

    iget-boolean v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$fromHolder:Z

    if-eqz v8, :cond_1f

    add-float/2addr v7, v5

    :goto_e
    iput v7, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    goto :goto_f

    :cond_1f
    const v8, 0x3d94f209

    add-float/2addr v7, v8

    goto :goto_e

    :goto_f
    iget v7, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_20

    iput v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateInProgress:F

    :cond_20
    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/high16 v7, 0x41800000    # 16.0f

    if-eq v2, v3, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1200(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-eqz v2, :cond_25

    :cond_21
    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/4 v8, 0x1

    if-eq v2, v8, :cond_22

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1000(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    if-eqz v2, :cond_22

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1000(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1000(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_22
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v8, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v10, 0x7d0

    const-wide/16 v12, 0x0

    cmp-long v2, v8, v12

    if-eqz v2, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-wide v14, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    sub-long/2addr v8, v14

    cmp-long v2, v8, v10

    if-gtz v2, :cond_25

    :cond_23
    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_24

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    if-eqz v2, :cond_24

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_24
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v8, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v2, v8, v12

    if-eqz v2, :cond_30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-wide v12, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    sub-long/2addr v8, v12

    cmp-long v2, v8, v10

    if-lez v2, :cond_30

    :cond_25
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v8, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    cmpl-float v9, v8, v4

    if-eqz v9, :cond_30

    iget v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_26

    iput v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    goto :goto_11

    :cond_26
    if-ne v9, v3, :cond_27

    const/high16 v10, 0x43af0000    # 350.0f

    goto :goto_10

    :cond_27
    const/high16 v10, 0x435c0000    # 220.0f

    :goto_10
    div-float v10, v7, v10

    add-float/2addr v8, v10

    iput v8, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    :goto_11
    iget v8, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    cmpl-float v6, v8, v6

    if-lez v6, :cond_29

    iget-boolean v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$isStories:Z

    if-eqz v6, :cond_28

    if-ne v9, v3, :cond_28

    iget-boolean v6, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->isFinished:Z

    if-nez v6, :cond_29

    const/4 v6, 0x1

    iput-boolean v6, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->isFinished:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    move-result-object v2

    const/4 v6, 0x1

    iput-boolean v6, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->isStories:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    move-result-object v2

    iput-boolean v6, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1300(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    sget v8, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v8, 0x3e8

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v8, 0x96

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1$1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1$1;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_12

    :cond_28
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startShortAnimation()V

    :cond_29
    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget v6, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_30

    iget v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-eqz v6, :cond_2a

    if-ne v6, v3, :cond_2c

    :cond_2a
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Landroid/view/View;

    instance-of v8, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v8, :cond_2b

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    :goto_13
    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$500(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animateReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_14

    :cond_2b
    instance-of v8, v6, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v8, :cond_2c

    check-cast v6, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v6, v6, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    goto :goto_13

    :cond_2c
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iput v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->animateOutProgress:F

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2d

    const/4 v2, 0x0

    sput-object v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentShortOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    goto :goto_15

    :cond_2d
    const/4 v2, 0x0

    sput-object v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    :goto_15
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Landroid/view/View;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Landroid/view/View;

    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_2e

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$cell:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_2e
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$isStories:Z

    if-eqz v2, :cond_2f

    iget v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->val$animationType:I

    if-ne v2, v3, :cond_2f

    goto :goto_16

    :cond_2f
    new-instance v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_30
    :goto_16
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    if-eqz v2, :cond_3a

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/4 v3, 0x0

    :goto_17
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3a

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget v8, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->progress:F

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_32

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v9}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v9

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v11}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v12

    long-to-float v9, v9

    int-to-float v10, v12

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float v10, v10, v9

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->leftTime:I

    if-ge v9, v10, :cond_31

    goto :goto_18

    :cond_31
    const v10, 0x3dda740e

    goto :goto_19

    :cond_32
    :goto_18
    iget v9, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->outProgress:F

    cmpl-float v10, v9, v4

    if-eqz v10, :cond_31

    const v10, 0x3dda740e

    add-float/2addr v9, v10

    iput v9, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->outProgress:F

    cmpl-float v9, v9, v4

    if-lez v9, :cond_33

    iput v4, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->outProgress:F

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    const/4 v7, 0x0

    const/high16 v8, 0x41a00000    # 20.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v16, 0x40000000    # 2.0f

    goto/16 :goto_1d

    :cond_33
    :goto_19
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v11, v8, v9

    if-gez v11, :cond_34

    div-float v9, v8, v9

    goto :goto_1a

    :cond_34
    sub-float v11, v8, v9

    div-float/2addr v11, v9

    sub-float v9, v4, v11

    :goto_1a
    iget v11, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->fromX:F

    sub-float v12, v4, v8

    mul-float v11, v11, v12

    iget v13, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toX:F

    mul-float v13, v13, v8

    add-float/2addr v11, v13

    iget v13, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->fromY:F

    mul-float v13, v13, v12

    iget v12, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->toY:F

    mul-float v12, v12, v8

    add-float/2addr v13, v12

    iget v12, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->jumpY:F

    mul-float v12, v12, v9

    sub-float/2addr v13, v12

    iget v9, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->randomScale:F

    mul-float v9, v9, v8

    iget v12, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->outProgress:F

    sub-float v12, v4, v12

    mul-float v9, v9, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v12

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v14}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v15}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getScaleX()F

    move-result v15

    mul-float v14, v14, v15

    mul-float v14, v14, v11

    add-float/2addr v12, v14

    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v11}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v11

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v14}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v15}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$800(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getScaleY()F

    move-result v15

    mul-float v14, v14, v15

    mul-float v14, v14, v13

    add-float/2addr v11, v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v14, v14, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget-object v14, v14, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v15, v13

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v15, v16

    sub-float v10, v12, v17

    sub-float v7, v11, v17

    invoke-virtual {v14, v10, v7, v15, v15}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v10, 0x1

    shr-int/2addr v13, v10

    invoke-virtual {v7, v13}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->globalTranslationY:F

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v9, v9, v12, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->currentRotation:F

    invoke-virtual {v1, v7, v12, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->progress:F

    cmpg-float v9, v7, v4

    if-gez v9, :cond_35

    add-float/2addr v7, v5

    iput v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->progress:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_35

    iput v4, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->progress:F

    :cond_35
    cmpl-float v7, v8, v4

    if-ltz v7, :cond_36

    iget v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->globalTranslationY:F

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v11, 0x41800000    # 16.0f

    mul-float v9, v9, v11

    const/high16 v12, 0x43fa0000    # 500.0f

    div-float/2addr v9, v12

    add-float/2addr v7, v9

    iput v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->globalTranslationY:F

    goto :goto_1b

    :cond_36
    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v11, 0x41800000    # 16.0f

    :goto_1b
    iget-boolean v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->incrementRotation:Z

    const/high16 v9, 0x437a0000    # 250.0f

    if-eqz v7, :cond_39

    iget v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->currentRotation:F

    iget v12, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->randomRotation:F

    div-float v9, v12, v9

    add-float/2addr v7, v9

    iput v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->currentRotation:F

    cmpl-float v7, v7, v12

    if-lez v7, :cond_38

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->incrementRotation:Z

    :cond_37
    :goto_1c
    const/4 v9, 0x1

    goto :goto_1d

    :cond_38
    const/4 v7, 0x0

    goto :goto_1c

    :cond_39
    const/4 v7, 0x0

    iget v12, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->currentRotation:F

    iget v13, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->randomRotation:F

    div-float v9, v13, v9

    sub-float/2addr v12, v9

    iput v12, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->currentRotation:F

    neg-float v9, v13

    cmpg-float v9, v12, v9

    if-gez v9, :cond_37

    const/4 v9, 0x1

    iput-boolean v9, v6, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->incrementRotation:Z

    :goto_1d
    add-int/2addr v3, v9

    const/high16 v7, 0x41800000    # 16.0f

    goto/16 :goto_17

    :cond_3a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$1;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->avatars:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AvatarParticle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
