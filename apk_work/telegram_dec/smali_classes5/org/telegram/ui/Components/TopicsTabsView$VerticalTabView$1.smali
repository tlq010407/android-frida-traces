.class Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final shakeAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v0, 0x168

    invoke-direct {p1, p0, v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$1;->shakeAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$1;->shakeAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1200(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1300(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/Shaker;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    new-instance v2, Lorg/telegram/ui/Components/Shaker;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Shaker;-><init>(Landroid/view/View;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1302(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;Lorg/telegram/ui/Components/Shaker;)Lorg/telegram/ui/Components/Shaker;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$1;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$1300(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Lorg/telegram/ui/Components/Shaker;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/Shaker;->concat(Landroid/graphics/Canvas;F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
