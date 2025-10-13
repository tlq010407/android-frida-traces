.class public Lorg/telegram/ui/Components/RadioButton;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static checkedPaint:Landroid/graphics/Paint;

.field private static eraser:Landroid/graphics/Paint;

.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private attachedToWindow:Z

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkedColor:I

.field private color:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconColor:I

.field private isChecked:Z

.field private progress:F

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    sget-object p1, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/RadioButton;->eraser:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Lorg/telegram/ui/Components/RadioButton;->eraser:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    return-void
.end method

.method private animateToCheckedState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelCheckAnimator()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->attachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->attachedToWindow:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, v0, v3

    if-gtz v4, :cond_0

    sget-object v0, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    div-float/2addr v0, v3

    goto :goto_0

    :cond_0
    div-float/2addr v0, v3

    sub-float v0, v2, v0

    iget v4, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    sub-int/2addr v5, v4

    int-to-float v5, v5

    sub-float v6, v1, v0

    mul-float v5, v5, v6

    float-to-int v5, v5

    iget v7, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    sub-int/2addr v8, v7

    int-to-float v8, v8

    mul-float v8, v8, v6

    float-to-int v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    iget v10, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    sub-int/2addr v10, v9

    int-to-float v10, v10

    mul-float v10, v10, v6

    float-to-int v6, v10

    add-int/2addr v4, v5

    add-int/2addr v7, v8

    add-int/2addr v9, v6

    invoke-static {v4, v7, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    sget-object v5, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v8, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v9, v4

    const/16 v10, 0xff

    const/16 v11, 0x1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget v4, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v5, v0, v1

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sget-object v7, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/RadioButton;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    iget v5, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v4, v6

    sget-object v7, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    sub-float v0, v1, v0

    mul-float v4, v4, v0

    sget-object v0, Lorg/telegram/ui/Components/RadioButton;->eraser:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    iget v7, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    div-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    sub-float/2addr v4, v7

    mul-float v4, v4, v0

    add-float/2addr v6, v4

    sget-object v0, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    iget v3, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    iget v4, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    invoke-static {v0, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RadioButton;->iconColor:I

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/RadioButton;->icon:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iput v0, p0, Lorg/telegram/ui/Components/RadioButton;->iconColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RadioButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/RadioButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/RadioButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/Components/RadioButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v5, v6

    float-to-int v2, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->isChecked:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadioButton;->isChecked:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->attachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RadioButton;->animateToCheckedState(Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadioButton;->cancelCheckAnimator()V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RadioButton;->setProgress(F)V

    :goto_1
    return-void
.end method

.method public setCheckedColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColor(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    iput p2, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/RadioButton;->iconColor:I

    iput-object p1, p0, Lorg/telegram/ui/Components/RadioButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    return-void
.end method
