.class Lorg/telegram/ui/GroupCallActivity$29;
.super Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field uiVisibilityAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$SAQAzMZLhKjW4e1VPled5QMompk(Lorg/telegram/ui/GroupCallActivity$29;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCallActivity$29;->lambda$onUiVisibilityChanged$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V

    return-void
.end method

.method private synthetic lambda$onUiVisibilityChanged$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget v0, v0, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setProgressToHideUi(F)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$18700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$8100(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected canHideUI()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->canHideUI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->previewDialog:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$11900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallMiniTextureView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onBackPressed()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity;->onBackPressed()V

    return-void
.end method

.method protected onFullScreenModeChanged(Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/GroupCallActivity;->access$18502(Lorg/telegram/ui/GroupCallActivity;Z)Z

    sget-boolean v0, Lorg/telegram/ui/GroupCallActivity;->isTabletMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, p1, Lorg/telegram/ui/GroupCallActivity;->tabletGridAdapter:Lorg/telegram/ui/GroupCallTabletGridAdapter;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity;->tabletVideoGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/ui/GroupCallTabletGridAdapter;->setVisibility(Lorg/telegram/ui/Components/RecyclerListView;ZZ)V

    goto/16 :goto_4

    :cond_0
    const/16 v0, 0x8

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    if-eqz p1, :cond_3

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$7800(Lorg/telegram/ui/GroupCallActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v2

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WatchersView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WatchersView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/GroupCallActivity;->access$5800(Lorg/telegram/ui/GroupCallActivity;ZZ)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8100(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenAdapter:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->setVisibility(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenAdapter:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->update(ZLorg/telegram/ui/Components/RecyclerListView;)V

    goto/16 :goto_2

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenAdapter:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3, v1}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->setVisibility(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3, v1}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;Z)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->inFullscreenMode:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenAdapter:Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter;->setVisibility(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8200(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WatchersView;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/GroupCallActivity$WatchersView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v4, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v4, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    check-cast v4, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;

    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/GroupCallFullscreenAdapter$GroupCallUserCell;->setProgressToFullscreen(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v3}, Lorg/telegram/ui/GroupCallActivity;->access$8000(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$18500(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onUiVisibilityChanged()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->isUiVisible()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$29;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$29;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget v1, v1, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/GroupCallActivity$29;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/GroupCallActivity$29$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupCallActivity$29$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCallActivity$29;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$29;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$29;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$29;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/GroupCallActivity$29$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/GroupCallActivity$29$1;-><init>(Lorg/telegram/ui/GroupCallActivity$29;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected update()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->update()V

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$15800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->progressToFullscreenMode:F

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarUnscrolled:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBar:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v0

    invoke-static {v1, v0}, Lorg/telegram/ui/GroupCallActivity;->access$18302(Lorg/telegram/ui/GroupCallActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$18400(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$15800(Lorg/telegram/ui/GroupCallActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCallActivity;->access$900(Lorg/telegram/ui/GroupCallActivity;F)V

    return-void
.end method
