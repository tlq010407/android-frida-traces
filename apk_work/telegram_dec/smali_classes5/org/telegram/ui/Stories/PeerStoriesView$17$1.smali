.class Lorg/telegram/ui/Stories/PeerStoriesView$17$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView$17;->checkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$17;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->access$5702(Lorg/telegram/ui/Stories/PeerStoriesView$17;I)I

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->access$5800(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->access$5900(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->access$6300(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->access$6000(Lorg/telegram/ui/Stories/PeerStoriesView$17;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->access$6100(Lorg/telegram/ui/Stories/PeerStoriesView$17;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->access$6200(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->access$6600(Lorg/telegram/ui/Stories/PeerStoriesView$17;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$17;->access$6500(Lorg/telegram/ui/Stories/PeerStoriesView$17;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$17$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$17;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$17;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5602(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
