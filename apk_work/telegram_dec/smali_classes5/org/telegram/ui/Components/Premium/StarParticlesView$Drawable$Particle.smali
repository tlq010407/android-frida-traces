.class public Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Particle"
.end annotation


# instance fields
.field private alpha:I

.field private drawingX:F

.field private drawingY:F

.field private first:Z

.field flipProgress:F

.field private i:I

.field inProgress:F

.field public lifeTime:J

.field private randomRotate:F

.field private scale:F

.field private starIndex:I

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field private vecX:F

.field private vecY:F

.field private x:F

.field private x2:F

.field private y:F

.field private y2:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->scale:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->first:Z

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$208(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->i:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JF)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points1:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    mul-int/lit8 v4, v3, 0x2

    aget v5, v1, v4

    iput v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    add-int/2addr v4, v2

    aget v1, v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    add-int/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points2:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    mul-int/lit8 v4, v3, 0x2

    aget v5, v1, v4

    iput v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    add-int/2addr v4, v2

    aget v1, v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    add-int/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points3:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    mul-int/lit8 v4, v3, 0x2

    aget v5, v1, v4

    iput v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    add-int/2addr v4, v2

    aget v1, v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    add-int/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    :cond_3
    :goto_0
    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x40600000    # 3.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRect:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    iget v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->randomRotate:F

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$300(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {v7}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$300(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v0, v5, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkTime:Z

    if-eqz v0, :cond_6

    iget-wide v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->lifeTime:J

    sub-long/2addr v5, p2

    const-wide/16 p2, 0xc8

    cmp-long v0, v5, p2

    if-gez v0, :cond_6

    long-to-float p2, v5

    const/high16 p3, 0x43160000    # 150.0f

    div-float/2addr p2, p3

    sub-float p2, v3, p2

    invoke-static {p2, v3, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p2

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :goto_1
    iget p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    cmpg-float v0, p3, v3

    if-ltz v0, :cond_7

    sget v0, Lorg/telegram/ui/GLIconSettingsView;->smallStarsSize:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    :cond_7
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, p3}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result p3

    sget v0, Lorg/telegram/ui/GLIconSettingsView;->smallStarsSize:F

    mul-float p3, p3, v0

    invoke-virtual {p1, p3, p3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_8
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, p3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->flip:[Z

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->flipProgress:F

    invoke-static {p3}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$400(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)F

    move-result p3

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr p3, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float p3, p3, v5

    add-float/2addr v0, p3

    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->flipProgress:F

    float-to-double v5, v0

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float p3, v5

    invoke-virtual {p1, p3, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, p3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->overridePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    iget-object v0, p3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->getPaint:Lorg/telegram/messenger/Utilities$CallbackReturn;

    if-eqz v0, :cond_b

    iget p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->i:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Landroid/graphics/Paint;

    goto :goto_2

    :cond_b
    iget-object v0, p3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paint:Landroid/graphics/Paint;

    :goto_2
    iget p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->alpha:I

    int-to-float p3, p3

    sub-float p2, v3, p2

    mul-float p3, p3, p2

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {p3}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$300(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object p3

    iget v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-object p3, p3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v4, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useScale:Z

    if-eqz v4, :cond_c

    iget v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->scale:F

    mul-float v4, v4, p2

    mul-float v4, v4, p4

    iget p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    mul-float v4, v4, p2

    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_c
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    shr-int/2addr p2, v2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    shr-int/2addr p4, v2

    neg-int p4, p4

    int-to-float p4, p4

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-nez p1, :cond_e

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {p3}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$400(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)F

    move-result p3

    const/high16 p4, 0x44250000    # 660.0f

    div-float/2addr p3, p4

    mul-float p2, p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p4, p3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->flip:[Z

    iget v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-boolean p4, p4, v0

    if-eqz p4, :cond_d

    iget p3, p3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float p3, p3, p1

    mul-float p2, p2, p3

    goto :goto_4

    :cond_d
    iget p1, p3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    mul-float p2, p2, p1

    :goto_4
    iget p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iget p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->vecX:F

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iget p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    iget p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->vecY:F

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    iget p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    cmpl-float p2, p1, v3

    if-eqz p2, :cond_e

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$400(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)F

    move-result p2

    const/high16 p3, 0x43480000    # 200.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_e

    iput v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    :cond_e
    return-void
.end method

.method public genPosition(J)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/16 v2, 0x1c

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3e051eb8    # 0.13f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    iput v4, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$300(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    :goto_0
    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$300(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-wide v5, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->minLifeTime:J

    add-long v5, p1, v5

    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    iget v7, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->randLifeTime:I

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->flip:[Z

    iget v8, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-boolean v1, v1, v8

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    mul-int v7, v7, v1

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v5, v1

    iput-wide v5, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->lifeTime:J

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->randomRotate:F

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useScale:Z

    const v5, 0x3f19999a    # 0.6f

    if-eqz v2, :cond_3

    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, v5

    const v6, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v6

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->scale:F

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v6, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->distributionAlgorithm:Z

    if-eqz v6, :cond_9

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sget-object v6, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    rem-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v2, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sget-object v7, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v10, v10, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    rem-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_3
    const/16 v11, 0xa

    if-ge v7, v11, :cond_8

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v11, v11, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sget-object v12, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextInt()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v13, v13, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    rem-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v12, v12, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    sget-object v13, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v14, v14, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    rem-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    add-float/2addr v12, v13

    const/high16 v13, 0x4f000000

    const/4 v14, 0x0

    :goto_4
    iget-object v15, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v15, v15, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_6

    iget-object v15, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v4, v15, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->startFromCenter:Z

    if-eqz v4, :cond_4

    iget-object v4, v15, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    iget v4, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x2:F

    sub-float/2addr v4, v11

    iget-object v15, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v15, v15, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    iget v15, v15, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y2:F

    :goto_5
    sub-float/2addr v15, v12

    goto :goto_6

    :cond_4
    iget-object v4, v15, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    iget v4, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    sub-float/2addr v4, v11

    iget-object v15, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v15, v15, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    iget v15, v15, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    goto :goto_5

    :goto_6
    mul-float v4, v4, v4

    mul-float v15, v15, v15

    add-float/2addr v4, v15

    cmpg-float v15, v4, v13

    if-gez v15, :cond_5

    move v13, v4

    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    cmpl-float v4, v13, v10

    if-lez v4, :cond_7

    move v2, v11

    move v6, v12

    move v10, v13

    :cond_7
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_8
    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iput v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    goto/16 :goto_9

    :cond_9
    iget-boolean v4, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->isCircle:Z

    if-eqz v4, :cond_b

    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v6, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRadius:F

    sub-float/2addr v4, v6

    mul-float v2, v2, v4

    add-float/2addr v2, v6

    sget-object v4, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->flip:[Z

    iget v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_a

    iget-boolean v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->first:Z

    if-nez v6, :cond_a

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v10, v10, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->centerOffsetX:F

    add-float/2addr v7, v10

    float-to-double v10, v2

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v10

    double-to-float v2, v14

    add-float/2addr v7, v2

    iput v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    add-float/2addr v2, v6

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v4, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->centerOffsetY:F

    add-float/2addr v2, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v6

    double-to-float v4, v10

    :goto_8
    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    goto :goto_9

    :cond_b
    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sget-object v4, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    rem-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sget-object v4, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    rem-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    goto :goto_8

    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->flip:[Z

    iget v4, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-boolean v2, v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_c

    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->flipProgress:F

    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v6, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->flip:[Z

    iget v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_d

    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v6, 0x43480000    # 200.0f

    mul-float v2, v2, v6

    const/high16 v6, 0x438c0000    # 280.0f

    sub-float/2addr v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    goto :goto_a

    :cond_d
    iget-boolean v6, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->startFromCenter:Z

    if-eqz v6, :cond_e

    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v10

    goto :goto_a

    :cond_e
    iget v6, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v10, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->centerOffsetY:F

    add-float/2addr v2, v10

    sub-float/2addr v6, v2

    float-to-double v10, v6

    iget v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iget-object v6, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v7, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->centerOffsetX:F

    add-float/2addr v6, v7

    sub-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    :goto_a
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v2, v10

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->vecX:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v2, v10

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->vecY:F

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->svg:[Z

    iget v10, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-boolean v2, v2, v10

    const/high16 v10, 0x42c80000    # 100.0f

    const/16 v11, 0x32

    if-eqz v2, :cond_f

    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v11

    int-to-float v2, v2

    div-float/2addr v2, v10

    const/high16 v11, 0x42f00000    # 120.0f

    :goto_b
    mul-float v2, v2, v11

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->alpha:I

    goto :goto_c

    :cond_f
    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v11

    int-to-float v2, v2

    div-float/2addr v2, v10

    const/high16 v11, 0x437f0000    # 255.0f

    goto :goto_b

    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/4 v11, 0x6

    if-ne v2, v11, :cond_10

    iget v11, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    if-eq v11, v9, :cond_11

    if-eq v11, v3, :cond_11

    :cond_10
    const/16 v3, 0x9

    if-eq v2, v3, :cond_11

    if-eq v2, v8, :cond_11

    const/4 v3, 0x7

    if-eq v2, v3, :cond_11

    const/16 v3, 0x18

    if-eq v2, v3, :cond_11

    const/16 v3, 0xb

    if-eq v2, v3, :cond_11

    const/16 v3, 0x16

    if-eq v2, v3, :cond_11

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    :cond_11
    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    div-float/2addr v2, v10

    const/high16 v3, 0x42340000    # 45.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->randomRotate:F

    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v3, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/16 v8, 0x65

    if-eq v3, v8, :cond_13

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    :cond_13
    iget-boolean v1, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->startFromCenter:Z

    if-eqz v1, :cond_14

    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    add-float/2addr v1, v5

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v1, v1, v2

    div-float/2addr v1, v4

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->centerOffsetX:F

    add-float/2addr v2, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x2:F

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->centerOffsetY:F

    add-float/2addr v2, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    iput v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y2:F

    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->first:Z

    return-void
.end method

.method public updatePoint()V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points1:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    aput v5, v2, v4

    add-int/2addr v4, v1

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    aput v5, v2, v4

    add-int/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points2:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    aput v5, v2, v4

    add-int/2addr v4, v1

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    aput v5, v2, v4

    add-int/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points3:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    aput v5, v2, v4

    add-int/2addr v4, v1

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    aput v5, v2, v4

    add-int/2addr v3, v1

    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    :cond_2
    :goto_0
    return-void
.end method
