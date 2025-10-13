.class public Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;
    }
.end annotation


# instance fields
.field private activeSegment:I

.field private actualArea:Lorg/telegram/ui/Components/Rect;

.field private checkForMoving:Z

.field private curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

.field private delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

.field private isMoving:Z

.field private lastX:F

.field private lastY:F

.field private paint:Landroid/graphics/Paint;

.field private paintCurve:Landroid/graphics/Paint;

.field private paintDash:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    new-instance v1, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    const p2, -0x66000001

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    const p2, -0x404041

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private handlePan(ILandroid/view/MotionEvent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_c

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->unselectSegments()V

    goto/16 :goto_2

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastY:F

    sub-float/2addr p1, p2

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr p1, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget v7, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    if-eqz v7, :cond_5

    if-eq v7, v1, :cond_4

    if-eq v7, v5, :cond_3

    if-eq v7, v4, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v6, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_0

    :cond_3
    iget-object v6, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_0

    :cond_4
    iget-object v6, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_0

    :cond_5
    iget-object v6, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    :goto_0
    iget v7, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    const/4 v8, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    if-eq v7, v1, :cond_a

    if-eq v7, v5, :cond_9

    if-eq v7, v4, :cond_8

    if-eq v7, v3, :cond_7

    if-eq v7, v2, :cond_6

    goto :goto_1

    :cond_6
    iget v1, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    add-float/2addr v1, p1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v8, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    goto :goto_1

    :cond_7
    iget v1, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    add-float/2addr v1, p1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v8, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    goto :goto_1

    :cond_8
    iget v1, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    add-float/2addr v1, p1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v8, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    goto :goto_1

    :cond_9
    iget v1, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    add-float/2addr v1, p1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v8, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    goto :goto_1

    :cond_a
    iget v1, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    add-float/2addr v1, p1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v8, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v6, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;->valueChanged()V

    :cond_b
    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastX:F

    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastY:F

    goto :goto_2

    :cond_c
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->selectSegmentWithPoint(F)V

    :goto_2
    return-void
.end method

.method private selectSegmentWithPoint(F)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v1, v0, Lorg/telegram/ui/Components/Rect;->width:F

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr p1, v0

    div-float/2addr p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    return-void
.end method

.method private unselectSegments()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->width:F

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v6, v5, Lorg/telegram/ui/Components/Rect;->x:F

    add-float/2addr v6, v2

    int-to-float v7, v4

    mul-float v7, v7, v2

    add-float v11, v6, v7

    iget v10, v5, Lorg/telegram/ui/Components/Rect;->y:F

    iget v5, v5, Lorg/telegram/ui/Components/Rect;->height:F

    add-float v12, v10, v5

    iget-object v13, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    move-object v8, p1

    move v9, v11

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v7, v4, Lorg/telegram/ui/Components/Rect;->x:F

    iget v10, v4, Lorg/telegram/ui/Components/Rect;->y:F

    iget v6, v4, Lorg/telegram/ui/Components/Rect;->height:F

    add-float v8, v10, v6

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->width:F

    add-float v9, v7, v4

    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget v4, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    const/4 v6, 0x3

    if-eqz v4, :cond_4

    if-eq v4, v1, :cond_3

    if-eq v4, v0, :cond_2

    if-eq v4, v6, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const v7, -0xcc8805

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v4, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const v7, -0xef1163

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v4, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const v7, -0x12c2b4

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v4, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v4, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    :goto_1
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x5

    if-ge v7, v8, :cond_a

    const-string v8, "%.2f"

    const/high16 v9, 0x42c80000    # 100.0f

    if-eqz v7, :cond_9

    if-eq v7, v1, :cond_8

    if-eq v7, v0, :cond_7

    if-eq v7, v6, :cond_6

    if-eq v7, v5, :cond_5

    const-string v8, ""

    goto :goto_3

    :cond_5
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v11, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    div-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v9, v11, v3

    invoke-static {v10, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_6
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v11, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    div-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v9, v11, v3

    invoke-static {v10, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_7
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v11, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    div-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v9, v11, v3

    invoke-static {v10, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_8
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v11, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    div-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v9, v11, v3

    invoke-static {v10, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_9
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v11, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    div-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v9, v11, v3

    invoke-static {v10, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    iget-object v9, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v11, v10, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float v9, v2, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v9, v12

    add-float/2addr v11, v9

    int-to-float v9, v7

    mul-float v9, v9, v2

    add-float/2addr v11, v9

    iget v9, v10, Lorg/telegram/ui/Components/Rect;->y:F

    iget v10, v10, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v8, v11, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v7, v1

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v4}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->interpolateCurve()[F

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    :goto_4
    array-length v4, v2

    div-int/2addr v4, v0

    if-ge v3, v4, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v7, v6, Lorg/telegram/ui/Components/Rect;->x:F

    mul-int/lit8 v8, v3, 0x2

    if-nez v3, :cond_b

    aget v9, v2, v8

    iget v10, v6, Lorg/telegram/ui/Components/Rect;->width:F

    mul-float v9, v9, v10

    add-float/2addr v7, v9

    iget v9, v6, Lorg/telegram/ui/Components/Rect;->y:F

    add-int/2addr v8, v1

    aget v8, v2, v8

    sub-float/2addr v4, v8

    iget v6, v6, Lorg/telegram/ui/Components/Rect;->height:F

    mul-float v4, v4, v6

    add-float/2addr v9, v4

    invoke-virtual {v5, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_b
    aget v9, v2, v8

    iget v10, v6, Lorg/telegram/ui/Components/Rect;->width:F

    mul-float v9, v9, v10

    add-float/2addr v7, v9

    iget v9, v6, Lorg/telegram/ui/Components/Rect;->y:F

    add-int/2addr v8, v1

    aget v8, v2, v8

    sub-float/2addr v4, v8

    iget v6, v6, Lorg/telegram/ui/Components/Rect;->height:F

    mul-float v4, v4, v6

    add-float/2addr v9, v4

    invoke-virtual {v5, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    add-int/2addr v3, v1

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    if-eq v0, v2, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, v4, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    :cond_2
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastX:F

    iput v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastY:F

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v5, v4, Lorg/telegram/ui/Components/Rect;->x:F

    cmpl-float v6, v0, v5

    if-ltz v6, :cond_4

    iget v6, v4, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v5, v6

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_4

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->y:F

    cmpl-float v5, v2, v0

    if-ltz v5, :cond_4

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v0, v4

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_4

    iput-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    :cond_6
    :goto_0
    return v3
.end method

.method public setActualArea(FFFF)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iput p1, v0, Lorg/telegram/ui/Components/Rect;->x:F

    iput p2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iput p3, v0, Lorg/telegram/ui/Components/Rect;->width:F

    iput p4, v0, Lorg/telegram/ui/Components/Rect;->height:F

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

    return-void
.end method
