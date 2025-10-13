.class public Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsReactionsSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Particles"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;
    }
.end annotation


# instance fields
.field public final b:Landroid/graphics/Bitmap;

.field public final bPaint:Landroid/graphics/Paint;

.field private bPaintColor:I

.field public final bounds:Landroid/graphics/RectF;

.field private firstDraw:Z

.field private lastTime:J

.field public final particles:Ljava/util/ArrayList;

.field public final rect:Landroid/graphics/Rect;

.field private speed:F

.field public final type:I

.field private visibleCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->rect:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->speed:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->firstDraw:Z

    iput p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->type:I

    iput p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->visibleCount:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->particles:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->particles:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    shr-int/lit8 v1, p1, 0x1

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v4, v2

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int v2, p1, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float p1, p1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bPaintColor:I

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iput p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bPaintColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->visibleCount:I

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;

    iget v3, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->la:F

    invoke-virtual {v2, p1, p2, v3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->draw(Landroid/graphics/Canvas;IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->firstDraw:Z

    return-void
.end method

.method public gen(Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;JZ)V
    .locals 2

    iput-wide p2, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->start:J

    sget-object p2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const/16 p3, 0x1f4

    const/16 v0, 0x9c4

    invoke-static {p3, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->lifetime:J

    if-eqz p4, :cond_0

    iget-wide v0, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->start:J

    long-to-float p2, p2

    sget-object p3, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result p3

    mul-float p2, p2, p3

    float-to-long p2, p2

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->start:J

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sget-object p4, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result p4

    invoke-static {p3, p2, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->x:F

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sget-object p4, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result p4

    invoke-static {p3, p2, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->y:F

    iget p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->type:I

    const/high16 p3, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    sget-object p2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const/high16 p4, -0x3f200000    # -7.0f

    const/high16 v0, -0x3e700000    # -18.0f

    invoke-static {p4, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vx:F

    sget-object p2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const/high16 p4, -0x40000000    # -2.0f

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p4, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vy:F

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget p4, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->x:F

    sub-float/2addr p2, p4

    iput p2, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vx:F

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    iget p4, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->y:F

    sub-float/2addr p2, p4

    iput p2, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vy:F

    sget-object p2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const/high16 p4, 0x40800000    # 4.0f

    invoke-static {p3, p4, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iget p4, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vx:F

    mul-float p4, p4, p4

    iget v0, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vy:F

    mul-float v0, v0, v0

    add-float/2addr p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p4, v0

    div-float/2addr p2, p4

    iget p4, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vx:F

    mul-float p4, p4, p2

    iput p4, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vx:F

    iget p4, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vy:F

    mul-float p4, p4, p2

    iput p4, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vy:F

    :goto_0
    sget-object p2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const p4, 0x3ecccccd    # 0.4f

    invoke-static {p4, p3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->a:F

    sget-object p2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const p3, 0x3f4ccccd    # 0.8f

    const p4, 0x3f99999a    # 1.2f

    invoke-static {p3, p4, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    const p3, 0x3f333333    # 0.7f

    mul-float p2, p2, p3

    iput p2, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->s:F

    return-void
.end method

.method public process()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->lastTime:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->speed:F

    mul-float v2, v2, v3

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->visibleCount:I

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;

    iget-wide v5, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->lifetime:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_0

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_1

    :cond_0
    iget-wide v7, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->start:J

    sub-long v7, v0, v7

    long-to-float v7, v7

    long-to-float v5, v5

    div-float v5, v7, v5

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    iget-boolean v5, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->firstDraw:Z

    invoke-virtual {p0, v4, v0, v1, v5}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->gen(Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;JZ)V

    const/4 v5, 0x0

    :cond_1
    iget v6, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->x:F

    iget v7, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vx:F

    mul-float v7, v7, v2

    add-float/2addr v6, v7

    iput v6, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->x:F

    iget v6, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->y:F

    iget v7, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->vy:F

    mul-float v7, v7, v2

    add-float/2addr v6, v7

    iput v6, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->y:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v6, v6, v5

    mul-float v5, v5, v6

    sub-float/2addr v6, v5

    iput v6, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->la:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->lastTime:J

    return-void
.end method

.method public removeParticlesOutside()V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    iget v5, v3, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->x:F

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, v3, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;->y:F

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->firstDraw:Z

    invoke-virtual {p0, v3, v0, v1, v4}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->gen(Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles$Particle;JZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->removeParticlesOutside()V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->removeParticlesOutside()V

    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->removeParticlesOutside()V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->speed:F

    return-void
.end method

.method public setVisible(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->visibleCount:I

    return-void
.end method
