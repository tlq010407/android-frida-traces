.class Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkLongPress(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v0, p1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    :cond_0
    return-void
.end method
