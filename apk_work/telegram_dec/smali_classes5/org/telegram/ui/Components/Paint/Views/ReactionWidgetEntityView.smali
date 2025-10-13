.class public Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView$StickerViewSelectionView;
    }
.end annotation


# instance fields
.field baseSize:Lorg/telegram/ui/Components/Size;

.field crossfadeBackgrounds:Lorg/telegram/ui/Components/AnimatedFloat;

.field currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field private drawScale:F

.field mirror:Z

.field nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

.field outBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

.field progressToNext:Lorg/telegram/ui/Components/AnimatedFloat;

.field reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

.field storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;


# direct methods
.method public static synthetic $r8$lambda$pEh038D7gHJFeACKq1NerdieuD4(Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->lambda$mirror$0([ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;Lorg/telegram/ui/Components/Size;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    new-instance p1, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    new-instance p1, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->outBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    new-instance p1, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    new-instance p1, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->progressToNext:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->crossfadeBackgrounds:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->drawScale:F

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->baseSize:Lorg/telegram/ui/Components/Size;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->progressToNext:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getReactionsList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->findHeartReaction(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setVisibleReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->updatePosition()V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->drawScale:F

    return p1
.end method

.method private findHeartReaction(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->title:Ljava/lang/String;

    const-string v3, "Red Heart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1
.end method

.method private synthetic lambda$mirror$0([ZLandroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p2, v3

    if-gez v4, :cond_0

    div-float/2addr p2, v3

    const/high16 p1, 0x42b40000    # 90.0f

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    sub-float/2addr v2, p2

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->drawScale:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    aget-boolean v5, p1, v4

    if-nez v5, :cond_1

    const/4 v5, 0x1

    aput-boolean v5, p1, v4

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->mirror:Z

    invoke-virtual {p1, v5, v4}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->setMirror(ZZ)V

    :cond_1
    sub-float/2addr p2, v3

    div-float/2addr p2, v3

    sub-float/2addr v2, p2

    const/high16 p1, -0x3d4c0000    # -90.0f

    mul-float v2, v2, p1

    invoke-virtual {p0, v2}, Landroid/view/View;->setRotationY(F)V

    mul-float p2, p2, v1

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->drawScale:F

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method protected allowHaptic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public allowLongPressOnSelected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public changeStyle(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->nextStyle()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->outBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    new-instance p1, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->outBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->isDarkStyle()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->nextStyle()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->mirror:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->setMirror(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->updateShadowLayer(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->crossfadeBackgrounds:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView$StickerViewSelectionView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView$StickerViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;Landroid/content/Context;)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->getPadding()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->crossfadeBackgrounds:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->outBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->drawScale:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {p1, v3, v3, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->outBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    const/high16 v4, 0x437f0000    # 255.0f

    if-eqz v3, :cond_1

    sub-float v6, v2, v1

    mul-float v6, v6, v4

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->setAlpha(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->outBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v7, v6, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    iget v6, v6, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v6, v6

    sub-int/2addr v6, v0

    invoke-virtual {v3, v0, v0, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->outBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v4, v3, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v4, v4

    sub-int/2addr v4, v0

    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v0, v0, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f1c28f6    # 0.61f

    mul-float v0, v0, v1

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v5

    sub-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    float-to-int v0, v6

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->progressToNext:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->isDarkStyle()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    goto :goto_0

    :cond_2
    const/high16 v4, -0x1000000

    :goto_0
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setColor(I)V

    cmpl-float v3, v0, v2

    if-nez v3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v2, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCurrentReaction()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-object v0
.end method

.method protected getMaxScale()F
    .locals 1

    const v0, 0x3fe66666    # 1.8f

    return v0
.end method

.method protected getMinScale()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getPadding()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    const/high16 v1, 0x42a80000    # 84.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    new-instance v2, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v5

    sub-float/2addr v5, v4

    mul-float v5, v5, v0

    mul-float v1, v1, v0

    invoke-direct {v2, v3, v5, v1, v1}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v2
.end method

.method public isDark()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->isDarkStyle()Z

    move-result v0

    return v0
.end method

.method public isMirrored()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->mirror:Z

    return v0
.end method

.method public mirror(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->mirror:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->mirror:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->setMirror(ZZ)V

    goto :goto_0

    :cond_0
    new-array p1, v2, [Z

    aput-boolean v0, p1, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;[Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;[Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->onAttachedToWindow(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget p1, p1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v0, v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCurrentReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setVisibleReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;->setVisibleReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->reactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->nextReactionHolder:Lorg/telegram/ui/Components/Reactions/ReactionImageHolder;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->progressToNext:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->storyReactionWidgetBackground:Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryReactionWidgetBackground;->updateShadowLayer(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected updatePosition()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method
