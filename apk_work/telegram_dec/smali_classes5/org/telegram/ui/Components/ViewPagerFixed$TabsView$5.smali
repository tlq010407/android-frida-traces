.class Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$802(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;->onPageScrolled(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$5;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
