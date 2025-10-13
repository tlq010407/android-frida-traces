.class Lorg/telegram/ui/ChannelAdminLogActivity$5$1;
.super Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelAdminLogActivity$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$5;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected heightAnimationEnabled()Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1300(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1400(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1500(Lorg/telegram/ui/ChannelAdminLogActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xfa

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    if-ne v1, v3, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isTransitionAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPreviewOpenAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1600(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1700(Lorg/telegram/ui/ChannelAdminLogActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method protected onPanTranslationUpdate(FFZ)V
    .locals 1

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-interface {p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPreviewOpenAnimationInProgress()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$702(Lorg/telegram/ui/ChannelAdminLogActivity;F)F

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p3, p3, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p3, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$802(Lorg/telegram/ui/ChannelAdminLogActivity;F)F

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    div-float v0, p1, p3

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1100(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    div-float p3, p1, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$1200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p2

    float-to-int p3, p1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundTranslation(I)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFragmentPanTranslationOffset(I)V

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p2, p2, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    instance-of p3, p2, Lorg/telegram/ui/DialogsActivity;

    if-eqz p3, :cond_2

    check-cast p2, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/DialogsActivity;->setPanTranslationOffset(F)V

    :cond_2
    return-void
.end method

.method protected onTransitionEnd()V
    .locals 0

    return-void
.end method

.method protected onTransitionStart(ZI)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$5$1;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$5;

    iget-object p1, p1, Lorg/telegram/ui/ChannelAdminLogActivity$5;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->access$602(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Z

    return-void
.end method
