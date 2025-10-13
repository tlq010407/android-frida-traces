.class public abstract Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/EntityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionView"
.end annotation


# instance fields
.field private currentHandle:I

.field protected dotPaint:Landroid/graphics/Paint;

.field protected dotStrokePaint:Landroid/graphics/Paint;

.field protected paint:Landroid/graphics/Paint;

.field private final showAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private shown:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->showAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->shown:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v5, v6, p1

    aput v4, v6, p2

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-direct {v3, v6, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f400000    # 0.75f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const/4 v3, 0x0

    const/high16 v4, 0x50000000

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    const v0, -0xe56301

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    const v0, 0x402a3d71    # 2.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p1, p2, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method protected getShowAlpha()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->showAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->shown:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    return v0
.end method

.method public hide(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->shown:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v6

    invoke-interface {v5, v3, v4, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getTransformedTouch(FF[F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v6, :cond_0

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_1

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v7

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/MotionEvent;I)F

    move-result v8

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/MotionEvent;I)F

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getTransformedTouch(FF[F)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    if-eqz v3, :cond_3

    aget v9, v9, v5

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v10

    aget v10, v10, v5

    add-float/2addr v9, v10

    div-float/2addr v9, v7

    aput v9, v8, v5

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v6

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v10

    aget v10, v10, v6

    add-float/2addr v9, v10

    div-float/2addr v9, v7

    aput v9, v8, v6

    goto :goto_2

    :cond_3
    aget v9, v9, v5

    aput v9, v8, v5

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v6

    aput v9, v8, v6

    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$800(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v8

    if-eq v8, v3, :cond_4

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v5

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$902(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v6

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1002(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v5

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1102(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v6

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1202(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v5

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1302(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v6

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1402(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->hide(Z)V

    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$802(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v8

    aget v8, v8, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v9

    aget v9, v9, v6

    if-eqz v2, :cond_f

    if-eq v2, v6, :cond_d

    const/4 v10, 0x2

    if-eq v2, v10, :cond_5

    if-eq v2, v4, :cond_d

    goto/16 :goto_7

    :cond_5
    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v2, v4, :cond_6

    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v11}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v2

    aget v12, v2, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v2

    aget v13, v2, v6

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v2

    aget v15, v2, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v2

    aget v16, v2, v6

    move v14, v3

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1700(Lorg/telegram/ui/Components/Paint/Views/EntityView;FFZFF)Z

    move-result v2

    goto/16 :goto_8

    :cond_6
    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$900(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v2

    sub-float v2, v8, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1000(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v4

    sub-float v4, v9, v4

    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v11}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1800(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v2, v2, v11

    if-gtz v2, :cond_7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_c

    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1800(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityHandleTouched()V

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1802(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-interface {v2, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I

    move-result-object v2

    aget v4, v2, v5

    int-to-float v4, v4

    aget v7, v2, v6

    int-to-float v7, v7

    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v11}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$900(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v12}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1000(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v12

    invoke-static {v4, v7, v11, v12}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v4

    aget v7, v2, v5

    int-to-float v7, v7

    aget v11, v2, v6

    int-to-float v11, v11

    invoke-static {v7, v11, v8, v9}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v7

    const/4 v11, 0x0

    cmpl-float v12, v4, v11

    if-lez v12, :cond_9

    div-float/2addr v7, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    :cond_9
    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v4, v6, :cond_a

    aget v4, v2, v6

    int-to-float v4, v4

    sub-float/2addr v4, v9

    float-to-double v10, v4

    aget v2, v2, v5

    int-to-float v2, v2

    sub-float/2addr v2, v8

    :goto_3
    float-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    double-to-float v11, v10

    goto :goto_4

    :cond_a
    if-ne v4, v10, :cond_b

    aget v4, v2, v6

    int-to-float v4, v4

    sub-float v4, v9, v4

    float-to-double v10, v4

    aget v2, v2, v5

    int-to-float v2, v2

    sub-float v2, v8, v2

    goto :goto_3

    :cond_b
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v4, v10

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$902(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2, v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1002(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    :cond_c
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_8

    :cond_d
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-ne v2, v4, :cond_e

    const/4 v2, 0x1

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    :goto_6
    invoke-static {v7, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1900(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)V

    iput v5, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->hide(Z)V

    goto :goto_5

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1502(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->pointInsideHandle(FF)I

    move-result v2

    if-eqz v2, :cond_11

    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v10

    aget v10, v10, v5

    invoke-static {v7, v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$902(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F

    move-result-object v10

    aget v10, v10, v6

    invoke-static {v7, v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1002(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1302(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7, v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1402(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    iput-boolean v5, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    :cond_10
    if-ne v2, v4, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->allowLongPressOnSelected()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v7, v4

    invoke-static {v2, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_5

    :cond_11
    :goto_7
    const/4 v2, 0x0

    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1502(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    const/4 v5, 0x1

    :cond_13
    return v5
.end method

.method protected abstract pointInsideHandle(FF)I
.end method

.method public updatePosition()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getSelectionBounds()Lorg/telegram/ui/Components/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->x:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->width:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->height:F

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
