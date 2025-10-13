.class Lorg/telegram/messenger/pip/PipActivityHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/pip/activity/IPipActivityHandler;


# instance fields
.field private final actionListeners:Ljava/util/HashMap;

.field private final activity:Landroid/app/Activity;

.field private final animationListeners:Ljava/util/ArrayList;

.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final callback:Landroid/view/Choreographer$FrameCallback;

.field private final choreographer:Landroid/view/Choreographer;

.field private final durationEnter:Lorg/telegram/messenger/pip/utils/PipDuration;

.field private final durationLeave:Lorg/telegram/messenger/pip/utils/PipDuration;

.field private hasFrameListener:Z

.field private isActivityStarted:Z

.field private isInPictureInPictureModeInternal:Z

.field private lastProgress:F

.field private final listeners:Ljava/util/ArrayList;

.field private pictureInPictureParams:Landroid/app/PictureInPictureParams;


# direct methods
.method public static synthetic $r8$lambda$oE6q0xozlN5E8WbBaAW1aYvkJHE(Lorg/telegram/messenger/pip/PipActivityHandler;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/pip/PipActivityHandler;->onFrameInternal(J)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->listeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->animationListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->actionListeners:Ljava/util/HashMap;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->lastProgress:F

    new-instance v0, Lorg/telegram/messenger/pip/utils/PipDuration;

    const-string v1, "enter"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/pip/utils/PipDuration;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationEnter:Lorg/telegram/messenger/pip/utils/PipDuration;

    new-instance v0, Lorg/telegram/messenger/pip/utils/PipDuration;

    const-string v1, "leave"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/pip/utils/PipDuration;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationLeave:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->choreographer:Landroid/view/Choreographer;

    new-instance v0, Lorg/telegram/messenger/pip/PipActivityHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/pip/PipActivityHandler$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/pip/PipActivityHandler;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->callback:Landroid/view/Choreographer$FrameCallback;

    new-instance v0, Lorg/telegram/messenger/pip/PipActivityHandler$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/pip/PipActivityHandler$1;-><init>(Lorg/telegram/messenger/pip/PipActivityHandler;)V

    iput-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/pip/PipActivityHandler;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchAction(Ljava/lang/String;I)V

    return-void
.end method

.method private dispatchAction(Ljava/lang/String;I)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->actionListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private dispatchCompleteEnterPip()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchEnterAnimationEnd()V

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/pip/activity/IPipActivityListener;

    invoke-interface {v1}, Lorg/telegram/messenger/pip/activity/IPipActivityListener;->onCompleteEnterToPip()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchCompleteExitPip(Z)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchLeaveAnimationEnd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->isInPictureInPictureModeInternal:Z

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/pip/activity/IPipActivityListener;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/pip/activity/IPipActivityListener;->onCompleteExitFromPip(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchEnterAnimationEnd()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchTransitionAnimationProgress(F)V

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationEnter:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipDuration;->end()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;

    invoke-interface {v3, v0, v1}, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;->onEnterAnimationEnd(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->unsubscribeFromFrameUpdates()V

    return-void
.end method

.method private dispatchEnterAnimationStart()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationEnter:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipDuration;->estimated()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;

    invoke-interface {v3, v0, v1}, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;->onEnterAnimationStart(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchTransitionAnimationProgress(F)V

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationEnter:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipDuration;->start()V

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->subscribeToFrameUpdates()V

    return-void
.end method

.method private dispatchLeaveAnimationEnd()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchTransitionAnimationProgress(F)V

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationLeave:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipDuration;->end()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;

    invoke-interface {v3, v0, v1}, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;->onLeaveAnimationEnd(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->unsubscribeFromFrameUpdates()V

    return-void
.end method

.method private dispatchLeaveAnimationStart()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationLeave:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipDuration;->estimated()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;

    invoke-interface {v3, v0, v1}, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;->onLeaveAnimationStart(J)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchTransitionAnimationProgress(F)V

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationLeave:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/utils/PipDuration;->start()V

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->subscribeToFrameUpdates()V

    return-void
.end method

.method private dispatchStartEnterPip()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->isInPictureInPictureModeInternal:Z

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/pip/activity/IPipActivityListener;

    invoke-interface {v1}, Lorg/telegram/messenger/pip/activity/IPipActivityListener;->onStartEnterToPip()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchEnterAnimationStart()V

    return-void
.end method

.method private dispatchStartExitPip(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/pip/activity/IPipActivityListener;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/pip/activity/IPipActivityListener;->onStartExitFromPip(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchLeaveAnimationStart()V

    return-void
.end method

.method private dispatchTransitionAnimationProgress(F)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->lastProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->lastProgress:F

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;->onTransitionAnimationProgress(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hasContentForPictureInPictureMode()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lorg/telegram/messenger/pip/activity/IPipActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/messenger/pip/activity/IPipActivity;

    invoke-interface {v0}, Lorg/telegram/messenger/pip/activity/IPipActivity;->getPipController()Lorg/telegram/messenger/pip/PipActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/PipActivityController;->hasContentForPictureInPictureMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private manualEnterPictureInPictureModeInternal()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->isInPictureInPictureModeInternal:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/pip/utils/PipUtils;->useAutoEnterInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->hasContentForPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchStartEnterPip()V

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {v0, v1}, Lorg/telegram/messenger/pip/PipActivityHandler$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Landroid/app/PictureInPictureParams;)Z

    :cond_2
    return-void
.end method

.method private onFrameInternal(J)V
    .locals 2

    iget-boolean p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->hasFrameListener:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;

    invoke-interface {p2}, Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;->onTransitionAnimationFrame()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationEnter:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-virtual {p1}, Lorg/telegram/messenger/pip/utils/PipDuration;->isStarted()Z

    move-result p1

    const/4 p2, 0x0

    const v0, 0x3f733333    # 0.95f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationEnter:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-virtual {p1}, Lorg/telegram/messenger/pip/utils/PipDuration;->progress()F

    move-result p1

    div-float/2addr p1, v0

    :goto_1
    invoke-static {p1, p2, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchTransitionAnimationProgress(F)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationLeave:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-virtual {p1}, Lorg/telegram/messenger/pip/utils/PipDuration;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->durationLeave:Lorg/telegram/messenger/pip/utils/PipDuration;

    invoke-virtual {p1}, Lorg/telegram/messenger/pip/utils/PipDuration;->progress()F

    move-result p1

    div-float/2addr p1, v0

    sub-float p1, v1, p1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->choreographer:Landroid/view/Choreographer;

    iget-object p2, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->callback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private subscribeToFrameUpdates()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->hasFrameListener:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->hasFrameListener:Z

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->choreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->callback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private unsubscribeFromFrameUpdates()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->hasFrameListener:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->hasFrameListener:Z

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->choreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->callback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method


# virtual methods
.method addActionListener(Ljava/lang/String;Lorg/telegram/messenger/pip/activity/IPipActivityActionListener;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->actionListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->actionListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAnimationListener(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addPipListener(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string p1, "PIP_DEBUG"

    const-string v0, "[Activity] onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "PIP_DEBUG"

    const-string v1, "[Activity] onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInPictureInPictureMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->hasContentForPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/pip/utils/PipUtils;->useAutoEnterInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchStartEnterPip()V

    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Activity] onPictureInPictureModeChanged "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PIP_DEBUG"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->isInPictureInPictureModeInternal:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchCompleteEnterPip()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->isActivityStarted:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchStartExitPip(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchCompleteExitPip(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPictureInPictureRequested()V
    .locals 2

    const-string v0, "PIP_DEBUG"

    const-string v1, "[Activity] onPictureInPictureRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->manualEnterPictureInPictureModeInternal()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "PIP_DEBUG"

    const-string v1, "[Activity] onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->isInPictureInPictureModeInternal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchCompleteExitPip(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "PIP_DEBUG"

    const-string v1, "[Activity] onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->isActivityStarted:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "PIP_CUSTOM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lorg/telegram/messenger/pip/PipActivityHandler$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "PIP_DEBUG"

    const-string v1, "[Activity] onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->isActivityStarted:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->isInPictureInPictureModeInternal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/pip/PipActivityHandler;->dispatchStartExitPip(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    const-string v0, "PIP_DEBUG"

    const-string v1, "[Activity] onUserLeaveHint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/telegram/messenger/pip/PipActivityHandler;->manualEnterPictureInPictureModeInternal()V

    return-void
.end method

.method removeActionListener(Ljava/lang/String;Lorg/telegram/messenger/pip/activity/IPipActivityActionListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->actionListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->actionListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method removeAnimationListener(Lorg/telegram/messenger/pip/activity/IPipActivityAnimationListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->animationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removePipListener(Lorg/telegram/messenger/pip/activity/IPipActivityListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 2

    const-string v0, "PIP_DEBUG"

    const-string v1, "[Activity] setPictureInPictureParams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipActivityHandler;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    return-void
.end method
