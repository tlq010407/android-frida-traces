.class Lorg/telegram/ui/GroupCallActivity$52;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;->updateLiveLabel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$52;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$52;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/GroupCallActivity;->access$20202(Lorg/telegram/ui/GroupCallActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$52;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$18000(Lorg/telegram/ui/GroupCallActivity;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$52;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$20300(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, -0x11c1b4

    goto :goto_0

    :cond_0
    const v0, -0xc2b9a9

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$52;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->access$20400(Lorg/telegram/ui/GroupCallActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
