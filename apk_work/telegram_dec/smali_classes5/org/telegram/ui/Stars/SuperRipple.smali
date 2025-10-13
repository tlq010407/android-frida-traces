.class public Lorg/telegram/ui/Stars/SuperRipple;
.super Lorg/telegram/ui/Stars/ISuperRipple;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/SuperRipple$Effect;
    }
.end annotation


# instance fields
.field public final MAX_COUNT:I

.field public final centerX:[F

.field public final centerY:[F

.field public count:I

.field public density:F

.field public effect:Landroid/graphics/RenderEffect;

.field public final effects:Ljava/util/ArrayList;

.field public height:I

.field public final intensity:[F

.field public final shader:Landroid/graphics/RuntimeShader;

.field public final t:[F

.field public width:I


# direct methods
.method public static synthetic $r8$lambda$eNVcrL0I2Sm2OIqbhz-sSR7aUI8(Lorg/telegram/ui/Stars/SuperRipple;Lorg/telegram/ui/Stars/SuperRipple$Effect;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/SuperRipple;->lambda$animate$0(Lorg/telegram/ui/Stars/SuperRipple$Effect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/ISuperRipple;-><init>(Landroid/view/View;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/SuperRipple;->effects:Ljava/util/ArrayList;

    const/4 p1, 0x7

    iput p1, p0, Lorg/telegram/ui/Stars/SuperRipple;->MAX_COUNT:I

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->t:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->centerX:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->centerY:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Stars/SuperRipple;->intensity:[F

    sget p1, Lorg/telegram/messenger/R$raw;->superripple_effect:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/graphics/RuntimeShader;

    invoke-direct {v0, p1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->shader:Landroid/graphics/RuntimeShader;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/SuperRipple;->setupSizeUniforms(Z)V

    const-string p1, "img"

    invoke-static {v0, p1}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stars/SuperRipple;->effect:Landroid/graphics/RenderEffect;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stars/SuperRipple;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/SuperRipple;->updateProperties()V

    return-void
.end method

.method private synthetic lambda$animate$0(Lorg/telegram/ui/Stars/SuperRipple$Effect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stars/SuperRipple$Effect;->t:F

    invoke-direct {p0}, Lorg/telegram/ui/Stars/SuperRipple;->updateProperties()V

    return-void
.end method

.method private setupSizeUniforms(Z)V
    .locals 10

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Stars/SuperRipple;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget p1, p0, Lorg/telegram/ui/Stars/SuperRipple;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget p1, p0, Lorg/telegram/ui/Stars/SuperRipple;->density:F

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/SuperRipple;->shader:Landroid/graphics/RuntimeShader;

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Stars/SuperRipple;->height:I

    int-to-float v1, v1

    const-string v2, "size"

    invoke-static {p1, v2, v0, v1}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/SuperRipple;->shader:Landroid/graphics/RuntimeShader;

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    iput v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->density:F

    const-string v1, "density"

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline12;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object v2

    :goto_1
    if-nez p1, :cond_3

    move-object v3, v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    invoke-static {p1, v3}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object v3

    :goto_2
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object v0

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Stars/SuperRipple;->shader:Landroid/graphics/RuntimeShader;

    const/4 p1, 0x0

    if-eqz v0, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    if-eq v5, v6, :cond_5

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    if-lez v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/RoundedCorner;)I

    move-result v0

    int-to-float v0, v0

    move v6, v0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-nez v2, :cond_7

    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    invoke-static {v2}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/RoundedCorner;)I

    move-result v0

    int-to-float v0, v0

    move v7, v0

    :goto_6
    if-eqz v3, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_8

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    if-lez v0, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v3}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/RoundedCorner;)I

    move-result v0

    int-to-float v0, v0

    move v8, v0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v8, 0x0

    :goto_8
    if-nez v1, :cond_a

    const/4 v9, 0x0

    goto :goto_9

    :cond_a
    invoke-static {v1}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/RoundedCorner;)I

    move-result p1

    int-to-float p1, p1

    move v9, p1

    :goto_9
    const-string v5, "radius"

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RuntimeShader;Ljava/lang/String;FFFF)V

    :cond_b
    return-void
.end method

.method private updateProperties()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->count:I

    iget-object v2, p0, Lorg/telegram/ui/Stars/SuperRipple;->effects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x7

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/SuperRipple;->effects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Stars/SuperRipple;->count:I

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lorg/telegram/ui/Stars/SuperRipple;->count:I

    if-ge v2, v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Stars/SuperRipple;->effects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stars/SuperRipple$Effect;

    const v5, 0x3a83126f    # 0.001f

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->t:[F

    aget v0, v0, v2

    iget v6, v3, Lorg/telegram/ui/Stars/SuperRipple$Effect;->t:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Stars/SuperRipple;->t:[F

    iget v7, v3, Lorg/telegram/ui/Stars/SuperRipple$Effect;->t:F

    aput v7, v6, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->centerX:[F

    aget v0, v0, v2

    iget v6, v3, Lorg/telegram/ui/Stars/SuperRipple$Effect;->cx:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v0, 0x1

    :goto_5
    iget-object v6, p0, Lorg/telegram/ui/Stars/SuperRipple;->centerX:[F

    iget v7, v3, Lorg/telegram/ui/Stars/SuperRipple$Effect;->cx:F

    aput v7, v6, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->centerY:[F

    aget v0, v0, v2

    iget v6, v3, Lorg/telegram/ui/Stars/SuperRipple$Effect;->cy:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    :goto_6
    const/4 v0, 0x1

    :goto_7
    iget-object v6, p0, Lorg/telegram/ui/Stars/SuperRipple;->centerY:[F

    iget v7, v3, Lorg/telegram/ui/Stars/SuperRipple$Effect;->cy:F

    aput v7, v6, v2

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->intensity:[F

    aget v0, v0, v2

    iget v6, v3, Lorg/telegram/ui/Stars/SuperRipple$Effect;->intensity:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    iget-object v5, p0, Lorg/telegram/ui/Stars/SuperRipple;->intensity:[F

    iget v3, v3, Lorg/telegram/ui/Stars/SuperRipple$Effect;->intensity:F

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    if-nez v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->width:I

    iget-object v2, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_b

    iget v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->height:I

    iget-object v2, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_b

    iget v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->density:F

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_a
    if-eqz v4, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->shader:Landroid/graphics/RuntimeShader;

    iget v2, p0, Lorg/telegram/ui/Stars/SuperRipple;->count:I

    const-string v3, "count"

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RuntimeShader;Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->shader:Landroid/graphics/RuntimeShader;

    iget-object v2, p0, Lorg/telegram/ui/Stars/SuperRipple;->t:[F

    const-string v3, "t"

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/RuntimeShader;Ljava/lang/String;[F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->shader:Landroid/graphics/RuntimeShader;

    iget-object v2, p0, Lorg/telegram/ui/Stars/SuperRipple;->centerX:[F

    const-string v3, "centerX"

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/RuntimeShader;Ljava/lang/String;[F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->shader:Landroid/graphics/RuntimeShader;

    iget-object v2, p0, Lorg/telegram/ui/Stars/SuperRipple;->centerY:[F

    const-string v3, "centerY"

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/RuntimeShader;Ljava/lang/String;[F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->shader:Landroid/graphics/RuntimeShader;

    iget-object v2, p0, Lorg/telegram/ui/Stars/SuperRipple;->intensity:[F

    const-string v3, "intensity"

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/RuntimeShader;Ljava/lang/String;[F)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Stars/SuperRipple;->setupSizeUniforms(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->shader:Landroid/graphics/RuntimeShader;

    const-string v1, "img"

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->effect:Landroid/graphics/RenderEffect;

    :cond_c
    move v1, v4

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Stars/SuperRipple;->effects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_b

    :cond_e
    iget-object v2, p0, Lorg/telegram/ui/Stars/SuperRipple;->effect:Landroid/graphics/RenderEffect;

    :goto_b
    invoke-static {v0, v2}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline8;->m(Landroid/view/View;Landroid/graphics/RenderEffect;)V

    if-eqz v1, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_f
    return-void
.end method


# virtual methods
.method public animate(FFF)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRipple;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v1, 0x44960000    # 1200.0f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v1, p1, p2}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v1, p1, p2}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3, p1, p2}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5, p1, p2}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/SuperRipple$Effect;

    const/4 v8, 0x0

    move-object v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stars/SuperRipple$Effect;-><init>(FFFLandroid/animation/ValueAnimator;Lorg/telegram/ui/Stars/SuperRipple$1;)V

    new-instance p1, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stars/SuperRipple;Lorg/telegram/ui/Stars/SuperRipple$Effect;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lorg/telegram/ui/Stars/SuperRipple$1;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Stars/SuperRipple$1;-><init>(Lorg/telegram/ui/Stars/SuperRipple;Lorg/telegram/ui/Stars/SuperRipple$Effect;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float v2, v2, p1

    float-to-long p1, v2

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stars/SuperRipple;->effects:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Stars/SuperRipple;->updateProperties()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
