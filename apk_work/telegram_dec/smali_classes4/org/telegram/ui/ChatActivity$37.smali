.class Lorg/telegram/ui/ChatActivity$37;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatSearchTabs;->shown()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/ChatActivityContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$26400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    check-cast v0, Lorg/telegram/ui/ChatActivityContainer;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1, p1, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->setPadding(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTabAnimationUpdate(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->invalidateBlur()V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->updateBlurContent()V

    return-void
.end method

.method protected onTabScrollEnd(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabScrollEnd(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$26200(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$26202(Lorg/telegram/ui/ChatActivity;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$37;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$26300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->clearViews()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
