.class abstract Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerLayout"
.end annotation


# instance fields
.field private nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field final synthetic this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/AvatarConstructorFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    return-void
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_1

    iget-boolean p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    iget p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->cancelExpandAnimator()V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    int-to-float v1, p3

    iget p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandedHeight:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    sub-float/2addr p2, v1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p1, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->access$200(Lorg/telegram/ui/Components/AvatarConstructorFragment;FZ)V

    aput p3, p4, v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-gtz p2, :cond_1

    iget-boolean p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->cancelExpandAnimator()V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    int-to-float p4, p5

    iget p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->expandedHeight:I

    int-to-float p1, p1

    div-float/2addr p4, p1

    sub-float/2addr p2, p4

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->access$200(Lorg/telegram/ui/Components/AvatarConstructorFragment;FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->cancelExpandAnimator()V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget p2, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->keyboardVisibleProgress:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-gtz p2, :cond_1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->isLandscapeMode:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$ContainerLayout;->this$0:Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget v0, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment;->progressToExpand:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0, v2, v2}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->access$1300(Lorg/telegram/ui/Components/AvatarConstructorFragment;ZZZ)V

    return-void
.end method
