.class public Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;
.super Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReactionWidget"
.end annotation


# instance fields
.field private final imageHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

.field private final mediaArea:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

.field private final storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->this$0:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$DrawingObject;-><init>()V

    new-instance p1, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    new-instance v1, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->imageHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flipped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->setMirror(ZZ)V

    :cond_0
    iget-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->dark:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->nextStyle()V

    :cond_1
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setStatic()V

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setVisibleReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->imageHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->this$0:Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    iget v4, v3, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageX:F

    float-to-double v4, v4

    iget v6, v3, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageW:F

    float-to-double v6, v6

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    iget-object v8, v8, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v9, v8, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->x:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v6

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v9

    double-to-float v4, v4

    iget v5, v3, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageY:F

    float-to-double v9, v5

    iget v3, v3, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;->imageH:F

    float-to-double v13, v3

    iget-wide v11, v8, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->y:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v15

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v11

    double-to-float v3, v9

    iget-wide v9, v8, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v9

    div-double/2addr v6, v15

    double-to-float v5, v6

    iget-wide v6, v8, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->h:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v6

    div-double/2addr v13, v15

    double-to-float v6, v13

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float v9, v4, v5

    float-to-int v9, v9

    div-float/2addr v6, v8

    sub-float v10, v3, v6

    float-to-int v10, v10

    add-float/2addr v5, v4

    float-to-int v5, v5

    add-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v7, v9, v10, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v5, v5, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->rotation:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v5, v9

    if-eqz v7, :cond_1

    double-to-float v5, v5

    invoke-virtual {v1, v5, v4, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f1c28f6    # 0.61f

    mul-float v3, v3, v4

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v8

    sub-float/2addr v5, v3

    float-to-int v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v3

    float-to-int v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    float-to-int v3, v8

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->updateShadowLayer(F)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->imageHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->imageHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->imageHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->isDarkStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    const/high16 v3, -0x1000000

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->imageHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onAttachedToWindow(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->imageHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator$ReactionWidget;->imageHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setParent(Landroid/view/View;)V

    return-void
.end method
