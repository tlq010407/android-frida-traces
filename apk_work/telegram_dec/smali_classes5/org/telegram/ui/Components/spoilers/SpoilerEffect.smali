.class public Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;
    }
.end annotation


# static fields
.field public static final ALPHAS:[F

.field public static final MAX_PARTICLES_PER_ENTITY:I

.field public static final PARTICLES_PER_CHARACTER:I

.field private static lazyLayoutLines:Ljava/util/WeakHashMap;

.field private static final particlePoints:[[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static xRefPaint:Landroid/graphics/Paint;


# instance fields
.field private bitmapSize:I

.field public drawPoints:Z

.field private enableAlpha:Z

.field public insideQuote:Z

.field private invalidateParent:Z

.field private isLowDevice:Z

.field private lastColor:I

.field private lastDrawTime:J

.field private mAlpha:I

.field private mParent:Landroid/view/View;

.field private maxParticles:I

.field private onRippleEndCallback:Ljava/lang/Runnable;

.field private final particlePaints:[Landroid/graphics/Paint;

.field private final particleRands:[F

.field private final particles:Ljava/util/ArrayList;

.field private final particlesPool:Ljava/util/Stack;

.field private final renderCount:[I

.field private reverseAnimator:Z

.field private rippleAnimator:Landroid/animation/ValueAnimator;

.field private rippleInterpolator:Landroid/animation/TimeInterpolator;

.field private rippleMaxRadius:F

.field private rippleProgress:F

.field private rippleX:F

.field private rippleY:F

.field private shouldInvalidateColor:Z

.field private spaces:Ljava/util/List;

.field private suppressUpdates:Z

.field private visibleRect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$Bw7XpHB9YmMEfXpK99wL0DSN4Ag(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lambda$startRipple$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DlWWdeTSSSqeRn6DubqCDzjPfOU(F)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lambda$new$0(F)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->measureMaxParticlesCount()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->MAX_PARTICLES_PER_ENTITY:I

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->measureParticlesPerCharacter()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->PARTICLES_PER_CHARACTER:I

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sput-object v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    mul-int/lit8 v0, v0, 0x5

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v1, v2, v0

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    return-void

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Paint;

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    const/16 v1, 0xe

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particleRands:[F

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    const/16 v0, 0xff

    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mAlpha:I

    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    if-nez v1, :cond_0

    aget-object v2, v2, v1

    const v3, 0x3fb33333    # 1.4f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    :goto_1
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_2

    :cond_0
    aget-object v2, v2, v1

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->isLowDevice:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->enableAlpha:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$1400(Landroid/view/View;Landroid/text/Layout;FFFFLjava/util/Stack;Ljava/util/List;IILjava/util/ArrayList;)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilerRangeInternal(Landroid/view/View;Landroid/text/Layout;FFFFLjava/util/Stack;Ljava/util/List;IILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->onRippleEndCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->onRippleEndCallback:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private static addSpoilerRangeInternal(Landroid/view/View;Landroid/text/Layout;FFFFLjava/util/Stack;Ljava/util/List;IILjava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p6, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {p6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    :goto_1
    iput-boolean v0, p6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->insideQuote:Z

    if-eqz p10, :cond_3

    add-float v1, p3, p5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    :goto_2
    invoke-virtual {p10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/QuoteSpan$Block;

    iget v3, v2, Lorg/telegram/ui/Components/QuoteSpan$Block;->top:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    iget v2, v2, Lorg/telegram/ui/Components/QuoteSpan$Block;->bottom:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    const/4 p10, 0x1

    iput-boolean p10, p6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->insideQuote:Z

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/high16 p10, -0x40800000    # -1.0f

    invoke-virtual {p6, p10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setRippleProgress(F)V

    int-to-float p8, p8

    invoke-static {p2, p8}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    float-to-int p3, p3

    if-gtz p9, :cond_4

    const/high16 p8, 0x4f000000

    goto :goto_4

    :cond_4
    int-to-float p8, p9

    :goto_4
    invoke-static {p4, p8}, Ljava/lang/Math;->min(FF)F

    move-result p4

    float-to-int p4, p4

    float-to-int p5, p5

    invoke-virtual {p6, p2, p3, p4, p5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p6, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    sget-object p1, Lorg/telegram/ui/Components/Easings;->easeInQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p6, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setRippleInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->updateMaxParticles()V

    if-eqz p0, :cond_5

    invoke-virtual {p6, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setParentView(Landroid/view/View;)V

    :cond_5
    invoke-interface {p7, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addSpoilerRangesInternal(Landroid/view/View;Landroid/text/Layout;IIIILjava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 9

    new-instance v8, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object/from16 v4, p7

    move v5, p2

    move v6, p3

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;-><init>(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;IILjava/util/ArrayList;)V

    move-object v0, p1

    move v1, p4

    move v2, p5

    invoke-virtual {p1, p4, p5, v8}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    return-void
.end method

.method public static addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 15

    .line 0
    move-object/from16 v9, p1

    move-object/from16 v10, p4

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 v2, 0x0

    invoke-interface {v10, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 v12, 0x0

    :goto_0
    array-length v0, v11

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v12, v0, :cond_4

    aget-object v0, v11, v12

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v11, v12

    invoke-interface {v10, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v0, v11, v12

    invoke-interface {v10, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/4 v0, -0x1

    move/from16 v13, p2

    move/from16 v14, p3

    if-ne v13, v0, :cond_1

    if-ne v14, v0, :cond_1

    invoke-virtual {v9, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {v9, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    const v2, 0x7fffffff

    const/high16 v3, -0x80000000

    :goto_1
    if-gt v0, v1, :cond_2

    invoke-virtual {v9, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v9, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v13

    move v3, v14

    :cond_2
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilerRangesInternal(Landroid/view/View;Landroid/text/Layout;IIIILjava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_3
    move/from16 v13, p2

    move/from16 v14, p3

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    move-object v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/AbstractCollection;->clear()V

    :cond_5
    return-void
.end method

.method public static addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V
    .locals 9

    .line 0
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static addSpoilers(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;)V
    .locals 8

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V
    .locals 1

    .line 0
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;)V
    .locals 9

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-lez v0, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    const/4 v4, -0x2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 9

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-lez v0, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    const/4 v4, -0x2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 8

    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private generateRandomLocation(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$502(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$602(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    return-void
.end method

.method private isOutOfBounds(IIIIFF)Z
    .locals 1

    int-to-float p1, p1

    const/4 v0, 0x1

    cmpg-float p1, p5, p1

    if-ltz p1, :cond_3

    int-to-float p1, p3

    cmpl-float p1, p5, p1

    if-gtz p1, :cond_3

    const/high16 p1, 0x40200000    # 2.5f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    cmpg-float p2, p6, p2

    if-ltz p2, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p4, p1

    int-to-float p1, p4

    cmpl-float p1, p6, p1

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/RectF;

    invoke-virtual {p3, p5, p6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private static synthetic lambda$new$0(F)F
    .locals 0

    return p0
.end method

.method private synthetic lambda$startRipple$1(ILandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setAlpha(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method

.method public static layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V
    .locals 10

    instance-of v0, p1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v2, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lazyLayoutLines:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lazyLayoutLines:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lazyLayoutLines:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lazyLayoutLines:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method private static measureMaxParticlesCount()I
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const/16 v0, 0x96

    return v0
.end method

.method private static measureParticlesPerCharacter()I
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0xa

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method public static renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;ILandroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v12, p8

    if-eqz v4, :cond_17

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/Layout;

    const/4 v14, 0x0

    if-eqz v5, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_7

    :cond_1
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_4

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spanned;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v6, v14, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 v8, 0x0

    :goto_0
    array-length v9, v7

    const/16 v10, 0x64

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v8, v9, :cond_4

    aget-object v9, v7, v8

    invoke-virtual {v9}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    const-class v15, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {v6, v10, v11, v15}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    array-length v13, v15

    :goto_1
    move-object/from16 v16, v7

    if-ge v14, v13, :cond_2

    aget-object v7, v15, v14

    move/from16 v17, v13

    new-instance v13, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$3;

    invoke-direct {v13, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$3;-><init>(Lorg/telegram/messenger/Emoji$EmojiSpan;)V

    move-object/from16 v18, v15

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v5, v13, v15, v1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v7, v16

    move/from16 v13, v17

    move-object/from16 v15, v18

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v5, v0, v10, v11, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5, v9}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object/from16 v16, v7

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v7, v16

    const/4 v14, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne v2, v0, :cond_5

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getWidth()I

    move-result v18

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const v1, 0x3fd47ae1    # 1.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object v15, v0

    move-object/from16 v16, v5

    move/from16 v21, v1

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    :goto_3
    move-object v5, v0

    move-object/from16 v0, p4

    goto :goto_4

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_6

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v0, v1, v6}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline2;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v1

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v5

    invoke-static {v0, v1, v5}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline7;->m(Landroid/text/StaticLayout$Builder;FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_3

    :cond_6
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v17

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getWidth()I

    move-result v18

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v19

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v20

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v21

    const/16 v22, 0x0

    move-object v15, v0

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_7
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->save()I

    move/from16 v0, p3

    int-to-float v0, v0

    invoke-virtual {v12, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, v12}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_8
    invoke-static {v3, v12}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    :goto_5
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    sget-object v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v5, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v5

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_6

    :cond_9
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/high16 v5, -0x40800000    # -1.0f

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget v6, v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_c

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->save()I

    sget-object v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v12, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    :cond_a
    invoke-virtual {v12, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v12, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v3, v12}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    const/4 v0, 0x0

    :cond_c
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget v0, v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-eqz p9, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    :cond_e
    int-to-float v8, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v9, v5

    const/4 v10, 0x0

    const/16 v11, 0x1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p8

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto :goto_8

    :cond_f
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->save()I

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v12, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    move/from16 v7, p1

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setInvalidateParent(Z)V

    invoke-virtual {v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getParentView()Landroid/view/View;

    move-result-object v8

    move-object/from16 v9, p0

    if-eq v8, v9, :cond_10

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setParentView(Landroid/view/View;)V

    :cond_10
    invoke-virtual {v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor()Z

    move-result v8

    if-eqz v8, :cond_12

    const/4 v8, 0x1

    if-ne v2, v8, :cond_11

    invoke-virtual/range {p6 .. p6}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    :goto_a
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    goto :goto_b

    :cond_11
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    goto :goto_a

    :goto_b
    invoke-virtual {v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRippleProgress()F

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move/from16 v11, p2

    invoke-static {v11, v8, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    goto :goto_c

    :cond_12
    move/from16 v11, p2

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    :goto_c
    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    :cond_13
    if-eqz v0, :cond_15

    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_14

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_14
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_15
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    return-void

    :cond_17
    :goto_d
    invoke-static {v3, v12}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v7, p0

    iget-boolean v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->drawPoints:Z

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastDrawTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x22

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v8, v2

    iput-wide v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastDrawTime:J

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v9, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v13, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    aput v13, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_1
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_4

    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$700(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v0

    int-to-float v6, v8

    add-float/2addr v0, v6

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$800(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v15, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$702(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$700(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v0

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$800(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v5

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v16

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->isOutOfBounds(IIIIFF)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$900(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v0

    mul-float v0, v0, v17

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1000(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v1

    mul-float v1, v1, v0

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$516(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    invoke-static {v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1100(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v1

    mul-float v1, v1, v0

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$616(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    if-ge v0, v1, :cond_3

    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v14, -0x1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    if-ge v0, v1, :cond_9

    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v8, v1, v0

    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particleRands:[F

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v0, v14}, Ljava/util/Arrays;->fill([FF)V

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v8, :cond_9

    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particleRands:[F

    rem-int/lit8 v1, v15, 0xe

    aget v2, v0, v1

    cmpl-float v3, v2, v14

    if-nez v3, :cond_5

    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, v1

    :cond_5
    move v6, v2

    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    :goto_5
    move-object v5, v0

    goto :goto_6

    :cond_6
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;)V

    goto :goto_5

    :goto_6
    const/4 v0, 0x0

    :goto_7
    invoke-direct {v7, v5, v15}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->generateRandomLocation(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;I)V

    add-int/lit8 v4, v0, 0x1

    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v16

    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v17

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v14, v4

    move v4, v12

    move-object v13, v5

    move/from16 v5, v16

    move/from16 v16, v8

    move v8, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->isOutOfBounds(IIIIFF)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    if-lt v14, v0, :cond_7

    goto :goto_8

    :cond_7
    move v6, v8

    move-object v5, v13

    move v0, v14

    move/from16 v8, v16

    const/4 v13, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    goto :goto_7

    :cond_8
    :goto_8
    float-to-double v0, v8

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v13, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1002(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    invoke-static {v13, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1102(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    const/4 v0, 0x0

    invoke-static {v13, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$702(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-static {v13, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$802(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v6, v8, v0

    const/high16 v0, 0x40800000    # 4.0f

    add-float/2addr v6, v0

    invoke-static {v13, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$902(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)F

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v13, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1302(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;I)I

    iget-object v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v16

    const/4 v13, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    goto/16 :goto_4

    :cond_9
    iget-boolean v0, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->enableAlpha:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    if-ge v0, v1, :cond_19

    iget-object v1, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    iget-object v4, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_17

    iget-object v4, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    if-eqz v4, :cond_16

    iget-object v5, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    if-eqz v5, :cond_b

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v6

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_b
    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$1300(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)I

    move-result v5

    if-eq v5, v0, :cond_c

    iget-boolean v5, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->enableAlpha:Z

    if-eqz v5, :cond_c

    goto/16 :goto_c

    :cond_c
    sget-object v5, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v6, v5, v0

    array-length v8, v6

    add-int/lit8 v8, v8, -0x2

    if-lt v3, v8, :cond_d

    goto/16 :goto_c

    :cond_d
    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v8

    aput v8, v6, v3

    aget-object v6, v5, v0

    add-int/lit8 v8, v3, 0x1

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v6, v3, 0x2

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v8

    cmpg-float v8, v8, v1

    if-gez v8, :cond_10

    aget-object v8, v5, v0

    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    if-lt v6, v9, :cond_f

    :cond_e
    :goto_b
    move v3, v6

    goto/16 :goto_c

    :cond_f
    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    iget v10, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v8, v6

    aget-object v6, v5, v0

    add-int/lit8 v8, v3, 0x3

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v6, v3, 0x4

    :cond_10
    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v3

    iget v8, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v8, v8

    sub-float/2addr v8, v1

    cmpl-float v3, v3, v8

    if-lez v3, :cond_12

    aget-object v3, v5, v0

    array-length v8, v3

    add-int/lit8 v8, v8, -0x2

    if-lt v6, v8, :cond_11

    goto :goto_b

    :cond_11
    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v8

    iget v9, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v3, v6

    aget-object v3, v5, v0

    add-int/lit8 v8, v6, 0x1

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    aput v9, v3, v8

    add-int/lit8 v6, v6, 0x2

    :cond_12
    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_14

    aget-object v3, v5, v0

    array-length v8, v3

    add-int/lit8 v8, v8, -0x2

    if-lt v6, v8, :cond_13

    goto :goto_b

    :cond_13
    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v8

    aput v8, v3, v6

    aget-object v3, v5, v0

    add-int/lit8 v8, v6, 0x1

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    iget v10, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v3, v8

    add-int/lit8 v6, v6, 0x2

    :cond_14
    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v3

    iget v8, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v8, v8

    sub-float/2addr v8, v1

    cmpl-float v3, v3, v8

    if-lez v3, :cond_e

    aget-object v3, v5, v0

    array-length v8, v3

    add-int/lit8 v8, v8, -0x2

    if-lt v6, v8, :cond_15

    goto :goto_b

    :cond_15
    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v8

    aput v8, v3, v6

    aget-object v3, v5, v0

    add-int/lit8 v5, v6, 0x1

    invoke-static {v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v4

    iget v8, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    aput v4, v3, v5

    add-int/lit8 v3, v6, 0x2

    :cond_16
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_17
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v1, v1, v0

    iget-object v2, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    move-object/from16 v4, p1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3, v2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_18
    move-object/from16 v4, p1

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getInstance()Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v11, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v0

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getInstance()Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getInstance()Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->checkUpdate()V

    :cond_19
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mParent:Landroid/view/View;

    return-object v0
.end method

.method public getRipplePath(Landroid/graphics/Path;)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleX:F

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleY:F

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleMaxRadius:F

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    mul-float v2, v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public getRippleProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    return v0
.end method

.method public invalidateSelf()V
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mParent:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateParent:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/telegram/ui/Cells/BaseCell;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/BaseCell;->invalidateLite()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mAlpha:I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    aget v1, v1, v0

    int-to-float v3, p1

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$500(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result p4

    float-to-int p4, p4

    invoke-static {p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->access$600(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, p4, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    if-ge p3, p4, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {p3, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setColor(I)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastColor:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mAlpha:I

    int-to-float v3, v3

    aget v1, v1, v0

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastColor:I

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInvalidateParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateParent:Z

    return-void
.end method

.method public setMaxParticlesCount(I)V
    .locals 3

    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnRippleEndCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->onRippleEndCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mParent:Landroid/view/View;

    return-void
.end method

.method public setRippleInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setRippleProgress(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    return-void
.end method

.method public setSuppressUpdates(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->suppressUpdates:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method

.method public setVisibleBounds(FFFF)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_2

    :cond_1
    iput p1, v0, Landroid/graphics/RectF;->left:F

    iput p2, v0, Landroid/graphics/RectF;->top:F

    iput p3, v0, Landroid/graphics/RectF;->right:F

    iput p4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public shouldInvalidateColor()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    return v0
.end method

.method public startRipple(FFF)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFFZ)V

    return-void
.end method

.method public startRipple(FFFZ)V
    .locals 2

    .line 0
    const/4 v0, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleX:F

    iput p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleY:F

    iput p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleMaxRadius:F

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    iput-boolean p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->reverseAnimator:Z

    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-boolean p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->reverseAnimator:Z

    if-eqz p3, :cond_2

    const/16 p3, 0xff

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    sub-int/2addr v1, v0

    aget-object p3, p3, v1

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 p4, 0x0

    aput v1, p2, p4

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleMaxRadius:F

    const p4, 0x3e99999a    # 0.3f

    mul-float p2, p2, p4

    const/high16 p4, 0x437a0000    # 250.0f

    const v0, 0x44098000    # 550.0f

    invoke-static {p2, p4, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method

.method public updateMaxParticles()V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    div-int/2addr v0, v1

    sget v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->PARTICLES_PER_CHARACTER:I

    mul-int v0, v0, v1

    sget v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->MAX_PARTICLES_PER_ENTITY:I

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setMaxParticlesCount(I)V

    return-void
.end method
