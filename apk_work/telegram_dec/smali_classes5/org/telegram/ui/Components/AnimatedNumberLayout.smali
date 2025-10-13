.class public Lorg/telegram/ui/Components/AnimatedNumberLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROGRESS:Landroid/util/Property;


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;

.field private currentNumber:I

.field private letters:Ljava/util/ArrayList;

.field private oldLetters:Ljava/util/ArrayList;

.field private final parentView:Landroid/view/View;

.field private progress:F

.field private final textPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/AnimatedNumberLayout$1;

    const-string v1, "progress"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnimatedNumberLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/text/TextPaint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->currentNumber:I

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->textPaint:Landroid/text/TextPaint;

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->parentView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AnimatedNumberLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedNumberLayout;->setProgress(F)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AnimatedNumberLayout;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/AnimatedNumberLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->animator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AnimatedNumberLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    return-object p0
.end method

.method private setProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/StaticLayout;

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/StaticLayout;

    :cond_2
    iget v7, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    cmpl-float v10, v7, v9

    if-lez v10, :cond_3

    if-eqz v5, :cond_7

    iget-object v10, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->textPaint:Landroid/text/TextPaint;

    int-to-float v11, v3

    mul-float v7, v7, v11

    float-to-int v7, v7

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v7, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    sub-float/2addr v7, v8

    mul-float v7, v7, v0

    invoke-virtual {p1, v9, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v6, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->textPaint:Landroid/text/TextPaint;

    iget v10, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    sub-float/2addr v8, v10

    mul-float v11, v11, v8

    float-to-int v8, v11

    :goto_2
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v7, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    mul-float v7, v7, v0

    invoke-virtual {p1, v9, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_3
    cmpg-float v10, v7, v9

    if-gez v10, :cond_6

    if-eqz v5, :cond_4

    iget-object v10, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->textPaint:Landroid/text/TextPaint;

    int-to-float v11, v3

    neg-float v7, v7

    mul-float v11, v11, v7

    float-to-int v7, v11

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v7, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    add-float/2addr v7, v8

    mul-float v7, v7, v0

    invoke-virtual {p1, v9, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    if-eqz v6, :cond_8

    add-int/lit8 v7, v2, -0x1

    if-eq v4, v7, :cond_5

    if-eqz v5, :cond_7

    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->textPaint:Landroid/text/TextPaint;

    int-to-float v10, v3

    iget v11, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    add-float/2addr v11, v8

    mul-float v10, v10, v11

    float-to-int v8, v10

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_8

    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    :goto_3
    if-eqz v6, :cond_9

    invoke-virtual {v6, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v6, :cond_a

    invoke-virtual {v6, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    goto :goto_4

    :cond_a
    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    :goto_4
    invoke-virtual {p1, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getWidth()I
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public setNumber(IZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->currentNumber:I

    if-ne v4, v1, :cond_0

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->animator:Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    iput-object v5, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->animator:Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v6, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->currentNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v2

    const-string v6, "%d"

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v2

    invoke-static {v4, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v6, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->currentNumber:I

    if-le v1, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iput v1, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->currentNumber:I

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->progress:F

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget-object v10, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_3
    move-object v10, v5

    :goto_2
    if-eqz v10, :cond_4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/StaticLayout;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v10, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    new-instance v8, Landroid/text/StaticLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v10, v8

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget-object v10, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->letters:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move v8, v9

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_7

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lorg/telegram/ui/Components/AnimatedNumberLayout;->PROGRESS:Landroid/util/Property;

    if-eqz v6, :cond_6

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_4

    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_4
    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v5, v6, v2

    aput v1, v6, v3

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->animator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedNumberLayout$2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/AnimatedNumberLayout$2;-><init>(Lorg/telegram/ui/Components/AnimatedNumberLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedNumberLayout;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method
