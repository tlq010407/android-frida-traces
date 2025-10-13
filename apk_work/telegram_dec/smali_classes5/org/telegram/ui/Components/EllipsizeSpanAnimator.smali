.class public Lorg/telegram/ui/Components/EllipsizeSpanAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;
    }
.end annotation


# instance fields
.field attachedToWindow:Z

.field private final ellAnimator:Landroid/animation/AnimatorSet;

.field private final ellSpans:[Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

.field public ellipsizedViews:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$iHwWtVX_42rEiWcqkESIxAFi-js(Lorg/telegram/ui/Components/EllipsizeSpanAnimator;Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->lambda$createEllipsizeAnimator$0(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 18

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    invoke-direct {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;-><init>()V

    new-instance v1, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;-><init>()V

    new-instance v2, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    invoke-direct {v2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;-><init>()V

    const/4 v7, 0x3

    new-array v8, v7, [Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v10, 0x1

    aput-object v1, v8, v10

    const/4 v11, 0x2

    aput-object v2, v8, v11

    iput-object v8, v6, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellSpans:[Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v12, v6, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    aget-object v1, v8, v9

    const/4 v4, 0x0

    const/16 v5, 0x12c

    const/4 v2, 0x0

    const/16 v3, 0xff

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v13

    aget-object v1, v8, v10

    const/16 v4, 0x96

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v14

    aget-object v1, v8, v11

    const/16 v4, 0x12c

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v15

    aget-object v1, v8, v9

    const/16 v4, 0x3e8

    const/16 v5, 0x190

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v16

    aget-object v1, v8, v10

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v17

    aget-object v1, v8, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v13, v1, v9

    aput-object v14, v1, v10

    aput-object v15, v1, v11

    aput-object v16, v1, v7

    const/4 v2, 0x4

    aput-object v17, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$1;

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$1;-><init>(Lorg/telegram/ui/Components/EllipsizeSpanAnimator;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/EllipsizeSpanAnimator;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private createEllipsizeAnimator(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;IIII)Landroid/animation/Animator;
    .locals 2

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EllipsizeSpanAnimator;Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v0, p5

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    int-to-long p3, p4

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method private synthetic lambda$createEllipsizeAnimator$0(Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;->setAlpha(I)V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->attachedToWindow:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->attachedToWindow:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellipsizedViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public wrap(Landroid/text/SpannableString;I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellSpans:[Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v0, p2, v2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellSpans:[Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->ellSpans:[Lorg/telegram/ui/Components/EllipsizeSpanAnimator$TextAlphaSpan;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, v0, v3, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
