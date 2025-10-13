.class public Lorg/telegram/ui/Components/CombinedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private backHeight:I

.field private backWidth:I

.field private background:Landroid/graphics/drawable/Drawable;

.field private both:Z

.field private center:Z

.field private fullSize:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconHeight:I

.field private iconWidth:I

.field private left:I

.field private offsetX:I

.field private offsetY:I

.field private top:I

.field public translateX:F

.field public translateY:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->left:I

    iput p4, p0, Lorg/telegram/ui/Components/CombinedDrawable;->top:I

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->translateX:F

    iget v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->translateY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->center:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->fullSize:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->left:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lorg/telegram/ui/Components/CombinedDrawable;->top:I

    add-int/2addr v4, v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v3, v4, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->offsetX:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconHeight:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->top:I

    add-int/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->offsetY:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    add-int/2addr v4, v0

    add-int/2addr v2, v1

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCenter(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->center:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->both:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setCustomSize(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    iput p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    return-void
.end method

.method public setFullsize(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->fullSize:Z

    return-void
.end method

.method public setIconOffset(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->offsetX:I

    iput p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->offsetY:I

    return-void
.end method

.method public setIconSize(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    iput p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconHeight:I

    return-void
.end method

.method public setState([I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
