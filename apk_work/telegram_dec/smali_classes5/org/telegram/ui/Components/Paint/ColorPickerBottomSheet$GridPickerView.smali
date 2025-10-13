.class final Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GridPickerView"
.end annotation


# instance fields
.field private colorMap:Ljava/util/Map;

.field private final colors:[I

.field private paint:Landroid/graphics/Paint;

.field private radii:[F

.field private selected:J

.field private selectorPaint:Landroid/graphics/Paint;

.field private selectorPath:Landroid/graphics/Path;

.field private selectors:Landroid/util/LongSparseArray;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V
    .locals 10

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->paint:Landroid/graphics/Paint;

    const/16 p1, 0xc

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->colors:[I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectors:Landroid/util/LongSparseArray;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selected:J

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPath:Landroid/graphics/Path;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->radii:[F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->colorMap:Ljava/util/Map;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v1, v3, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    const/high16 v4, -0x1000000

    if-nez v3, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->colorMap:Ljava/util/Map;

    shl-int/lit8 v6, v2, 0x10

    int-to-long v6, v6

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    int-to-float v7, v2

    const/high16 v8, 0x41300000    # 11.0f

    div-float/2addr v7, v8

    invoke-static {v1, v4, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_0
    const/4 v5, 0x6

    const/high16 v6, 0x3f000000    # 0.5f

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->colors:[I

    aget v5, v5, v2

    rsub-int/lit8 v7, v3, 0x5

    int-to-float v7, v7

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    mul-float v7, v7, v6

    invoke-static {v5, v4, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->colors:[I

    aget v4, v4, v2

    rsub-int/lit8 v5, v3, 0x9

    int-to-float v5, v5

    const/high16 v7, 0x40a00000    # 5.0f

    div-float/2addr v5, v7

    mul-float v5, v5, v6

    sub-float/2addr v6, v5

    invoke-static {v4, v1, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->colorMap:Ljava/util/Map;

    shl-int/lit8 v6, v2, 0x10

    int-to-long v6, v6

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_2

    :goto_4
    add-int/2addr v3, p2

    goto :goto_1

    :cond_2
    add-int/2addr v2, p2

    goto :goto_0

    :cond_3
    return-void

    :array_0
    .array-data 4
        -0xff5e28
        -0xff9f03
        -0xb3e049
        -0x67d444
        -0x47d3a3
        -0x2c1ee
        -0x9700
        -0x25500
        -0x33900
        -0x305bd
        -0x2614c9
        -0x8945c1
    .end array-data
.end method

.method private updatePosition(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->colorMap:Ljava/util/Map;

    int-to-long v2, v0

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    invoke-static {v2, v1, v3}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$900(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;II)V

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->setCurrentColor(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$1000(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$1000(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Landroid/graphics/Path;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v5, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$1000(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0xc

    if-ge v6, v7, :cond_2

    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->colorMap:Ljava/util/Map;

    shl-int/lit8 v9, v6, 0x10

    int-to-long v9, v9

    int-to-long v11, v7

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v6

    mul-float v10, v10, v2

    add-float/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v7

    mul-float v11, v11, v3

    add-float/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    add-int/lit8 v12, v6, 0x1

    int-to-float v12, v12

    mul-float v12, v12, v2

    add-float/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    int-to-float v12, v12

    add-int/lit8 v13, v7, 0x1

    int-to-float v13, v13

    mul-float v13, v13, v3

    add-float/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v6, 0x0

    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectors:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectors:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectors:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-wide v10, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selected:J

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    cmp-long v14, v10, v7

    if-nez v14, :cond_3

    const v10, 0x3d3b3ee7

    add-float/2addr v9, v10

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    goto :goto_4

    :cond_3
    const v10, 0x3dda740e

    sub-float/2addr v9, v10

    invoke-static {v13, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    :goto_4
    const/16 v10, 0x10

    shr-long v10, v7, v10

    long-to-int v11, v10

    shl-int/lit8 v10, v11, 0x10

    int-to-long v14, v10

    sub-long v14, v7, v14

    long-to-int v10, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->colorMap:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_5

    iget-object v15, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v14

    const v16, 0x3f389375    # 0.721f

    cmpl-float v14, v14, v16

    if-lez v14, :cond_4

    const v14, -0xeeeeef

    goto :goto_5

    :cond_4
    const/4 v14, -0x1

    :goto_5
    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPaint:Landroid/graphics/Paint;

    sget-object v15, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v15, v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v15

    const/high16 v16, 0x40400000    # 3.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    mul-float v15, v15, v12

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPath:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v11

    mul-float v15, v15, v2

    add-float/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    int-to-float v15, v15

    int-to-float v13, v10

    mul-float v13, v13, v3

    add-float/2addr v15, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    add-int/lit8 v5, v11, 0x1

    int-to-float v5, v5

    mul-float v5, v5, v2

    add-float/2addr v13, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-int/lit8 v4, v10, 0x1

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v5, v4

    invoke-virtual {v12, v14, v15, v13, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->radii:[F

    if-nez v11, :cond_6

    if-nez v10, :cond_6

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v5, v13

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    const/4 v13, 0x1

    aput v5, v4, v13

    const/4 v14, 0x0

    aput v5, v4, v14

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->radii:[F

    const/16 v5, 0xb

    if-ne v11, v5, :cond_7

    if-nez v10, :cond_7

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    goto :goto_7

    :cond_7
    const/4 v14, 0x0

    :goto_7
    const/4 v15, 0x3

    aput v14, v4, v15

    const/4 v15, 0x2

    aput v14, v4, v15

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->radii:[F

    const/16 v14, 0x9

    if-ne v11, v5, :cond_8

    if-ne v10, v14, :cond_8

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v5, v15

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    const/4 v15, 0x5

    aput v5, v4, v15

    const/4 v15, 0x4

    aput v5, v4, v15

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->radii:[F

    if-nez v11, :cond_9

    if-ne v10, v14, :cond_9

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    goto :goto_9

    :cond_9
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v10, 0x0

    :goto_9
    const/4 v11, 0x7

    aput v10, v4, v11

    const/4 v11, 0x6

    aput v10, v4, v11

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPath:Landroid/graphics/Path;

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->radii:[F

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v12, v10, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPath:Landroid/graphics/Path;

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    cmpg-float v4, v9, v4

    if-gtz v4, :cond_a

    iget-wide v10, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selected:J

    cmp-long v4, v10, v7

    if-eqz v4, :cond_a

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectors:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v6}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_a

    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v9, v4

    if-gez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectors:Landroid/util/LongSparseArray;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    :goto_a
    add-int/2addr v6, v13

    const/high16 v4, 0x41200000    # 10.0f

    goto/16 :goto_3

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->updatePosition(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->updatePosition(Landroid/view/MotionEvent;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->updatePosition(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v1
.end method

.method public setCurrentColor(I)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->colorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p1, 0x10

    shr-long v2, v0, p1

    long-to-int p1, v2

    shl-int/lit8 v2, p1, 0x10

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->setCurrentColor(II)V

    return-void

    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selected:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentColor(II)V
    .locals 2

    .line 0
    int-to-long v0, p1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selected:J

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectors:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selectors:Landroid/util/LongSparseArray;

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$GridPickerView;->selected:J

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
