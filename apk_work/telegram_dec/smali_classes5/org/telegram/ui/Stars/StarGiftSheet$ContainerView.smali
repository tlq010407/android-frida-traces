.class Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private dimAlpha:F

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->rect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->dimAlpha:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private drawView(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 8

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v4, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2100(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v6, v0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1500(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->top()F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1600(Lorg/telegram/ui/Stars/StarGiftSheet;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1700(Lorg/telegram/ui/Stars/StarGiftSheet;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1800(Lorg/telegram/ui/Stars/StarGiftSheet;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->rect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->dimAlpha:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->updateTranslations()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1900(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->drawView(Landroid/graphics/Canvas;Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0, p1, p0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2000(Lorg/telegram/ui/Stars/StarGiftSheet;Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->top()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$1400(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2300(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public height()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getRealHeight()F

    move-result v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2800(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2900(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->at(I)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3000(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2400(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2400(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getFinalHeight()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2600(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->setHeights(II)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2700(Lorg/telegram/ui/Stars/StarGiftSheet;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3702(Lorg/telegram/ui/Stars/StarGiftSheet;I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_1
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_2
    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3800(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_2

    :cond_1
    const/16 v3, 0x270f

    const/high16 v4, -0x80000000

    goto :goto_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2400(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2400(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getFinalHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2600(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Adapter;->setHeights(II)V

    :cond_3
    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->height()F

    move-result v1

    sub-float/2addr v0, v1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public top()F
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->height()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3300(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3400(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v4}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_2

    :cond_1
    if-ne v4, v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v0

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getRealHeight()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3600(Lorg/telegram/ui/Stars/StarGiftSheet;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->progress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3600(Lorg/telegram/ui/Stars/StarGiftSheet;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Stars/StarGiftSheet$PageTransition;->progress:F

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    :cond_5
    return v0
.end method

.method public updateTranslations()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->top()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2800(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getRealHeight()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2900(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getRealHeight()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3000(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$2500(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getRealHeight()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->height()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3100(Lorg/telegram/ui/Stars/StarGiftSheet;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$ContainerView;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->access$3200(Lorg/telegram/ui/Stars/StarGiftSheet;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    return-void
.end method
