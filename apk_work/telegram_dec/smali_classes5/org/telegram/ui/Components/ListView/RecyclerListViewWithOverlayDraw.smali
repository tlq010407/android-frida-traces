.class public abstract Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw$OverlayView;
    }
.end annotation


# instance fields
.field invalidated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw;->invalidated:Z

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw$OverlayView;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw$OverlayView;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-interface {v1}, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw$OverlayView;->getX()F

    move-result v2

    invoke-interface {v1}, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw$OverlayView;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-interface {v1, p0, p1}, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw$OverlayView;->preDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw;->invalidated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ListView/RecyclerListViewWithOverlayDraw;->invalidated:Z

    return-void
.end method
