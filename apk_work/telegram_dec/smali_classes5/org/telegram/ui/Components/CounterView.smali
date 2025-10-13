.class public Lorg/telegram/ui/Components/CounterView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/CounterView$CounterDrawable;
    }
.end annotation


# instance fields
.field public counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/CounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0, p2}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;-><init>(Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput-boolean v0, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateVisibility:Z

    return-void
.end method


# virtual methods
.method public getEnterProgress()F
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    :cond_0
    if-nez v3, :cond_1

    return v1

    :cond_1
    sub-float/2addr v2, v1

    return v2

    :cond_2
    iget v0, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    if-nez v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    return v2
.end method

.method public isInOutAnimation()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v0, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setSize(II)V

    return-void
.end method

.method public setColors(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->access$002(Lorg/telegram/ui/Components/CounterView$CounterDrawable;I)I

    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->access$102(Lorg/telegram/ui/Components/CounterView$CounterDrawable;I)I

    return-void
.end method

.method public setCount(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput p1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->gravity:I

    return-void
.end method

.method public setReverse(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->access$202(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Z)Z

    return-void
.end method
