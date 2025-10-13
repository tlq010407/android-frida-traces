.class Lorg/telegram/ui/DialogOrContactPickerActivity$4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogOrContactPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private globalIgnoreLayout:Z

.field private maybeStartTracking:Z

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogOrContactPickerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2802(Lorg/telegram/ui/DialogOrContactPickerActivity$4;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->maybeStartTracking:Z

    return p1
.end method

.method static synthetic access$2902(Lorg/telegram/ui/DialogOrContactPickerActivity$4;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    return p1
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;Z)Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$600(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->getNextPageId(Z)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->maybeStartTracking:Z

    iput-boolean v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTrackingX:I

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$900(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$600(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;->access$402(Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;I)I

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$802(Lorg/telegram/ui/DialogOrContactPickerActivity;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$700(Lorg/telegram/ui/DialogOrContactPickerActivity;Z)V

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object p1

    if-eqz p2, :cond_1

    aget-object p1, p1, v3

    iget-object p2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_1
    aget-object p1, p1, v3

    iget-object p2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    neg-int p2, p2

    goto :goto_0

    :goto_1
    return v3
.end method


# virtual methods
.method public checkTabsAnimationInProgress()Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1900(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2000(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    iget-object v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$800(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    mul-int v3, v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v4, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$800(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    mul-int v4, v4, v2

    int-to-float v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2102(Lorg/telegram/ui/DialogOrContactPickerActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1902(Lorg/telegram/ui/DialogOrContactPickerActivity;Z)Z

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1900(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v0

    return v0

    :cond_5
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1500(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1800(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1600(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1700(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    :cond_0
    return-void
.end method

.method public forceHasOverlappingRendering(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2200(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2300(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2400(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float v4, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2200(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->checkTabsAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$600(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->isAnimatingIndicator()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1000(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->globalIgnoreLayout:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;->access$1200(Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;->access$1200(Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;->access$1300(Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;->access$1300(Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->globalIgnoreLayout:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1400(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    if-ne v3, v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2500(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    invoke-virtual {p0}, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->checkTabsAnimationInProgress()Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->maybeStartTracking:Z

    if-nez v2, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTrackingPointerId:I

    iput-boolean v1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->maybeStartTracking:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTrackingX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTrackingY:I

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_c

    :cond_2
    const/4 v2, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v0, :cond_b

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTrackingPointerId:I

    if-ne v4, v5, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTrackingX:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTrackingY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-boolean v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$800(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-gtz v0, :cond_4

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$800(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v5

    if-nez v5, :cond_7

    if-gez v0, :cond_7

    :cond_4
    if-gez v0, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    invoke-direct {p0, p1, v5}, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-nez v5, :cond_7

    iput-boolean v1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->maybeStartTracking:Z

    iput-boolean v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$800(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    :goto_1
    int-to-float v6, v6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    neg-int v6, v6

    goto :goto_1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$600(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;->access$400(Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    :cond_7
    iget-boolean v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->maybeStartTracking:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    if-nez v2, :cond_9

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_17

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v4, :cond_17

    if-gez v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_c

    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    int-to-float v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$800(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    iget-object v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    :goto_4
    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    iget-object v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_4

    :goto_5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$600(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-static {v1}, Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;->access$400(Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->selectTabWithId(IF)V

    goto/16 :goto_c

    :cond_b
    const/4 v4, 0x3

    if-eqz p1, :cond_c

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v1, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_17

    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2600(Lorg/telegram/ui/DialogOrContactPickerActivity;)I

    move-result v6

    int-to-float v6, v6

    const/16 v7, 0x3e8

    invoke-virtual {v5, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    iget-boolean v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    if-nez v6, :cond_f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x453b8000    # 3000.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_f

    cmpg-float v6, v4, v2

    if-gez v6, :cond_d

    const/4 v6, 0x1

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    :goto_6
    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_f
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v6, v7}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2102(Lorg/telegram/ui/DialogOrContactPickerActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_11

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x455ac000    # 3500.0f

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v7, v5

    if-gez v5, :cond_11

    :cond_10
    const/4 v5, 0x1

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_8
    invoke-static {v6, v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2002(Lorg/telegram/ui/DialogOrContactPickerActivity;Z)Z

    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2000(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$800(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v1, [F

    aput v2, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    iget-object v9, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    new-array v10, v1, [F

    aput v9, v10, v3

    invoke-static {v8, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v0, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    aput-object v7, v8, v1

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_9

    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v1, [F

    aput v2, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    iget-object v9, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    new-array v10, v1, [F

    aput v9, v10, v3

    invoke-static {v8, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v0, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    aput-object v7, v8, v1

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_9

    :cond_13
    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v5, p1

    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$800(Lorg/telegram/ui/DialogOrContactPickerActivity;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget-object v8, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    new-array v9, v1, [F

    aput v8, v9, v3

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    new-array v9, v1, [F

    aput v2, v9, v3

    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v0, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    aput-object v7, v8, v1

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_9

    :cond_14
    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v3

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget-object v8, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    new-array v9, v1, [F

    aput v8, v9, v3

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$300(Lorg/telegram/ui/DialogOrContactPickerActivity;)[Lorg/telegram/ui/DialogOrContactPickerActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    new-array v9, v1, [F

    aput v2, v9, v3

    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v0, [Landroid/animation/Animator;

    aput-object v6, v8, v3

    aput-object v7, v8, v1

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_9
    iget-object v5, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    invoke-static {}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2700()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v7, p1, v6

    int-to-float v5, v5

    div-float/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->distanceInfluenceForSnapDuration(F)F

    move-result v5

    mul-float v5, v5, v0

    add-float/2addr v0, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v4, v2

    if-lez v2, :cond_15

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_a

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v6

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    :goto_a
    const/16 v0, 0x258

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0x96

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/DialogOrContactPickerActivity$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DialogOrContactPickerActivity$4$1;-><init>(Lorg/telegram/ui/DialogOrContactPickerActivity$4;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$2100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$1902(Lorg/telegram/ui/DialogOrContactPickerActivity;Z)Z

    iput-boolean v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    goto :goto_b

    :cond_16
    iput-boolean v3, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->maybeStartTracking:Z

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$3100(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->this$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogOrContactPickerActivity;->access$600(Lorg/telegram/ui/DialogOrContactPickerActivity;)Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTextTabStrip;->setEnabled(Z)V

    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_17
    :goto_c
    iget-boolean p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->startedTracking:Z

    return p1

    :cond_18
    return v3
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$4;->globalIgnoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
