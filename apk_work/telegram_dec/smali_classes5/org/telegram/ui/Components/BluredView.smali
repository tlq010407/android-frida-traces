.class public abstract Lorg/telegram/ui/Components/BluredView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/telegram/ui/Components/BlurBehindDrawable;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p0, v0, p3}, Lorg/telegram/ui/Components/BlurBehindDrawable;-><init>(Landroid/view/View;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BlurBehindDrawable;->setAnimateAlpha(Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->show(Z)V

    return-void
.end method


# virtual methods
.method public fullyDrawing()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->isFullyDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->checkSizes()V

    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->invalidate()V

    return-void
.end method
