.class public Lorg/telegram/ui/Components/GroupCreateCheckBox;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static eraser:Landroid/graphics/Paint;

.field private static eraser2:Landroid/graphics/Paint;


# instance fields
.field private attachedToWindow:Z

.field private backgroundInnerPaint:Landroid/graphics/Paint;

.field private backgroundKey:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private bitmapCanvas:Landroid/graphics/Canvas;

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkKey:I

.field private checkPaint:Landroid/graphics/Paint;

.field private checkScale:F

.field private drawBitmap:Landroid/graphics/Bitmap;

.field private innerKey:I

.field private innerRadDiff:I

.field private isCheckAnimation:Z

.field private isChecked:Z

.field private progress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->isCheckAnimation:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkScale:F

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundKey:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkKey:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerKey:I

    sget-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundInnerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerRadDiff:I

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser2:Landroid/graphics/Paint;

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p1, 0x41c00000    # 24.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    return-void
.end method

.method private animateToCheckedState(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->isCheckAnimation:Z

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

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelCheckAnimator()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->progress:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->attachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->attachedToWindow:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->progress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser2:Landroid/graphics/Paint;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget v3, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->progress:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    div-float v6, v3, v5

    :goto_0
    cmpg-float v7, v3, v5

    if-gez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    sub-float v7, v3, v5

    div-float/2addr v7, v5

    :goto_1
    iget-boolean v5, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->isCheckAnimation:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    sub-float v3, v4, v3

    :goto_2
    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v8, 0x40000000    # 2.0f

    cmpg-float v9, v3, v5

    if-gez v9, :cond_4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v3

    div-float/2addr v9, v5

    goto :goto_3

    :cond_4
    const v9, 0x3ecccccd    # 0.4f

    cmpg-float v9, v3, v9

    if-gez v9, :cond_5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v3, v5

    mul-float v10, v10, v3

    div-float/2addr v10, v5

    sub-float/2addr v9, v10

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    cmpl-float v3, v7, v1

    if-eqz v3, :cond_6

    int-to-float v3, v0

    int-to-float v5, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, v0, v10

    int-to-float v10, v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v7

    add-float/2addr v10, v11

    sub-float/2addr v10, v9

    iget-object v11, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    iget v3, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerRadDiff:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    sub-float/2addr v3, v9

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    int-to-float v9, v0

    int-to-float v10, v2

    iget-object v11, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9, v10, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    sub-float v6, v4, v6

    mul-float v3, v3, v6

    sget-object v6, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v5, v9, v10, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v7

    iget v3, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkScale:F

    mul-float v6, v1, v3

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v7

    iget v3, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkScale:F

    mul-float v1, v1, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-float v1, v1, v1

    div-float/2addr v1, v8

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    int-to-float v1, v7

    int-to-float v9, v2

    sub-float v3, v1, v0

    sub-float v4, v9, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float v6, v6, v6

    div-float/2addr v6, v8

    float-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v7, v1

    int-to-float v1, v7

    add-float v3, v1, v0

    sub-float v4, v9, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public setCheckScale(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkScale:F

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->isChecked:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->isChecked:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->attachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->animateToCheckedState(Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->cancelCheckAnimator()V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setProgress(F)V

    :goto_1
    return-void
.end method

.method public setColorKeysOverrides(III)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkKey:I

    iput p2, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerKey:I

    iput p3, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundKey:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    return-void
.end method

.method public setInnerRadDiff(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerRadDiff:I

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundInnerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
