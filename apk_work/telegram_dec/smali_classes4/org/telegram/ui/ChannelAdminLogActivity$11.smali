.class Lorg/telegram/ui/ChannelAdminLogActivity$11;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final scrollValue:I

.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

.field private totalDy:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->totalDy:F

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->scrollValue:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4402(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4502(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4402(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4502(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4600(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const/4 p1, 0x0

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    const/4 p2, 0x1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4400(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4700(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4900(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4900(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p3

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p3, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4902(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4900(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p3

    const-wide/16 v0, 0x96

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4900(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    new-array v1, p2, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, p1

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, p2, [Landroid/animation/Animator;

    aput-object v0, v1, p1

    invoke-virtual {p3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4900(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$11$1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity$11;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$4900(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$5000(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$11;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$3700(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    return-void
.end method
