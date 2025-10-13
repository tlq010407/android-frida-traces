.class public Lorg/telegram/ui/MessageEnterTransitionContainer;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MessageEnterTransitionContainer$Transition;
    }
.end annotation


# instance fields
.field private final currentAccount:I

.field hideRunnable:Ljava/lang/Runnable;

.field private final parent:Landroid/view/ViewGroup;

.field private transitions:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$Pt5h9pbfc5gcIq3cVtB9cqe3g8g(Lorg/telegram/ui/MessageEnterTransitionContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MessageEnterTransitionContainer;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->transitions:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/MessageEnterTransitionContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MessageEnterTransitionContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/MessageEnterTransitionContainer;)V

    iput-object v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->hideRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->parent:Landroid/view/ViewGroup;

    iput p2, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->currentAccount:I

    return-void
.end method

.method private checkVisibility()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->transitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeDelayed(Ljava/lang/Runnable;)V

    iget v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->transitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeDelayed(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method addTransition(Lorg/telegram/ui/MessageEnterTransitionContainer$Transition;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->transitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/MessageEnterTransitionContainer;->checkVisibility()V

    iget-object p1, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->transitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->transitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->transitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->transitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/MessageEnterTransitionContainer$Transition;

    invoke-interface {v1, p1}, Lorg/telegram/ui/MessageEnterTransitionContainer$Transition;->onDraw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeTransition(Lorg/telegram/ui/MessageEnterTransitionContainer$Transition;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->transitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/MessageEnterTransitionContainer;->checkVisibility()V

    iget-object p1, p0, Lorg/telegram/ui/MessageEnterTransitionContainer;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
