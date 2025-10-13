.class Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;IIIFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field grayPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

.field final synthetic val$defaultLayout:Landroid/widget/FrameLayout;

.field final synthetic val$premiumLayout:Landroid/widget/FrameLayout;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field whitePaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitPreviewView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$defaultLayout:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$premiumLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->grayPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->whitePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->isStatistic:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->grayPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->grayPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->grayPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    goto :goto_0

    :goto_1
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$200(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Lorg/telegram/ui/Components/Premium/LimitPreviewView$DarkGradientProvider;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-interface {v3, v6, v7}, Lorg/telegram/ui/Components/Premium/LimitPreviewView$DarkGradientProvider;->setDarkGradientLocation(FF)Landroid/graphics/Paint;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v2, v6, v7, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->grayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v2, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v3, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->whitePaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_4
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v2

    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$300(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$300(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/view/View;

    move-result-object v3

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v7, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-eqz v7, :cond_5

    iget-object v2, v7, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    iget v3, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->gradientTotalHeight:I

    int-to-float v3, v3

    iget v6, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->gradientYOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v7, v3, v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrixLinear(FF)V

    goto :goto_5

    :cond_5
    move-object v6, v0

    const/4 v7, 0x0

    :goto_4
    if-eq v6, v3, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_4

    :cond_6
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$400(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v13, v3, v6

    neg-float v14, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    goto :goto_5

    :cond_7
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v15

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$400(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v20, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v21, v3

    invoke-virtual/range {v15 .. v21}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v6, v6, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v5, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_8
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->staticGradient:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    if-nez v3, :cond_9

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->invalidationEnabled:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr p5, p3

    invoke-virtual {v0, p1, p1, v2, p5}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr p4, p2

    invoke-virtual {v1, v2, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$defaultLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x80000000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$defaultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$500(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->defaultCount:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$premiumLayout:Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$600(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iput v6, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$500(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$600(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$defaultLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$premiumLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    int-to-float v3, p1

    sub-float/2addr v3, v0

    sub-float/2addr v3, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$600(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$100(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$500(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iput p1, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$premiumLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$700(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->premiumCount:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v2, v5

    :cond_7
    add-int/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    int-to-float v4, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->access$600(Lorg/telegram/ui/Components/Premium/LimitPreviewView;)F

    move-result v5

    mul-float v4, v4, v5

    sub-int v1, p1, v1

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-static {v4, v1, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$defaultLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->val$premiumLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/LimitPreviewView$2;->this$0:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->width1:I

    sub-int v1, p1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    :goto_5
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_6

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_6
    return-void
.end method
