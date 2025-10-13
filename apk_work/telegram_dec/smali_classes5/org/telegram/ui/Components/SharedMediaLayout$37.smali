.class Lorg/telegram/ui/Components/SharedMediaLayout$37;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->stopScroll(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9602(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9700(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p1

    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6302(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchAlpha(F)F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6302(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateSearchItemIcon(F)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6500(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6202(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v2

    aput-object v5, v4, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aput-object p1, v4, v2

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v0, 0x8

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6202(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8900(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6102(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9802(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9902(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabScroll(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$10000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$37;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    return-void
.end method
