.class public Lorg/telegram/ui/Components/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;


# instance fields
.field private angleOffset:F

.field private final bounds:Landroid/graphics/RectF;

.field private final paint:Landroid/graphics/Paint;

.field private segment:[F

.field public size:F

.field private start:J

.field public thickness:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/CircularProgressDrawable;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 2

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->size:F

    const/high16 v0, 0x40100000    # 2.25f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->thickness:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->start:J

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->segment:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    iput p1, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->size:F

    iput p2, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->thickness:F

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setColor(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->size:F

    const/high16 v0, 0x40100000    # 2.25f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->thickness:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->start:J

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->segment:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setColor(I)V

    return-void
.end method

.method public static getSegments(F[F)V
    .locals 9

    const/high16 v0, 0x44be0000    # 1520.0f

    mul-float v0, v0, p0

    const v1, 0x45a8c000    # 5400.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float v1, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, p1, v2

    const/4 v1, 0x1

    aput v0, p1, v1

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    aget v3, p1, v1

    sget-object v4, Lorg/telegram/ui/Components/CircularProgressDrawable;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    mul-int/lit16 v5, v0, 0x546

    int-to-float v6, v5

    sub-float v6, p0, v6

    const v7, 0x4426c000    # 667.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v6

    const/high16 v8, 0x437a0000    # 250.0f

    mul-float v6, v6, v8

    add-float/2addr v3, v6

    aput v3, p1, v1

    aget v3, p1, v2

    add-int/lit16 v5, v5, 0x29b

    int-to-float v5, v5

    sub-float v5, p0, v5

    div-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float v4, v4, v8

    add-float/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSegment()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1518

    rem-long/2addr v0, v2

    long-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->segment:[F

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->getSegments(F[F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-wide v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->start:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->start:J

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/CircularProgressDrawable;->updateSegment()V

    iget-object v3, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->angleOffset:F

    iget-object v1, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->segment:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    add-float v4, v0, v2

    const/4 v0, 0x1

    aget v0, v1, v0

    sub-float v5, v0, v2

    iget-object v7, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->size:F

    iget v1, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->thickness:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->size:F

    iget v1, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->thickness:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->start:J

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAngleOffset(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->angleOffset:F

    return-void
.end method

.method public setBounds(IIII)V
    .locals 10

    sub-int v0, p3, p1

    sub-int v1, p4, p2

    iget-object v2, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->bounds:Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v0, v0

    iget v4, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->thickness:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v6, v0, v4

    iget v7, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->size:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    add-float/2addr v6, v3

    int-to-float v8, p2

    int-to-float v1, v1

    sub-float v9, v1, v4

    sub-float/2addr v9, v7

    div-float/2addr v9, v5

    add-float/2addr v9, v8

    add-float/2addr v0, v4

    add-float/2addr v0, v7

    div-float/2addr v0, v5

    add-float/2addr v3, v0

    add-float/2addr v1, v4

    add-float/2addr v1, v7

    div-float/2addr v1, v5

    add-float/2addr v8, v1

    invoke-virtual {v2, v6, v9, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    iget p2, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->thickness:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CircularProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
