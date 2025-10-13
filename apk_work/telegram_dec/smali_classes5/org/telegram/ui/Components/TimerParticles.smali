.class public Lorg/telegram/ui/Components/TimerParticles;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TimerParticles$Particle;
    }
.end annotation


# instance fields
.field public big:Z

.field private freeParticles:Ljava/util/ArrayList;

.field private hasLast:Z

.field private lastAnimationTime:J

.field private lastCx:F

.field private lastCy:F

.field private particles:Ljava/util/ArrayList;

.field private final particlesCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/TimerParticles;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/ui/Components/TimerParticles;->particlesCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/TimerParticles$Particle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/TimerParticles$Particle;-><init>(Lorg/telegram/ui/Components/TimerParticles$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateParticles(J)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/TimerParticles$Particle;

    iget v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->currentTime:F

    iget v4, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->lifeTime:F

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/TimerParticles;->particlesCount:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float/2addr v3, v4

    invoke-virtual {v5, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    iput v4, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->alpha:F

    iget v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->x:F

    iget v4, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->vx:F

    iget v5, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->velocity:F

    mul-float v4, v4, v5

    long-to-float v6, p1

    mul-float v4, v4, v6

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->x:F

    iget v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->y:F

    iget v4, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->vy:F

    mul-float v4, v4, v5

    mul-float v4, v4, v6

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->y:F

    iget v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->currentTime:F

    add-float/2addr v3, v6

    iput v3, v2, Lorg/telegram/ui/Components/TimerParticles$Particle;->currentTime:F

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, v0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/TimerParticles$Particle;

    iget v6, v5, Lorg/telegram/ui/Components/TimerParticles$Particle;->alpha:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    mul-float v6, v6, p5

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v6, v5, Lorg/telegram/ui/Components/TimerParticles$Particle;->x:F

    iget v5, v5, Lorg/telegram/ui/Components/TimerParticles$Particle;->y:F

    move-object/from16 v7, p1

    invoke-virtual {v7, v6, v5, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v1, p4, v1

    float-to-double v1, v1

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    neg-double v9, v1

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v13

    double-to-float v8, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v9

    double-to-float v9, v11

    iget-object v10, v0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    div-int/lit8 v10, v10, 0xc

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_5

    iget-object v13, v0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    iget-object v13, v0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/TimerParticles$Particle;

    iget-object v14, v0, Lorg/telegram/ui/Components/TimerParticles;->freeParticles:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    new-instance v13, Lorg/telegram/ui/Components/TimerParticles$Particle;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lorg/telegram/ui/Components/TimerParticles$Particle;-><init>(Lorg/telegram/ui/Components/TimerParticles$1;)V

    :goto_2
    iget-boolean v14, v0, Lorg/telegram/ui/Components/TimerParticles;->big:Z

    if-eqz v14, :cond_2

    iget-boolean v14, v0, Lorg/telegram/ui/Components/TimerParticles;->hasLast:Z

    if-eqz v14, :cond_2

    iget v14, v0, Lorg/telegram/ui/Components/TimerParticles;->lastCx:F

    add-int/lit8 v15, v11, 0x1

    int-to-float v15, v15

    int-to-float v3, v10

    div-float/2addr v15, v3

    invoke-static {v14, v8, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->x:F

    iget v3, v0, Lorg/telegram/ui/Components/TimerParticles;->lastCy:F

    invoke-static {v3, v9, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->y:F

    goto :goto_3

    :cond_2
    iput v8, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->x:F

    iput v9, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->y:F

    :goto_3
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v14, 0x8c

    invoke-virtual {v3, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x46

    int-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v4

    const-wide/16 v16, 0x0

    cmpg-double v3, v14, v16

    if-gez v3, :cond_3

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    add-double v14, v14, v16

    :cond_3
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v1

    sub-double v4, v16, v18

    double-to-float v3, v4

    iput v3, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->vx:F

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v14, v14, v1

    add-double/2addr v3, v14

    double-to-float v3, v3

    iput v3, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->vy:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->alpha:F

    const/4 v3, 0x0

    iput v3, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->currentTime:F

    iget-boolean v3, v0, Lorg/telegram/ui/Components/TimerParticles;->big:Z

    const/high16 v4, 0x41a00000    # 20.0f

    if-eqz v3, :cond_4

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v5, 0xc8

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x258

    int-to-float v3, v3

    iput v3, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->lifeTime:F

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v3, v3, v4

    const/high16 v4, 0x41f00000    # 30.0f

    :goto_4
    add-float/2addr v3, v4

    iput v3, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->velocity:F

    goto :goto_5

    :cond_4
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x190

    int-to-float v3, v3

    iput v3, v13, Lorg/telegram/ui/Components/TimerParticles$Particle;->lifeTime:F

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v3, v3, v5

    goto :goto_4

    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/TimerParticles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    goto/16 :goto_1

    :cond_5
    iput-boolean v12, v0, Lorg/telegram/ui/Components/TimerParticles;->hasLast:Z

    iput v8, v0, Lorg/telegram/ui/Components/TimerParticles;->lastCx:F

    iput v9, v0, Lorg/telegram/ui/Components/TimerParticles;->lastCy:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/TimerParticles;->lastAnimationTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x14

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/TimerParticles;->updateParticles(J)V

    iput-wide v1, v0, Lorg/telegram/ui/Components/TimerParticles;->lastAnimationTime:J

    return-void
.end method
