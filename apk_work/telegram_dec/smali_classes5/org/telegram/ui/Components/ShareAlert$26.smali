.class Lorg/telegram/ui/Components/ShareAlert$26;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;

.field final synthetic val$num:I

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;IZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$26;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iput p2, p0, Lorg/telegram/ui/Components/ShareAlert$26;->val$num:I

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ShareAlert$26;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$26;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$11200(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$26;->val$num:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$26;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$11200(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$26;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$26;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$11200(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$26;->val$num:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$26;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$11200(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$26;->val$num:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$26;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$11200(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$26;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert$26;->val$show:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$26;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$4400(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$26;->val$num:I

    aget-object p1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$26;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$11200(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$26;->val$num:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    return-void
.end method
