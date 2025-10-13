.class public abstract Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView$ColorView;
    }
.end annotation


# static fields
.field private static checkerboardPaint:Landroid/graphics/Paint;

.field private static checkerboardPaintWhite:Landroid/graphics/Paint;

.field private static colorCirclePaint:Landroid/graphics/Paint;

.field private static colorCirclePath:Landroid/graphics/Path;


# instance fields
.field private colorListener:Landroidx/core/util/Consumer;

.field private colorPalette:Lorg/telegram/ui/Components/Paint/PersistColorPalette;

.field private outlinePaint:Landroid/graphics/Paint;

.field private paint:Landroid/graphics/Paint;

.field private selectedColorIndex:I


# direct methods
.method public static synthetic $r8$lambda$GgggSRcoxMrnPF6gvY4gb8SaR7I(Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->checkerboardPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->checkerboardPaintWhite:Landroid/graphics/Paint;

    sget-object v0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->checkerboardPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x78000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->checkerboardPaintWhite:Landroid/graphics/Paint;

    const v2, -0x77000001

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->outlinePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->selectedColorIndex:I

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->outlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;)Lorg/telegram/ui/Components/Paint/PersistColorPalette;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorPalette:Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->selectedColorIndex:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->outlinePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static drawCheckerboard(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .locals 12

    iget v0, p1, Landroid/graphics/RectF;->left:F

    :goto_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    move v8, v1

    :goto_1
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_0

    int-to-float v1, p2

    add-float v9, v0, v1

    add-float v10, v8, v1

    sget-object v6, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->checkerboardPaint:Landroid/graphics/Paint;

    move-object v1, p0

    move v2, v0

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    add-float v11, v0, v1

    sget-object v7, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->checkerboardPaintWhite:Landroid/graphics/Paint;

    move-object v2, p0

    move v3, v9

    move v4, v8

    move v5, v11

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v8, v1

    sget-object v7, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->checkerboardPaint:Landroid/graphics/Paint;

    move v4, v10

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget-object v6, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->checkerboardPaintWhite:Landroid/graphics/Paint;

    move-object v1, p0

    move v2, v0

    move v3, v10

    move v4, v9

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    mul-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static drawColorCircle(Landroid/graphics/Canvas;FFFI)V
    .locals 9

    sget-object v0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v2, p1, p3

    sub-float v3, p2, p3

    add-float/2addr p1, p3

    add-float/2addr p2, p3

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object p1, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v7, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePaint:Landroid/graphics/Paint;

    const/high16 v5, -0x3ccc0000    # -180.0f

    const/4 v6, 0x1

    const/high16 v4, -0x3dcc0000    # -45.0f

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sget-object p1, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    sget-object p1, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object p1, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    float-to-double p2, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    const-wide v5, -0x4006de04abbbd2e8L    # -1.5707963267948966

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v3

    double-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    float-to-double v3, p3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v2

    float-to-double v7, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v7

    double-to-float p3, v3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object p1, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object p1, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    float-to-double p2, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    float-to-double v3, v1

    const-wide v5, 0x4012d97c7f3321d2L    # 4.71238898038469

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v3

    double-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    float-to-double v3, p3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v2

    float-to-double v1, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v1

    double-to-float p3, v3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object p1, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePath:Landroid/graphics/Path;

    const/high16 p2, -0x3dcc0000    # -45.0f

    const/high16 p3, 0x43340000    # 180.0f

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    sget-object p1, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePath:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->drawCheckerboard(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    sget-object p1, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x1

    const/high16 v4, -0x3dcc0000    # -45.0f

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorListener:Landroidx/core/util/Consumer;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorPalette:Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorPalette:Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->setCurrentBrushColorByColorIndex(I)V

    return-void
.end method


# virtual methods
.method public getSelectedColorIndex()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->selectedColorIndex:I

    return v0
.end method

.method public setColorListener(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorListener:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setColorPalette(Lorg/telegram/ui/Components/Paint/PersistColorPalette;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->colorPalette:Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 5

    if-eqz p2, :cond_0

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    :goto_0
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    goto :goto_1

    :cond_0
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v1, :cond_2

    cmpl-float v3, p1, v0

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_2
    int-to-float v3, v1

    mul-float v3, v3, p2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedColorIndex(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->selectedColorIndex:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
