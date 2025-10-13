.class Lorg/telegram/ui/Components/SharedMediaLayout$13;
.super Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setTranslationX(F)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6100(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-ne p1, p0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$400(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6302(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6200(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6302(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->updateSearchItemIcon(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotoVideoOptionsAlpha(F)F

    move-result p1

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6402(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6400(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result p1

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->canShowSearchItem()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x4

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6302(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6500(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->invalidateBlur()V

    return-void
.end method
