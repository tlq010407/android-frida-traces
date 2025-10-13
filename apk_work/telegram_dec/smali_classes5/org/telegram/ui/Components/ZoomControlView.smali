.class public Lorg/telegram/ui/Components/ZoomControlView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;
    }
.end annotation


# instance fields
.field public final ZOOM_PROPERTY:Landroid/util/Property;

.field private animatingToZoom:F

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private delegate:Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;

.field public enabledTouch:Z

.field private filledProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private knobDrawable:Landroid/graphics/drawable/Drawable;

.field private knobPressed:Z

.field private knobStartX:F

.field private knobStartY:F

.field private minusCx:I

.field private minusCy:I

.field private minusDrawable:Landroid/graphics/drawable/Drawable;

.field private plusCx:I

.field private plusCy:I

.field private plusDrawable:Landroid/graphics/drawable/Drawable;

.field private pressed:Z

.field private pressedKnobDrawable:Landroid/graphics/drawable/Drawable;

.field private progressDrawable:Landroid/graphics/drawable/Drawable;

.field private progressEndX:I

.field private progressEndY:I

.field private progressStartX:I

.field private progressStartY:I

.field private zoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->enabledTouch:Z

    new-instance v0, Lorg/telegram/ui/Components/ZoomControlView$1;

    const-string v1, "clipProgress"

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ZoomControlView$1;-><init>(Lorg/telegram/ui/Components/ZoomControlView;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->ZOOM_PROPERTY:Landroid/util/Property;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->zoom_minus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->zoom_plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->zoom_slide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->zoom_slide_a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->filledProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->zoom_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->zoom_round_b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ZoomControlView;->pressedKnobDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ZoomControlView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ZoomControlView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ZoomControlView;)Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ZoomControlView;->delegate:Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/ZoomControlView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ZoomControlView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateToZoom(F)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/ZoomControlView;->animatingToZoom:F

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/ZoomControlView;->ZOOM_PROPERTY:Landroid/util/Property;

    new-array v4, v1, [F

    aput p1, v4, v0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v3, v1, [Landroid/animation/Animator;

    aput-object p1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ZoomControlView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ZoomControlView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ZoomControlView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ZoomControlView$2;-><init>(Lorg/telegram/ui/Components/ZoomControlView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ZoomControlView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return v1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public getZoom()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->animatingToZoom:F

    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    return v0
.end method

.method public isTouch()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->pressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobPressed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v5, 0x42240000    # 41.0f

    if-eqz v2, :cond_1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCx:I

    iput v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCy:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCx:I

    iput v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCy:I

    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCx:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartX:I

    iput v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartY:I

    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCx:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndX:I

    iput v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndY:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCx:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCy:I

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCx:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCy:I

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartX:I

    iget v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCy:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartY:I

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndX:I

    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCy:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndY:I

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCx:I

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCy:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCx:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCy:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCx:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCy:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCx:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCy:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v7, v3

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndX:I

    iget v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartX:I

    sub-int/2addr v0, v1

    iget v3, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndY:I

    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartY:I

    sub-int v6, v3, v5

    int-to-float v7, v1

    int-to-float v0, v0

    iget v8, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    mul-float v0, v0, v8

    add-float/2addr v7, v0

    float-to-int v0, v7

    int-to-float v7, v5

    int-to-float v6, v6

    mul-float v6, v6, v8

    add-float/2addr v7, v6

    float-to-int v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v5, v4

    iget v4, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndX:I

    iget v8, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartY:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v3, v1, v5, v4, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->filledProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartX:I

    iget v4, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartY:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartY:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v1, v5, v4, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->filledProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartY:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartX:I

    neg-int v1, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->filledProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobPressed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->pressedKnobDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobDrawable:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    sub-int v4, v6, v2

    add-int/2addr v0, v2

    add-int/2addr v6, v2

    invoke-virtual {v1, v3, v4, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->enabledTouch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x1

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartX:I

    int-to-float v7, v5

    iget v8, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndX:I

    sub-int/2addr v8, v5

    int-to-float v5, v8

    iget v8, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    mul-float v9, v5, v8

    add-float/2addr v9, v7

    float-to-int v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartY:I

    int-to-float v11, v10

    iget v12, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndY:I

    sub-int/2addr v12, v10

    int-to-float v10, v12

    mul-float v8, v8, v10

    add-float/2addr v8, v11

    float-to-int v8, v8

    if-eq v3, v6, :cond_7

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    const/4 v8, 0x2

    if-ne v3, v8, :cond_11

    iget-boolean v8, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobPressed:Z

    if-eqz v8, :cond_11

    if-eqz v4, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobStartX:F

    add-float/2addr v0, v2

    sub-float/2addr v0, v7

    div-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobStartY:F

    add-float/2addr v2, v0

    sub-float/2addr v2, v11

    div-float/2addr v2, v10

    iput v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    const/4 v2, 0x0

    cmpg-float v4, v0, v2

    if-gez v4, :cond_4

    :goto_2
    iput v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    goto :goto_3

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->delegate:Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;

    if-eqz v0, :cond_6

    iget v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;->didSetZoom(F)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_9

    :cond_7
    :goto_4
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v9, v7

    int-to-float v7, v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v9

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_9

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v8, v7

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v8

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_9

    if-nez v3, :cond_10

    iput-boolean v6, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobPressed:Z

    int-to-float v4, v9

    sub-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobStartX:F

    int-to-float v0, v8

    sub-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobStartY:F

    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_8

    :cond_9
    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCx:I

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    const/4 v8, 0x3

    const/high16 v9, 0x3e800000    # 0.25f

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_a

    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCx:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v5, v10

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_a

    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCy:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v5, v10

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_a

    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->minusCy:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v5, v10

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_a

    if-ne v3, v6, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ZoomControlView;->getZoom()F

    move-result v0

    div-float/2addr v0, v9

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v0, v0, v9

    sub-float/2addr v0, v9

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ZoomControlView;->animateToZoom(F)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_6
    :try_start_0
    invoke-virtual {p0, v8}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    nop

    goto/16 :goto_8

    :cond_a
    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCx:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v5, v10

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_c

    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCx:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v5, v10

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_c

    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCy:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v5, v10

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_c

    iget v5, p0, Lorg/telegram/ui/Components/ZoomControlView;->plusCy:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_c

    if-ne v3, v6, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ZoomControlView;->getZoom()F

    move-result v0

    div-float/2addr v0, v9

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v0, v0, v9

    add-float/2addr v0, v9

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ZoomControlView;->animateToZoom(F)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    :goto_7
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ZoomControlView;->pressed:Z

    goto/16 :goto_8

    :cond_c
    const/high16 v5, 0x41200000    # 10.0f

    if-eqz v4, :cond_e

    iget v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartX:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_11

    iget v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndX:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_11

    if-nez v3, :cond_d

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobStartX:F

    goto :goto_7

    :cond_d
    iget v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobStartX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_10

    iget v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartX:I

    int-to-float v4, v2

    sub-float/2addr v0, v4

    iget v4, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndX:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->delegate:Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;

    if-eqz v2, :cond_8

    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;->didSetZoom(F)V

    goto/16 :goto_5

    :cond_e
    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartY:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_11

    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndY:I

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_11

    if-ne v3, v6, :cond_f

    iput v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobStartY:F

    goto :goto_7

    :cond_f
    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobStartY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressStartY:I

    int-to-float v4, v0

    sub-float/2addr v2, v4

    iget v4, p0, Lorg/telegram/ui/Components/ZoomControlView;->progressEndY:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->delegate:Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;

    if-eqz v0, :cond_8

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;->didSetZoom(F)V

    goto/16 :goto_5

    :cond_10
    :goto_8
    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v0, 0x0

    :goto_a
    if-ne v3, v6, :cond_12

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->pressed:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobPressed:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_12
    if-nez v0, :cond_13

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->pressed:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->knobPressed:Z

    if-nez v0, :cond_13

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_13
    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ZoomControlView;->delegate:Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;

    return-void
.end method

.method public setZoom(FZ)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ZoomControlView;->zoom:F

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/ZoomControlView;->delegate:Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;->didSetZoom(F)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
