.class public Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/voip/RateCallLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$OnSelectedStar;,
        Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;
    }
.end annotation


# instance fields
.field private allStarsProvider:Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;

.field public defaultStar:Lorg/telegram/ui/Components/RLottieImageView;

.field private onSelectedStar:Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$OnSelectedStar;

.field private pos:I

.field private final rippleDrawable:Landroid/graphics/drawable/Drawable;

.field public selectedStar:Lorg/telegram/ui/Components/RLottieImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->pos:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->defaultStar:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->selectedStar:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->defaultStar:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/messenger/R$raw;->star_stroke:I

    const/16 v2, 0x25

    invoke-virtual {p1, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->selectedStar:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/messenger/R$raw;->star_fill:I

    invoke-virtual {p1, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->selectedStar:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->defaultStar:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v1, 0x42140000    # 37.0f

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->selectedStar:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/4 v1, -0x1

    const/16 v2, 0x4c

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0xfa

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->allStarsProvider:Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;->getAllStartsViews()[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    move-result-object v0

    array-length v5, v0

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v7, v0, v2

    iget-object v8, v7, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->defaultStar:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->selectedStar:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->allStarsProvider:Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;->getAllStartsViews()[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    iget v7, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->pos:I

    if-gt v1, v7, :cond_2

    aget-object v7, v0, v1

    iget-object v8, v7, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->defaultStar:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->selectedStar:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->onSelectedStar:Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$OnSelectedStar;

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v2

    aget v0, v0, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->onSelectedStar:Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$OnSelectedStar;

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->pos:I

    add-int/2addr v3, v5

    invoke-interface {v2, v1, v0, v3}, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$OnSelectedStar;->onSelected(FFI)V

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->allStarsProvider:Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;->getAllStartsViews()[Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;

    move-result-object v0

    :goto_2
    iget v7, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->pos:I

    if-gt v2, v7, :cond_4

    aget-object v7, v0, v2

    iget-object v8, v7, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->defaultStar:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v7, v7, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->selectedStar:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const v9, 0x3f4ccccd    # 0.8f

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v7, v5

    :goto_3
    array-length v2, v0

    if-ge v7, v2, :cond_5

    aget-object v2, v0, v7

    iget-object v5, v2, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->defaultStar:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->selectedStar:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAllStarsProvider(Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->allStarsProvider:Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$AllStarsProvider;

    return-void
.end method

.method public setOnSelectedStar(Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$OnSelectedStar;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->onSelectedStar:Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer$OnSelectedStar;

    iput p2, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->pos:I

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/RateCallLayout$StarContainer;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
