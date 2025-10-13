.class Lorg/telegram/ui/TodoItemMenu$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TodoItemMenu;->setupMessageOptions(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TodoItemMenu;

.field final synthetic val$chatActivity:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$finalReactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field final synthetic val$message:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TodoItemMenu;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$13;->this$0:Lorg/telegram/ui/TodoItemMenu;

    iput-object p2, p0, Lorg/telegram/ui/TodoItemMenu$13;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iput-object p3, p0, Lorg/telegram/ui/TodoItemMenu$13;->val$message:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/ui/TodoItemMenu$13;->val$finalReactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic drawBackground()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawBackground(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawRoundRect(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    return-void
.end method

.method public synthetic needEnterText()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$needEnterText(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onEmojiWindowDismissed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$onEmojiWindowDismissed(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 13

    move-object v0, p0

    move-object v8, p2

    iget-object v1, v0, Lorg/telegram/ui/TodoItemMenu$13;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/TodoItemMenu$13;->val$message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ChatActivity;->findMessageCell(IZ)Lorg/telegram/ui/Cells/BaseCell;

    move-result-object v2

    instance-of v1, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v5, p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    :goto_0
    iget v6, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    iget v7, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    iget v7, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    add-int/2addr v1, v7

    int-to-float v1, v1

    iget v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v1, v5

    move v7, v1

    goto :goto_1

    :cond_0
    instance-of v1, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v5, v1, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-virtual {v5, p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/Cells/ChatActionCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-eqz v8, :cond_2

    iget-boolean v1, v8, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v1, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    move/from16 v10, p3

    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/TodoItemMenu$13;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v0, Lorg/telegram/ui/TodoItemMenu$13;->val$message:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v0, Lorg/telegram/ui/TodoItemMenu$13;->val$finalReactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    move-object v8, p2

    move/from16 v11, p4

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/ui/ChatActivity;->selectReaction(Landroid/view/View;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZZ)V

    iget-object v1, v0, Lorg/telegram/ui/TodoItemMenu$13;->this$0:Lorg/telegram/ui/TodoItemMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/TodoItemMenu;->dismiss(Z)V

    return-void
.end method
