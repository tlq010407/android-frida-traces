.class Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setText(Ljava/lang/CharSequence;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/CounterView$CounterDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/CounterView$CounterDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;->this$0:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;->this$0:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->access$302(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;->this$0:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->access$402(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;->this$0:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->access$502(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;

    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;->this$0:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-static {p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->access$600(Lorg/telegram/ui/Components/CounterView$CounterDrawable;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;->this$0:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v0, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateVisibility:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->access$600(Lorg/telegram/ui/Components/CounterView$CounterDrawable;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;->this$0:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-static {p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->access$600(Lorg/telegram/ui/Components/CounterView$CounterDrawable;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;->this$0:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v0, -0x1

    iput v0, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    return-void
.end method
