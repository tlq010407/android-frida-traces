.class public Lorg/telegram/ui/Stories/StoryReactionWidgetView;
.super Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;
.source "SourceFile"


# instance fields
.field animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field hasCounter:Z

.field holder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

.field preloadSmallReaction:Lorg/telegram/messenger/ImageReceiver;

.field progressToCount:Lorg/telegram/ui/Components/AnimatedFloat;

.field storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

.field private final visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;Lorg/telegram/ui/EmojiAnimationsOverlay;)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    new-instance p1, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    new-instance p1, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->holder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->preloadSmallReaction:Lorg/telegram/messenger/ImageReceiver;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->progressToCount:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object p1, p3, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean p2, p3, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flipped:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->setMirror(ZZ)V

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->updateShadowLayer(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->holder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setVisibleReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    invoke-virtual {p4, p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->preload(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iget-object p2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->preloadSmallReaction:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const-string v4, "webp"

    const/4 v6, 0x1

    const-string v2, "40_40_lastreactframe"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string p2, "fonts/rcondensedbold.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    iget-boolean p1, p3, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->dark:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->nextStyle()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public customDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f1c28f6    # 0.61f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eda9fbe    # 0.427f

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    sub-float v6, v5, v0

    add-float/2addr v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->progressToCount:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v7, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->hasCounter:Z

    if-eqz v7, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    float-to-int v1, v1

    invoke-static {v2, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->holder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->isDarkStyle()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    const/high16 v2, -0x1000000

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->holder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->holder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f56c8b4    # 0.839f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    float-to-int v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v2, v3, v5, v6, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAnimatedEmojiDrawable()Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->holder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->holder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->preloadSmallReaction:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->holder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->preloadSmallReaction:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e1fbe77    # 0.156f

    mul-float v0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    return-void
.end method

.method public playAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->holder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->play()V

    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->updateShadowLayer(F)V

    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    :cond_0
    return-void
.end method

.method public setViews(Lorg/telegram/tgnet/tl/TL_stories$StoryViews;Z)V
    .locals 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v5, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->compare(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p2, :cond_0

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->hasCounter:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->hasCounter:Z

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->animatedTextDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    invoke-static {p1, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    if-nez p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->progressToCount:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->hasCounter:Z

    if-eqz p2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->hasCounter:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->invalidate()V

    if-nez p2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->progressToCount:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->hasCounter:Z

    if-eqz p2, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_6
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_7
    return-void
.end method
