.class Lorg/telegram/ui/GroupCallActivity$29$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity$29;->onUiVisibilityChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCallActivity$29;

.field final synthetic val$uiVisible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity$29;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29$1;->this$1:Lorg/telegram/ui/GroupCallActivity$29;

    iput-boolean p2, p0, Lorg/telegram/ui/GroupCallActivity$29$1;->val$uiVisible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29$1;->this$1:Lorg/telegram/ui/GroupCallActivity$29;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/GroupCallActivity$29;->uiVisibilityAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$29$1;->val$uiVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p1, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$600(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$29$1;->this$1:Lorg/telegram/ui/GroupCallActivity$29;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget v0, v0, Lorg/telegram/ui/GroupCallActivity;->progressToHideUi:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->setProgressToHideUi(F)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29$1;->this$1:Lorg/telegram/ui/GroupCallActivity$29;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity;->fullscreenUsersListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29$1;->this$1:Lorg/telegram/ui/GroupCallActivity$29;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$18600(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29$1;->this$1:Lorg/telegram/ui/GroupCallActivity$29;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$8100(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$29$1;->this$1:Lorg/telegram/ui/GroupCallActivity$29;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$29;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$6700(Lorg/telegram/ui/GroupCallActivity;)V

    return-void
.end method
