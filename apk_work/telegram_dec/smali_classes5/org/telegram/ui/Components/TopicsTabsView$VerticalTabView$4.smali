.class Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setSelected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

.field final synthetic val$selected:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$4;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$4;->val$selected:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$4;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$4;->val$selected:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1802(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$4;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1900(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$4;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$2000(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)V

    return-void
.end method
