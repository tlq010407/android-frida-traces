.class Lorg/telegram/ui/Stories/PeerStoriesView$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayoutForLike()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$TcBhOQuyeryajXYL0e46g_Npy_Q(Lorg/telegram/ui/Stories/PeerStoriesView$37;Landroid/animation/ValueAnimator;[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$37;->lambda$onReactionClicked$0(Landroid/animation/ValueAnimator;[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ywg1LBPqbpZ-k-VVfy9mZtKSBf8(Lorg/telegram/ui/Stories/PeerStoriesView$37;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$37;->lambda$onReactionClicked$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReactionClicked$0(Landroid/animation/ValueAnimator;[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p3, p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10302(Lorg/telegram/ui/Stories/PeerStoriesView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10300(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result p1

    const p3, 0x3f4ccccd    # 0.8f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-boolean p3, p2, p1

    if-nez p3, :cond_0

    const/4 p3, 0x1

    aput-boolean p3, p2, p1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10402(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$onReactionClicked$1(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9102(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    const/4 v3, 0x0

    new-array v5, v4, [Z

    aput-boolean v3, v5, v3

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const v9, 0x3f4ccccd    # 0.8f

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v9, Lorg/telegram/ui/Stories/PeerStoriesView$37$1;

    invoke-direct {v9, v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$37$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$37;Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v9, 0x96

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v9, Lorg/telegram/ui/Stories/StoriesLikeButton;

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v11, v11, Lorg/telegram/ui/Stories/PeerStoriesView;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-direct {v9, v10, v11}, Lorg/telegram/ui/Stories/StoriesLikeButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    invoke-static {v7, v9}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9202(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoriesLikeButton;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v7

    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9300(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v7

    const/16 v9, 0x28

    const/4 v10, 0x3

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v6

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6, v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9402(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_0
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v6

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6, v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9502(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9602(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    iget-wide v9, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-eqz v6, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9602(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v9, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v10}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v10

    iget-wide v13, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v9, v2, v10, v13, v14}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    invoke-static {v6, v9}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9402(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v6

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v6, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v6

    iget-object v9, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v6, :cond_3

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->select_animation:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v10}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    invoke-static {v9}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v16

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v17, "60_60"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v13 .. v25}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v15

    iget-object v9, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v9}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v14

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v6

    invoke-virtual {v6, v3, v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    :cond_3
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v9, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v9, :cond_5

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v9, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez v9, :cond_5

    iget-object v9, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v9, :cond_4

    new-instance v9, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {v9}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object v9, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v9, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v10, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    add-int/2addr v10, v4

    iput v10, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v7, v6, v9}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->applyForStoryViews(Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/TLRPC$Reaction;Lorg/telegram/tgnet/tl/TL_stories$StoryViews;)V

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9900(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    :cond_5
    iget-wide v6, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v9, v6, v11

    if-eqz v9, :cond_6

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Stories/StoriesLikeButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Stories/StoriesLikeButton;->emojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {v7, v3, v4}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->createFrom(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;ZZ)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9502(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setView(Landroid/view/View;)V

    :cond_6
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v7, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7000(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v9

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v7, v9, v10, v6, v1}, Lorg/telegram/ui/Stories/StoriesController;->setStoryReaction(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    new-array v6, v2, [I

    move-object/from16 v7, p2

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v9, v2, [I

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    aget v11, v6, v3

    aget v12, v9, v3

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10002(Lorg/telegram/ui/Stories/PeerStoriesView;I)I

    iget-object v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    aget v6, v6, v4

    aget v4, v9, v4

    sub-int/2addr v6, v4

    invoke-static {v10, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10102(Lorg/telegram/ui/Stories/PeerStoriesView;I)I

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10202(Lorg/telegram/ui/Stories/PeerStoriesView;I)I

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4, v8}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10302(Lorg/telegram/ui/Stories/PeerStoriesView;F)F

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$9200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoriesLikeButton;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Stories/StoriesLikeButton;->setAllowDrawReaction(Z)V

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Stories/StoriesLikeButton;->prepareAnimateReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$37$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v2, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$37$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$37;Landroid/animation/ValueAnimator;[Z)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$37$2;

    invoke-direct {v1, v0, v5, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$37$2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$37;[ZLorg/telegram/ui/Stories/StoriesLikeButton;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0xdc

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$10500(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
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

.method public needEnterText()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestAdjust(Z)V

    return v1
.end method

.method public synthetic onEmojiWindowDismissed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$onEmojiWindowDismissed(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 0

    new-instance p4, Lorg/telegram/ui/Stories/PeerStoriesView$37$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p2, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$37$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$37;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V

    if-nez p3, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$37;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5500(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
