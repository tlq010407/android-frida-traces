.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;
.super Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastUpdate:J

.field linePaint:Landroid/graphics/Paint;

.field stickyXAlpha:F

.field stickyYAlpha:F

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->lastUpdate:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->lastUpdate:J

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTouchDown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyX()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyY()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x43160000    # 150.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyXAlpha:F

    cmpl-float v8, v7, v5

    if-eqz v8, :cond_1

    long-to-float v2, v0

    div-float/2addr v2, v4

    add-float/2addr v7, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_1
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyXAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyXAlpha:F

    cmpl-float v7, v2, v6

    if-eqz v7, :cond_2

    long-to-float v7, v0

    div-float/2addr v7, v4

    sub-float/2addr v2, v7

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyYAlpha:F

    cmpl-float v7, v2, v5

    if-eqz v7, :cond_3

    long-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v2, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_3
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyYAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    :cond_3
    if-nez v3, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyYAlpha:F

    cmpl-float v3, v2, v6

    if-eqz v3, :cond_4

    long-to-float v0, v0

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_3

    :cond_4
    :goto_4
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyYAlpha:F

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x437f0000    # 255.0f

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v11, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v10, v0

    iget-object v12, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v7, p1

    move v9, v11

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyXAlpha:F

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method
