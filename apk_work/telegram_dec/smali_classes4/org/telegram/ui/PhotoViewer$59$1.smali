.class Lorg/telegram/ui/PhotoViewer$59$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$59;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$59;

.field final synthetic val$fromEditMode:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$59;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$59$1;->val$fromEditMode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$28700(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1800(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20100(Lorg/telegram/ui/PhotoViewer;)V

    :cond_0
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->val$fromEditMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$14400(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2, v2}, Lorg/telegram/ui/PhotoViewer;->access$28800(Lorg/telegram/ui/PhotoViewer;IZZZ)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$28500(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p1, v2}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3000(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_5

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$13800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59$1;->this$1:Lorg/telegram/ui/PhotoViewer$59;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$28600(Lorg/telegram/ui/PhotoViewer;)V

    :cond_5
    return-void
.end method
