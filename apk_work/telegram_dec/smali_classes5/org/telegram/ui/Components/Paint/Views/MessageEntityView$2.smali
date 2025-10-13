.class Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLjava/util/ArrayList;Lorg/telegram/ui/Components/BlurringShader$BlurManager;ZLorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final drawCaptionAfter:Ljava/util/ArrayList;

.field private final drawNamesAfter:Ljava/util/ArrayList;

.field private final drawReactionsAfter:Ljava/util/ArrayList;

.field private final drawTimeAfter:Ljava/util/ArrayList;

.field private final drawingGroups:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawTimeAfter:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawNamesAfter:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawCaptionAfter:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawReactionsAfter:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawingGroups:Ljava/util/ArrayList;

    return-void
.end method

.method private drawChatBackgroundElements(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v15, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/high16 v16, 0x40000000    # 2.0f

    const/4 v8, 0x1

    if-ge v1, v12, :cond_a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v10, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_8

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eq v4, v2, :cond_9

    :cond_1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v2

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->isAnimationInProgress()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isDrawingSelectionBackground()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    if-eqz v2, :cond_3

    iget v6, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_7

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-nez v2, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v6

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v12, :cond_6

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v13, v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v13, :cond_5

    check-cast v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-ne v13, v4, :cond_5

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawable()Lorg/telegram/ui/Components/MessageBackgroundDrawable;

    move-result-object v13

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v14, v14, v16

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getLastTouchTime()J

    move-result-wide v18

    cmp-long v14, v18, v7

    if-lez v14, :cond_5

    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getTouchX()F

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v3, v7

    invoke-virtual {v13}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->getTouchY()F

    move-result v7

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    move v15, v3

    move v3, v7

    move-wide/from16 v7, v18

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    int-to-float v7, v6

    sub-float/2addr v3, v7

    invoke-virtual {v5, v15, v3}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setTouchCoordsOverride(FF)V

    sub-int/2addr v2, v6

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v6

    const/4 v7, 0x0

    invoke-virtual {v11, v7, v6, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setCustomPaint(Landroid/graphics/Paint;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v5, v7, v6, v3, v2}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->setBounds(IIII)V

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/MessageBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    move-object v2, v4

    goto :goto_3

    :cond_8
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_9

    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v11, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v16

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v16

    invoke-virtual {v11, v4, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v3, v11, v8}, Lorg/telegram/ui/Cells/ChatActionCell;->drawBackground(Landroid/graphics/Canvas;Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v11, v8, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->drawReactions(Landroid/graphics/Canvas;ZLjava/lang/Integer;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v13, 0x0

    :goto_4
    const/4 v1, 0x3

    if-ge v13, v1, :cond_28

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-ne v13, v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    const/4 v2, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x4

    goto/16 :goto_d

    :cond_c
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v12, :cond_21

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_d

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    cmpg-float v1, v3, v15

    if-ltz v1, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_e

    :cond_d
    :goto_6
    const/4 v14, 0x0

    goto/16 :goto_8

    :cond_e
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    if-eqz v1, :cond_d

    if-nez v13, :cond_f

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v8, :cond_d

    :cond_f
    if-ne v13, v8, :cond_10

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawBackgroundForDeletedItems:Z

    if-nez v4, :cond_10

    goto :goto_6

    :cond_10
    if-nez v13, :cond_11

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v4, :cond_d

    :cond_11
    if-ne v13, v8, :cond_12

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v4, :cond_12

    goto :goto_6

    :cond_12
    if-ne v13, v9, :cond_13

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_13
    if-eq v13, v9, :cond_14

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_6

    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v14, 0x0

    iput v14, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    iput v14, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    iput v14, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    iput v14, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    iput-boolean v14, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    iput-boolean v14, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iput-object v2, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    const/4 v14, 0x0

    :goto_7
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v5

    iput-boolean v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v17

    add-int v6, v6, v17

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableTop()I

    move-result v17

    add-int v6, v6, v17

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v17

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getBackgroundDrawableBottom()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v9, v10

    const/high16 v19, 0x41200000    # 10.0f

    if-nez v9, :cond_16

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    :cond_16
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v3, v9

    if-nez v3, :cond_17

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v17, v17, v3

    :cond_17
    move/from16 v3, v17

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->willRemovedAfterAnimation()Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iput-object v2, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    :cond_18
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    if-eqz v2, :cond_19

    if-ge v6, v2, :cond_1a

    :cond_19
    iput v6, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    :cond_1a
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    if-eqz v2, :cond_1b

    if-le v3, v2, :cond_1c

    :cond_1b
    iput v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    :cond_1c
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    if-eqz v2, :cond_1d

    if-ge v4, v2, :cond_1e

    :cond_1d
    iput v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    :cond_1e
    iget v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    if-eqz v2, :cond_1f

    if-le v5, v2, :cond_20

    :cond_1f
    iput v5, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    :cond_20
    :goto_8
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x2

    goto/16 :goto_5

    :cond_21
    const/4 v14, 0x0

    const/4 v9, 0x0

    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawingGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v1

    iget-object v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float v6, v3, v4

    iget v3, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v3, v3

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v3, v4

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v1, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float v5, v4, v1

    iget v1, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v1, v1

    iget v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v1, v4

    iget-boolean v4, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v4, :cond_22

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v3, v2

    iget-object v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    :cond_22
    move v4, v1

    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_24

    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_23

    goto :goto_a

    :cond_23
    const/16 v17, 0x0

    goto :goto_b

    :cond_24
    :goto_a
    const/16 v17, 0x1

    :goto_b
    if-eqz v17, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    iget-object v2, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v2

    sub-float v19, v5, v6

    div-float v19, v19, v16

    add-float v8, v6, v19

    sub-float v19, v4, v3

    div-float v19, v19, v16

    add-float v10, v3, v19

    invoke-virtual {v11, v1, v2, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_25
    iget-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    float-to-int v8, v6

    float-to-int v10, v3

    float-to-int v14, v5

    float-to-int v15, v4

    move-object/from16 v22, v7

    iget-boolean v7, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v25, v1

    move-object v1, v2

    move-object/from16 v2, p1

    move/from16 v26, v3

    move v3, v8

    move/from16 v27, v4

    move v4, v10

    move/from16 v28, v5

    move v5, v14

    move v14, v6

    move v6, v15

    move-object/from16 v15, v22

    const/16 v20, 0x1

    move/from16 v8, v25

    move/from16 v22, v9

    const/16 v18, 0x2

    move/from16 v9, v23

    const/16 v21, 0x4

    move/from16 v10, v24

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackground(Landroid/graphics/Canvas;IIIIZZZI)V

    iget-object v1, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-boolean v3, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->drawCaptionLayout:Z

    if-eqz v17, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v12, :cond_27

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_26

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-ne v4, v15, :cond_26

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v4, v4

    sub-float v6, v14, v4

    sub-float v5, v28, v14

    div-float v5, v5, v16

    add-float/2addr v6, v5

    invoke-virtual {v1, v6}, Landroid/view/View;->setPivotX(F)V

    int-to-float v3, v3

    sub-float v3, v26, v3

    sub-float v4, v27, v26

    div-float v4, v4, v16

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_27
    add-int/lit8 v9, v22, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_9

    :goto_d
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_28
    return-void
.end method

.method private drawChatForegroundElements(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v8

    goto :goto_1

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v7, v1, v8, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_4

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v10

    goto :goto_3

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    invoke-virtual {v7, v1, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v6, 0x41000000    # 8.0f

    if-lez v2, :cond_c

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_b

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v9

    iget v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v9, v4

    if-nez v9, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v10

    goto :goto_6

    :cond_7
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-eqz v13, :cond_9

    iget-object v14, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v14, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v14, :cond_9

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v14

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v15, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v15, v15

    add-float/2addr v15, v14

    iget v3, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v15, v3

    iget v3, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v3, v3

    iget v5, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v3, v5

    iget v5, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v5, v5

    add-float/2addr v5, v14

    iget v14, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v5, v14

    iget v14, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v14, v14

    iget v4, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v14, v4

    iget-boolean v4, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v4, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v14, v4

    :cond_8
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v15, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v5, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v14, v4

    invoke-virtual {v1, v15, v3, v5, v14}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_9
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v3, :cond_a

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    invoke-virtual {v8, v1, v9, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_12

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v7, 0x1

    and-int/2addr v5, v7

    if-nez v5, :cond_e

    :cond_d
    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v5

    goto :goto_8

    :cond_f
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_8
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v9

    add-float/2addr v7, v9

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v9

    if-eqz v9, :cond_11

    iget-object v10, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v11

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v10, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v10, v10

    add-float/2addr v10, v11

    iget v12, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v10, v12

    iget v12, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v12, v12

    iget v13, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v12, v13

    iget v13, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    iget v11, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v13, v11

    iget v11, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v11, v11

    iget v14, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v11, v14

    iget-boolean v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v9, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v9

    add-float/2addr v12, v9

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v9

    add-float/2addr v11, v9

    :cond_10
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v10, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v12, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v13, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v11, v9

    invoke-virtual {v1, v10, v12, v13, v11}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_11
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->wasDraw:Z

    if-eqz v9, :cond_d

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 v8, 0x0

    invoke-virtual {v4, v1, v5, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawReactionsLayout(Landroid/graphics/Canvas;FLjava/lang/Integer;)V

    invoke-virtual {v4, v1, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCommentLayout(Landroid/graphics/Canvas;F)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_13
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawChatBackgroundElements(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawChatForegroundElements(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    move-object/from16 v17, v4

    move-object v4, v3

    move-object/from16 v3, v17

    goto :goto_0

    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCheckBox(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    if-eqz v4, :cond_33

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v3

    const/4 v7, 0x1

    if-nez v3, :cond_8

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v8, :cond_12

    :cond_8
    if-eqz v3, :cond_9

    iget-boolean v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v8, :cond_9

    iget-byte v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v8, :cond_d

    iget-byte v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v8, :cond_d

    :cond_9
    if-eqz v3, :cond_a

    iget-boolean v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-eqz v8, :cond_b

    :cond_a
    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v3, :cond_c

    iget-byte v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v8, :cond_d

    iget-byte v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v8, :cond_d

    :cond_c
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasNameLayout()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-nez v3, :cond_e

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->transformGroupToSingleMessage:Z

    if-nez v8, :cond_e

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v8, :cond_12

    :cond_e
    if-eqz v3, :cond_f

    iget v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->captionFlag()I

    move-result v9

    and-int/2addr v8, v9

    if-eqz v8, :cond_10

    :cond_f
    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    if-eqz v3, :cond_11

    iget v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_12

    and-int/2addr v8, v7

    if-eqz v8, :cond_12

    :cond_11
    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    if-eqz v8, :cond_33

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v9

    if-eqz v9, :cond_13

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v9, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v9, :cond_13

    goto :goto_3

    :cond_13
    const/4 v9, 0x0

    goto :goto_4

    :cond_14
    :goto_3
    const/4 v9, 0x1

    :goto_4
    if-eqz v9, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_5

    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v11

    float-to-int v11, v11

    :goto_5
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v12, v12, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v12

    if-ltz v12, :cond_1b

    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    if-eqz v13, :cond_18

    if-eqz v3, :cond_18

    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v13

    iget-object v13, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v14}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    iget v15, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_16

    sub-int/2addr v12, v14

    add-int/2addr v12, v13

    goto :goto_7

    :cond_16
    sub-int/2addr v12, v7

    add-int/2addr v13, v7

    :goto_6
    if-ge v13, v14, :cond_19

    iget-object v15, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v15}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v15, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v10, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-le v15, v10, :cond_17

    goto :goto_7

    :cond_17
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_18
    sub-int/2addr v12, v7

    :cond_19
    :goto_7
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v10

    if-eqz v10, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {v8, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    return v5

    :cond_1b
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v10

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v12

    add-float/2addr v10, v12

    if-eqz v9, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    goto :goto_8

    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v12

    :goto_8
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLayoutHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCheckBoxVisible()Z

    move-result v14

    if-eqz v14, :cond_1d

    cmpl-float v14, v10, v6

    if-nez v14, :cond_1d

    const/4 v14, 0x1

    goto :goto_9

    :cond_1d
    const/4 v14, 0x0

    :goto_9
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPlayingRound()Z

    move-result v15

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v15, :cond_1f

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v15

    iget-boolean v15, v15, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    if-eqz v15, :cond_1e

    goto :goto_a

    :cond_1e
    if-le v12, v13, :cond_21

    move v12, v13

    goto :goto_b

    :cond_1f
    :goto_a
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v15

    iget-boolean v15, v15, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animatePlayingRound:Z

    if-eqz v15, :cond_21

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v15

    iget v15, v15, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPlayingRound()Z

    move-result v16

    if-nez v16, :cond_20

    sub-float v15, v7, v15

    :cond_20
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v12, v12

    mul-float v12, v12, v15

    int-to-float v13, v13

    sub-float v15, v7, v15

    mul-float v13, v13, v15

    add-float/2addr v12, v13

    float-to-int v12, v12

    :cond_21
    :goto_b
    if-nez v9, :cond_22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v13

    cmpl-float v13, v13, v6

    if-eqz v13, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_22
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v13

    if-eqz v13, :cond_2c

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v13

    if-ltz v13, :cond_2c

    move v15, v13

    move v13, v11

    move v11, v10

    move-object v10, v4

    const/4 v4, 0x0

    :goto_c
    const/16 v7, 0x14

    if-lt v4, v7, :cond_23

    goto/16 :goto_f

    :cond_23
    add-int/lit8 v4, v4, 0x1

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v7

    if-eqz v7, :cond_27

    if-eqz v3, :cond_27

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_24

    goto :goto_f

    :cond_24
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    iget v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_25

    add-int/2addr v15, v7

    const/4 v6, 0x1

    add-int/2addr v15, v6

    goto :goto_e

    :cond_25
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_d
    if-ltz v7, :cond_28

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$2;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget-byte v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iget-byte v2, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-ge v6, v2, :cond_26

    goto :goto_e

    :cond_26
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v2, p2

    goto :goto_d

    :cond_27
    add-int/lit8 v15, v15, 0x1

    :cond_28
    :goto_e
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v6, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_2a

    move-object v10, v2

    check-cast v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSlidingOffsetX()F

    move-result v2

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCheckBoxTranslation()F

    move-result v6

    add-float/2addr v2, v6

    if-eqz v14, :cond_29

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-lez v7, :cond_29

    move v11, v2

    :cond_29
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedTop()Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_2a
    :goto_f
    move-object v4, v10

    move v10, v11

    move v11, v13

    goto :goto_10

    :cond_2b
    move-object/from16 v2, p2

    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_2c
    :goto_10
    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v12, v3

    if-ge v3, v11, :cond_2d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v12, v11, v2

    :cond_2d
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawPinnedBottom()Z

    move-result v2

    if-nez v2, :cond_2f

    if-eqz v9, :cond_2e

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    goto :goto_11

    :cond_2e
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->deltaBottom:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    :goto_11
    if-le v12, v2, :cond_2f

    move v12, v2

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    cmpl-float v3, v10, v2

    if-eqz v3, :cond_30

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_30
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-eqz v2, :cond_31

    int-to-float v2, v12

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v12, v2

    :cond_31
    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v12, v2

    int-to-float v2, v12

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v2

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getPivotX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v10, 0x1

    shr-int/2addr v4, v10

    int-to-float v4, v4

    add-float/2addr v7, v4

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :goto_12
    const/4 v2, 0x0

    goto :goto_13

    :cond_32
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    goto :goto_12

    :goto_13
    invoke-virtual {v8, v10, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    invoke-virtual {v8, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-nez v9, :cond_33

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_14

    :cond_33
    const/4 v3, 0x0

    :cond_34
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_35
    return v5
.end method
