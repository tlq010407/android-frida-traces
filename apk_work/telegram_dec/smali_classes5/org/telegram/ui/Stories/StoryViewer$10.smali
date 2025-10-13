.class Lorg/telegram/ui/Stories/StoryViewer$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->startOpenAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method public static synthetic $r8$lambda$ghtJ5uG-NuoFjUgc7QXrzZKUldQ(Lorg/telegram/ui/Stories/StoryViewer$10;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$10;->lambda$onAnimationEnd$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$10$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$10$1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$10;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    const/4 p1, 0x0

    sput-boolean p1, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    if-nez v1, :cond_2

    invoke-virtual {v2, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput-object v3, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_3

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    if-nez v1, :cond_3

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput-object v3, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$4100(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$4102(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->openViews()V

    goto :goto_0

    :cond_5
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz v1, :cond_6

    new-instance v1, Lorg/telegram/ui/Stories/StoriesIntro;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesIntro;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$802(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesIntro;)Lorg/telegram/ui/Stories/StoriesIntro;

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$10$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer$10;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$10$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$10$2;-><init>(Lorg/telegram/ui/Stories/StoryViewer$10;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setStoriesIntroShown(Z)V

    :cond_8
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$10;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method
