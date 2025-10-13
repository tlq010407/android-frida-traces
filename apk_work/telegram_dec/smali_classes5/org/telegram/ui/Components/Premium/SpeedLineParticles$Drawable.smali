.class public Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;
    }
.end annotation


# instance fields
.field public final count:I

.field private final dt:F

.field private lastColor:I

.field private lines:[F

.field public minLifeTime:J

.field private paint:Landroid/graphics/Paint;

.field particles:Ljava/util/ArrayList;

.field public paused:Z

.field pausedTime:J

.field public rect:Landroid/graphics/RectF;

.field public screenRect:Landroid/graphics/RectF;

.field public size1:I

.field public size2:I

.field public size3:I

.field public speedScale:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->rect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->screenRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->particles:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->speedScale:F

    const/16 v0, 0xe

    iput v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->size1:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->size2:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->size3:I

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->minLifeTime:J

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->dt:F

    iput p1, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->count:I

    mul-int/lit8 p1, p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->lines:[F

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->lines:[F

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->dt:F

    return p0
.end method


# virtual methods
.method public init()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->particles:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;-><init>(Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;Lorg/telegram/ui/Components/Premium/SpeedLineParticles$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->updateColors()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->paused:Z

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->pausedTime:J

    invoke-virtual {v4, p1, v3, v5, v6}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;->draw(Landroid/graphics/Canvas;IJ)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4, p1, v3, v0, v1}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;->draw(Landroid/graphics/Canvas;IJ)V

    :goto_1
    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;->access$100(Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;)J

    move-result-wide v5

    cmp-long v7, v0, v5

    if-gtz v7, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->screenRect:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;->access$200(Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;)F

    move-result v6

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;->access$300(Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;->genPosition(JZ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->lines:[F

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public resetPositions()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v1, v4}, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable$Particle;->genPosition(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor2:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0x50

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->lastColor:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->lastColor:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/SpeedLineParticles$Drawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
