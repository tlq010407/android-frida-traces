.class Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->animateCounterBounce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$3;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$3;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1502(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$3;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1700(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
