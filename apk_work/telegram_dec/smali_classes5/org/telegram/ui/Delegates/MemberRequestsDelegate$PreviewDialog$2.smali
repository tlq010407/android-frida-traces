.class Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->runAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

.field final synthetic val$fromScale:F

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;ZF)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    iput-boolean p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->val$show:Z

    iput p3, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->val$fromScale:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->val$show:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1301(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1200(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->val$show:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1200(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/view/ViewGroup;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->val$fromScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->this$1:Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;

    invoke-static {p1}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;->access$1200(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;)Landroid/view/ViewGroup;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$2;->val$fromScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method
