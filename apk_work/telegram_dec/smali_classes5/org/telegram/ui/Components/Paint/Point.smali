.class public Lorg/telegram/ui/Components/Paint/Point;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public edge:Z

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iput-wide p3, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iput-wide p5, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    return-void
.end method

.method public constructor <init>(DDDZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iput-wide p3, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iput-wide p5, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iput-boolean p7, p0, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    return-void
.end method


# virtual methods
.method add(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;
    .locals 10

    new-instance v7, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v2, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    add-double v1, v0, v2

    iget-wide v3, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v5, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v8, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    add-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Point;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F
    .locals 8

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v2, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v6, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v0, v4

    iget-wide v4, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v6, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;
    .locals 8

    new-instance v7, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double v1, v0, p1

    iget-wide v3, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double v3, v3, p1

    iget-wide v5, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    mul-double v5, v5, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v7
.end method

.method multiplySum(Lorg/telegram/ui/Components/Paint/Point;D)Lorg/telegram/ui/Components/Paint/Point;
    .locals 10

    new-instance v7, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v2, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    add-double/2addr v0, v2

    mul-double v1, v0, p2

    iget-wide v3, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v5, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    add-double/2addr v3, v5

    mul-double v3, v3, p2

    iget-wide v5, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v8, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    add-double/2addr v5, v8

    mul-double v5, v5, p2

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v7
.end method

.method substract(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;
    .locals 10

    new-instance v7, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v2, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    sub-double v1, v0, v2

    iget-wide v3, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v5, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v8, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    sub-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v7
.end method

.method toPointF()Landroid/graphics/PointF;
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    iget-wide v1, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    double-to-float v1, v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
