.class Lorg/telegram/ui/Components/SharedMediaLayout$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip$ScrollSlidingTabStripDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->createScrollingTextTabStrip(Landroid/content/Context;)Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;
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

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(F)V
    .locals 8

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8700(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    neg-float v4, p1

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p1

    :goto_0
    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabProgress()F

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotoVideoOptionsAlpha(F)F

    move-result v4

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6402(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v4, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6400(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x4

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x4

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/16 v4, 0x8

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x8

    goto :goto_4

    :cond_4
    const/4 v7, 0x4

    :goto_4
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6302(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchAlpha(F)F

    move-result v5

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6302(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateSearchItemIconAnimated()V

    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6500(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    cmpl-float p1, p1, v1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aput-object p1, v1, v0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v6, 0x8

    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6202(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8900(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    :cond_8
    return-void
.end method

.method public onPageSelected(IZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$102(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8600(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8702(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSelectedTabChanged()V

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSearchItemVisible(I)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateSearchToOptions(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    return-void
.end method

.method public onSamePageSelected()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$34;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$8800(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    return-void
.end method
