.class Lorg/telegram/ui/Components/MessagePreviewView$Page$6;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iput-object p4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private drawChatBackgroundElements(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_1

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v7

    if-eqz v7, :cond_0

    if-ne v7, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-object v5, v7

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x3

    if-ge v4, v5, :cond_22

    iget-object v5, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1000(Lorg/telegram/ui/Components/MessagePreviewView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v6, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move/from16 v27, v4

    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x1

    if-ge v6, v1, :cond_18

    iget-object v8, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v8, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v9, :cond_17

    move-object v9, v8

    check-cast v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v11, v11, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_17

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v10, v8

    const/4 v8, 0x0

    cmpg-float v8, v10, v8

    if-gez v8, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v8

    if-eqz v8, :cond_17

    if-nez v4, :cond_6

    iget-object v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, v7, :cond_17

    :cond_6
    if-ne v4, v7, :cond_7

    iget-object v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    if-nez v10, :cond_7

    goto/16 :goto_4

    :cond_7
    if-nez v4, :cond_8

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v10, :cond_17

    :cond_8
    if-ne v4, v7, :cond_9

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v7, :cond_9

    goto/16 :goto_4

    :cond_9
    if-ne v4, v5, :cond_a

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_a
    if-eq v4, v5, :cond_b

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v7

    if-eqz v7, :cond_b

    goto/16 :goto_4

    :cond_b
    iget-object v7, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v7, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1000(Lorg/telegram/ui/Components/MessagePreviewView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    iput v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    iput v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    iput v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    iput-boolean v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    iput-boolean v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iput-object v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v7, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v7, v7, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v7}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1000(Lorg/telegram/ui/Components/MessagePreviewView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v10

    iput-boolean v10, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-object v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v10

    iput-boolean v10, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v10

    add-int/2addr v7, v10

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v13

    iget v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v13, v13, 0x4

    const/high16 v14, 0x41200000    # 10.0f

    if-nez v13, :cond_d

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v11, v13

    :cond_d
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v13

    iget v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v13, v13, 0x8

    if-nez v13, :cond_e

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v12, v13

    :cond_e
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v13, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-object v9, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    :cond_f
    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    if-eqz v9, :cond_10

    if-ge v11, v9, :cond_11

    :cond_10
    iput v11, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    :cond_11
    iget v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    if-eqz v9, :cond_12

    if-le v12, v9, :cond_13

    :cond_12
    iput v12, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    :cond_13
    iget v9, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    if-eqz v9, :cond_14

    if-ge v7, v9, :cond_15

    :cond_14
    iput v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    :cond_15
    iget v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    if-eqz v7, :cond_16

    if-le v10, v7, :cond_17

    :cond_16
    iput v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    :cond_17
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_18
    const/4 v5, 0x0

    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v6, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v6}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1000(Lorg/telegram/ui/Components/MessagePreviewView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v6, v6, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v6}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1000(Lorg/telegram/ui/Components/MessagePreviewView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-nez v6, :cond_19

    move/from16 v27, v4

    const/4 v3, 0x0

    goto/16 :goto_b

    :cond_19
    iget-object v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v8

    iget-object v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v10, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v10, v10

    add-float/2addr v10, v8

    iget v11, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v10, v11

    iget v11, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v11, v11

    iget v12, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v11, v12

    iget v12, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v12, v12

    add-float/2addr v12, v8

    iget v8, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v12, v8

    iget v8, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v8, v8

    iget v13, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v8, v13

    iget-boolean v13, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v13, :cond_1a

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    add-float/2addr v11, v9

    iget-object v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    add-float/2addr v8, v9

    :cond_1a
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    cmpg-float v13, v11, v13

    if-gez v13, :cond_1b

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    :cond_1b
    iget-object v13, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v13, v13, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    cmpl-float v13, v8, v13

    if-lez v13, :cond_1c

    iget-object v8, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v8, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    :cond_1c
    iget-object v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v13

    if-nez v9, :cond_1e

    iget-object v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    cmpl-float v9, v9, v13

    if-eqz v9, :cond_1d

    goto :goto_6

    :cond_1d
    const/4 v9, 0x0

    goto :goto_7

    :cond_1e
    :goto_6
    const/4 v9, 0x1

    :goto_7
    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v9, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v14, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v14}, Landroid/view/View;->getScaleX()F

    move-result v14

    iget-object v15, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v15}, Landroid/view/View;->getScaleY()F

    move-result v15

    sub-float v16, v12, v10

    div-float v16, v16, v13

    add-float v3, v10, v16

    sub-float v16, v8, v11

    div-float v16, v16, v13

    add-float v7, v11, v16

    move-object/from16 v13, p1

    invoke-virtual {v13, v14, v15, v3, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_8

    :cond_1f
    move-object/from16 v13, p1

    :goto_8
    iget-object v3, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v7, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    float-to-int v14, v10

    float-to-int v15, v11

    float-to-int v2, v12

    float-to-int v13, v8

    move/from16 v27, v4

    iget-boolean v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v17, v7

    move-object/from16 v18, p1

    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v2

    move/from16 v22, v13

    move/from16 v23, v4

    move/from16 v24, v3

    invoke-virtual/range {v17 .. v26}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackground(Landroid/graphics/Canvas;IIIIZZZI)V

    iget-object v2, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v4, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iput-boolean v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eqz v9, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_21

    iget-object v4, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v4, v4, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_20

    move-object v7, v4

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v9

    if-ne v9, v6, :cond_20

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v9, v9

    sub-float v9, v10, v9

    sub-float v13, v12, v10

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v9, v13

    invoke-virtual {v4, v9}, Landroid/view/View;->setPivotX(F)V

    int-to-float v7, v7

    sub-float v7, v11, v7

    sub-float v9, v8, v11

    div-float/2addr v9, v14

    add-float/2addr v7, v9

    invoke-virtual {v4, v7}, Landroid/view/View;->setPivotY(F)V

    goto :goto_a

    :cond_20
    const/high16 v14, 0x40000000    # 2.0f

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    :goto_b
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v27

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_5

    :goto_c
    add-int/lit8 v4, v27, 0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_22
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v3, v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setParentViewSize(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->drawChatBackgroundElements(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    instance-of v0, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCheckBox(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p4

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result p4

    invoke-virtual {v0}, Landroid/view/View;->getPivotX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPivotY()F

    move-result v3

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawContent(Landroid/graphics/Canvas;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->layoutTextXY(Z)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawMessageText(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->captionFlag()I

    move-result p4

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr p3, v1

    if-nez p3, :cond_2

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p3

    iget-boolean p3, p3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-nez p3, :cond_2

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p3

    iget-boolean p3, p3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz p3, :cond_3

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {v0, p1, p4, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {v0, p1, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawReactionsLayout(Landroid/graphics/Canvas;FLjava/lang/Integer;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p3

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCommentLayout(Landroid/graphics/Canvas;F)V

    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p3

    if-nez p3, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p3

    iget-boolean p3, p3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz p3, :cond_5

    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p3

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    :cond_5
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p3

    iget-boolean p3, p3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez p3, :cond_7

    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p3

    iget-boolean p3, p3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz p3, :cond_8

    :cond_7
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p3

    invoke-virtual {v0, p1, p3, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    :cond_8
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOverlays(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->recordDrawingStatePreview()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_9
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$700(Lorg/telegram/ui/Components/MessagePreviewView$Page;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$702(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)Z

    :cond_1
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$800(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$900(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->stopScrolling()V

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onParentScrolled()V

    return-void
.end method
