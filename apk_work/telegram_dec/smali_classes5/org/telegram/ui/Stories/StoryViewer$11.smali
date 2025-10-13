.class Lorg/telegram/ui/Stories/StoryViewer$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->startCloseAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method public static synthetic $r8$lambda$9t-SjSyeWZTeqfz3wGMRbz31OWA(Lorg/telegram/ui/Stories/StoryViewer$11;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$11;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->disableHwAcceleration()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->checkNavBarColor()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->locker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesIntro;->stopAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$802(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/StoriesIntro;)Lorg/telegram/ui/Stories/StoriesIntro;

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iput-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RadialProgress;->copyParams(Lorg/telegram/ui/Components/RadialProgress;)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->release()V

    :try_start_0
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$11$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$11$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer$11;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->isShowing:Z

    iput-boolean v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->foundViewToClose:Z

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$4200(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$4200(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$11;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$4202(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_6
    return-void
.end method
