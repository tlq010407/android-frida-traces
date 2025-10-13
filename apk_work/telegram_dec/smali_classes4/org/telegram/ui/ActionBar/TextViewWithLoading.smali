.class public abstract Lorg/telegram/ui/ActionBar/TextViewWithLoading;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final animatedLoading:Lorg/telegram/ui/Components/AnimatedFloat;

.field private loading:Z

.field private spinner:Lorg/telegram/ui/Components/CircularProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->loading:Z

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0x140

    invoke-direct {p1, p0, v1, v2, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->animatedLoading:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->spinner:Lorg/telegram/ui/Components/CircularProgressDrawable;

    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->loading:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->animatedLoading:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->loading:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v0, v4

    if-gez v5, :cond_1

    cmpg-float v5, v0, v3

    if-gtz v5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v9, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v10, v5

    sub-float v5, v4, v0

    mul-float v5, v5, v2

    float-to-int v11, v5

    const/4 v8, 0x0

    const/16 v12, 0x1f

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v4, v0

    mul-float v1, v1, v4

    float-to-int v1, v1

    sub-int/2addr v3, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->spinner:Lorg/telegram/ui/Components/CircularProgressDrawable;

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->spinner:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CircularProgressDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->spinner:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CircularProgressDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->spinner:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CircularProgressDrawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->spinner:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CircularProgressDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->spinner:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setLoading(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->loading:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->loading:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->animatedLoading:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    :cond_1
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->spinner:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setColor(I)V

    return-void
.end method
