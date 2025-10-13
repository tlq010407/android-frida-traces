.class Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/recorder/FlashViews;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final clip:Lorg/telegram/ui/GradientClip;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/GradientClip;

    invoke-direct {p1}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;->clip:Lorg/telegram/ui/GradientClip;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->access$000(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v6, v0

    const/4 v3, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->access$000(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float v4, v4, v1

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v0, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;->clip:Lorg/telegram/ui/GradientClip;

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->access$000(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;)F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, p1, v2, v6, v5}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;->clip:Lorg/telegram/ui/GradientClip;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->access$000(Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;)F

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
