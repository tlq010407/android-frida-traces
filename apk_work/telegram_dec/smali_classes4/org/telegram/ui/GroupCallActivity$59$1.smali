.class Lorg/telegram/ui/GroupCallActivity$59$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity$59;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCallActivity$59;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity$59;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$59$1;->this$1:Lorg/telegram/ui/GroupCallActivity$59;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$59$1;->this$1:Lorg/telegram/ui/GroupCallActivity$59;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$59;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$21200(Lorg/telegram/ui/GroupCallActivity;)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$59$1;->this$1:Lorg/telegram/ui/GroupCallActivity$59;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$59;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$21300(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$59$1;->this$1:Lorg/telegram/ui/GroupCallActivity$59;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$59;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$6900(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$59$1;->this$1:Lorg/telegram/ui/GroupCallActivity$59;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$59;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$18500(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$59$1;->this$1:Lorg/telegram/ui/GroupCallActivity$59;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$59;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/GroupCallActivity;->access$18502(Lorg/telegram/ui/GroupCallActivity;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$59$1;->this$1:Lorg/telegram/ui/GroupCallActivity$59;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$59;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/GroupCallActivity;->access$7100(Lorg/telegram/ui/GroupCallActivity;Z)V

    :cond_0
    return-void
.end method
