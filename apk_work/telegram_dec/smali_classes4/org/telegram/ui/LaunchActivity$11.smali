.class Lorg/telegram/ui/LaunchActivity$11;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->setupActionBarLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private inLayout:Z

.field private path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sget-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-nez p1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_2

    :cond_0
    div-int/lit8 p1, p4, 0x64

    mul-int/lit8 p1, p1, 0x23

    const/high16 v0, 0x43a00000    # 320.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$900(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$900(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v2}, Lorg/telegram/ui/LaunchActivity;->access$900(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, p1, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v2}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, p3, p3, v1, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v2}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, p1, p3, v1, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, p3, p3, v0, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$1300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/2addr p4, p2

    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$1300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p5, p1

    div-int/2addr p5, p2

    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$1300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p2}, Lorg/telegram/ui/LaunchActivity;->access$1300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p4

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p1, p4, p5, p2, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$1100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p2}, Lorg/telegram/ui/LaunchActivity;->access$1100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p4}, Lorg/telegram/ui/LaunchActivity;->access$1100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$1200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p2}, Lorg/telegram/ui/LaunchActivity;->access$1200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p4}, Lorg/telegram/ui/LaunchActivity;->access$1200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$11;->inLayout:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/LaunchActivity;->access$802(Lorg/telegram/ui/LaunchActivity;Z)Z

    div-int/lit8 v0, p1, 0x64

    mul-int/lit8 v0, v0, 0x23

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$900(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$1000(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    sub-int v0, p1, v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/LaunchActivity;->access$802(Lorg/telegram/ui/LaunchActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v0

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$1300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x44048000    # 530.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr p1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr p2, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    iput-boolean v2, p0, Lorg/telegram/ui/LaunchActivity$11;->inLayout:Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity$11;->inLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
