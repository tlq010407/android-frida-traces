.class public Lorg/telegram/ui/Components/SubstringLayoutAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private animateInLayout:Landroid/text/StaticLayout;

.field private animateOutLayout:Landroid/text/StaticLayout;

.field private animateStableLayout:Landroid/text/StaticLayout;

.field public animateTextChange:Z

.field private animateTextChangeOut:Z

.field private hintProgress:F

.field private final parentView:Landroid/view/View;

.field private replaceAnimation:Z

.field valueAnimator:Landroid/animation/ValueAnimator;

.field private xOffset:F


# direct methods
.method public static synthetic $r8$lambda$YCYfvCTPks0Mn8R_NHGC6lJtVV0(Lorg/telegram/ui/Components/SubstringLayoutAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->lambda$create$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->parentView:Landroid/view/View;

    return-void
.end method

.method private synthetic lambda$create$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->hintProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChange:Z

    return-void
.end method

.method public create(Landroid/text/StaticLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;)V
    .locals 22

    move-object/from16 v0, p0

    if-eqz p1, :cond_6

    invoke-virtual/range {p2 .. p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x43c80000    # 400.0f

    if-ltz v6, :cond_5

    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_2

    new-instance v10, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v10}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v15, v10, v4, v6, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v10, v12, :cond_3

    new-instance v10, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v10}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15, v10, v12, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v11, v1, v6, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/StaticLayout;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v10, v1

    move-object/from16 v12, p4

    move-object v14, v2

    move-object/from16 v19, v15

    move/from16 v15, v18

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateInLayout:Landroid/text/StaticLayout;

    new-instance v1, Landroid/text/StaticLayout;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v12, v1

    move-object/from16 v13, v19

    move-object/from16 v14, p4

    move-object/from16 v16, v2

    move/from16 v19, v9

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateStableLayout:Landroid/text/StaticLayout;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChange:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChangeOut:Z

    if-nez v6, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    neg-float v1, v1

    :goto_1
    iput v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->xOffset:F

    iput-object v7, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateOutLayout:Landroid/text/StaticLayout;

    iput-boolean v4, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->replaceAnimation:Z

    goto :goto_2

    :cond_5
    new-instance v1, Landroid/text/StaticLayout;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v10, v1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, v18

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateInLayout:Landroid/text/StaticLayout;

    new-instance v1, Landroid/text/StaticLayout;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v14, v1

    move-object/from16 v15, p2

    move-object/from16 v16, p4

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateOutLayout:Landroid/text/StaticLayout;

    iput-object v7, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateStableLayout:Landroid/text/StaticLayout;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChange:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->replaceAnimation:Z

    iput v8, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->xOffset:F

    :goto_2
    iput v8, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->hintProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/SubstringLayoutAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SubstringLayoutAnimator$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SubstringLayoutAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/SubstringLayoutAnimator$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SubstringLayoutAnimator$1;-><init>(Lorg/telegram/ui/Components/SubstringLayoutAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/text/TextPaint;)V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChange:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->xOffset:F

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChangeOut:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->hintProgress:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->hintProgress:F

    sub-float v1, v2, v1

    :goto_0
    mul-float v0, v0, v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateStableLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateInLayout:Landroid/text/StaticLayout;

    const/high16 v5, 0x40000000    # 2.0f

    const v6, 0x3f666666    # 0.9f

    const v7, 0x3dcccccd    # 0.1f

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChangeOut:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->hintProgress:F

    sub-float v3, v2, v3

    goto :goto_1

    :cond_2
    iget v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->hintProgress:F

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v8, v1

    mul-float v8, v8, v3

    float-to-int v8, v8

    invoke-virtual {p2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v8, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->replaceAnimation:Z

    if-eqz v8, :cond_3

    mul-float v3, v3, v7

    add-float/2addr v3, v6

    iget-object v8, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->parentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    invoke-virtual {p1, v3, v3, v0, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateInLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateOutLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChangeOut:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->hintProgress:F

    goto :goto_2

    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->hintProgress:F

    sub-float v3, v2, v3

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v8, v1

    iget-boolean v9, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChangeOut:Z

    if-eqz v9, :cond_6

    iget v2, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->hintProgress:F

    goto :goto_3

    :cond_6
    iget v9, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->hintProgress:F

    sub-float/2addr v2, v9

    :goto_3
    mul-float v8, v8, v2

    float-to-int v2, v8

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->replaceAnimation:Z

    if-eqz v2, :cond_7

    mul-float v3, v3, v7

    add-float/2addr v3, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->parentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateOutLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    return-void
.end method
