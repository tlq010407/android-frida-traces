.class public Lorg/telegram/ui/Stars/SuperRippleFallback;
.super Lorg/telegram/ui/Stars/ISuperRipple;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;
    }
.end annotation


# instance fields
.field public final MAX_COUNT:I

.field public final effects:Ljava/util/ArrayList;

.field private final outlineProvider:Landroid/view/ViewOutlineProvider;

.field private final outlineProviderPath:Landroid/graphics/Path;

.field public final radii:[F


# direct methods
.method public static synthetic $r8$lambda$xwEP5zFnvIW8CcDRwWGfrTgeWc8(Lorg/telegram/ui/Stars/SuperRippleFallback;Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/SuperRippleFallback;->lambda$animate$0(Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 11

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/ISuperRipple;-><init>(Landroid/view/View;)V

    const/16 v0, 0x8

    new-array v6, v0, [F

    iput-object v6, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->radii:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->outlineProviderPath:Landroid/graphics/Path;

    new-instance v0, Lorg/telegram/ui/Stars/SuperRippleFallback$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/SuperRippleFallback$1;-><init>(Lorg/telegram/ui/Stars/SuperRippleFallback;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->outlineProvider:Landroid/view/ViewOutlineProvider;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->effects:Ljava/util/ArrayList;

    const/16 v0, 0xa

    iput v0, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->MAX_COUNT:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline12;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v2

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_6

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object v5

    const/4 v7, 0x3

    invoke-static {v2, v7}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v2, v9}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object v2

    const/4 v10, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/RoundedCorner;)I

    move-result v3

    int-to-float v3, v3

    :goto_0
    aput v3, v6, v4

    aput v3, v6, v0

    if-nez v5, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/RoundedCorner;)I

    move-result v0

    int-to-float v0, v0

    :goto_1
    aput v0, v6, v7

    aput v0, v6, v9

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/RoundedCorner;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x5

    aput v0, v6, v2

    const/4 v2, 0x4

    aput v0, v6, v2

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_4

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    if-lez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v8}, Lorg/telegram/ui/Stars/SuperRipple$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/RoundedCorner;)I

    move-result v0

    int-to-float v10, v0

    :cond_5
    :goto_4
    const/4 v0, 0x7

    aput v10, v6, v0

    const/4 v0, 0x6

    aput v10, v6, v0

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v5, p1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stars/SuperRippleFallback$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Path;FFFF[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stars/SuperRippleFallback;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stars/SuperRippleFallback;->updateProperties()V

    return-void
.end method

.method private synthetic lambda$animate$0(Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->t:F

    invoke-direct {p0}, Lorg/telegram/ui/Stars/SuperRippleFallback;->updateProperties()V

    return-void
.end method

.method private updateProperties()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;

    iget v7, v6, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->t:F

    iget v8, v6, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->duration:F

    div-float/2addr v7, v8

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float v7, v1, v7

    iget v8, v6, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->intensity:F

    const v9, 0x3d23d70a    # 0.04f

    mul-float v8, v8, v9

    sub-float v9, v1, v8

    mul-float v8, v8, v7

    add-float/2addr v9, v8

    mul-float v5, v5, v9

    iget v7, v6, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->cx:F

    mul-float v7, v7, v1

    add-float/2addr v4, v7

    iget v6, v6, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->cy:F

    mul-float v6, v6, v1

    add-float/2addr v3, v6

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    cmpg-float v0, v2, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    sub-float v2, v1, v2

    mul-float v0, v0, v2

    add-float/2addr v4, v0

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    mul-float v0, v0, v2

    add-float/2addr v3, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    div-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    div-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/ui/Stars/SuperRippleFallback$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;)Landroid/view/ViewOutlineProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->effects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->outlineProvider:Landroid/view/ViewOutlineProvider;

    :goto_2
    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->effects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->outlineProvider:Landroid/view/ViewOutlineProvider;

    :goto_3
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/ISuperRipple;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public animate(FFF)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->effects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v8, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;

    const/4 v7, 0x0

    move-object v2, v8

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;-><init>(FFFLandroid/animation/ValueAnimator;Lorg/telegram/ui/Stars/SuperRippleFallback$1;)V

    iput v0, v8, Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;->duration:F

    new-instance p1, Lorg/telegram/ui/Stars/SuperRippleFallback$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v8}, Lorg/telegram/ui/Stars/SuperRippleFallback$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/SuperRippleFallback;Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lorg/telegram/ui/Stars/SuperRippleFallback$2;

    invoke-direct {p1, p0, v8}, Lorg/telegram/ui/Stars/SuperRippleFallback$2;-><init>(Lorg/telegram/ui/Stars/SuperRippleFallback;Lorg/telegram/ui/Stars/SuperRippleFallback$Effect;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stars/SuperRippleFallback;->effects:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Stars/SuperRippleFallback;->updateProperties()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method
