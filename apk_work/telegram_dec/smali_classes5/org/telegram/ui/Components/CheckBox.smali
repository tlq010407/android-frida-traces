.class public Lorg/telegram/ui/Components/CheckBox;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static backgroundPaint:Landroid/graphics/Paint;

.field private static eraser:Landroid/graphics/Paint;

.field private static eraser2:Landroid/graphics/Paint;

.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private attachedToWindow:Z

.field private bitmapCanvas:Landroid/graphics/Canvas;

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkBitmap:Landroid/graphics/Bitmap;

.field private checkCanvas:Landroid/graphics/Canvas;

.field private checkDrawable:Landroid/graphics/drawable/Drawable;

.field private checkOffset:I

.field private checkedText:Ljava/lang/String;

.field private color:I

.field private drawBackground:Z

.field private drawBitmap:Landroid/graphics/Bitmap;

.field private hasBorder:Z

.field private isCheckAnimation:Z

.field private isChecked:Z

.field private progress:F

.field private size:I

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->isCheckAnimation:Z

    const/16 v1, 0x16

    iput v1, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/CheckBox;->textPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/CheckBox;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/CheckBox;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/CheckBox;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/CheckBox;->isChecked:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/CheckBox;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkedText:Ljava/lang/String;

    return-object p1
.end method

.method private animateToCheckedState(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBox;->isCheckAnimation:Z

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

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lorg/telegram/ui/Components/CheckBox$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/CheckBox$1;-><init>(Lorg/telegram/ui/Components/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelCheckAnimator()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->attachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->attachedToWindow:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->drawBackground:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    add-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v4

    if-ltz v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    div-float v6, v3, v4

    :goto_0
    cmpg-float v7, v3, v4

    if-gez v7, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    sub-float v7, v3, v4

    div-float/2addr v7, v4

    :goto_1
    iget-boolean v4, p0, Lorg/telegram/ui/Components/CheckBox;->isCheckAnimation:Z

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    sub-float v3, v5, v3

    :goto_2
    const/high16 v4, 0x40000000    # 2.0f

    const v8, 0x3e4ccccd    # 0.2f

    cmpg-float v9, v3, v8

    if-gez v9, :cond_5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v3

    div-float/2addr v9, v8

    :goto_3
    sub-float/2addr v0, v9

    goto :goto_4

    :cond_5
    const v9, 0x3ecccccd    # 0.4f

    cmpg-float v9, v3, v9

    if-gez v9, :cond_6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v3, v8

    mul-float v10, v10, v3

    div-float/2addr v10, v8

    sub-float/2addr v9, v10

    goto :goto_3

    :cond_6
    :goto_4
    iget-boolean v3, p0, Lorg/telegram/ui/Components/CheckBox;->drawBackground:Z

    if-eqz v3, :cond_7

    sget-object v3, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    const/high16 v8, 0x44000000    # 512.0f

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v0, v9

    sget-object v10, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v0, v9

    sget-object v10, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7
    sget-object v3, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lorg/telegram/ui/Components/CheckBox;->color:I

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v3, p0, Lorg/telegram/ui/Components/CheckBox;->hasBorder:Z

    if-eqz v3, :cond_8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/CheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sget-object v9, Lorg/telegram/ui/Components/CheckBox;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v8, v0, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/CheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v6, v5, v6

    mul-float v0, v0, v6

    sget-object v6, Lorg/telegram/ui/Components/CheckBox;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v8, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkedText:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/CheckBox;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    iget-object v2, p0, Lorg/telegram/ui/Components/CheckBox;->checkCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lorg/telegram/ui/Components/CheckBox;->checkedText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    iget v6, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    const/16 v8, 0x28

    if-ne v6, v8, :cond_9

    const/high16 v6, 0x41e00000    # 28.0f

    goto :goto_5

    :cond_9
    const/high16 v6, 0x41a80000    # 21.0f

    :goto_5
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4, v0, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    iget-object v8, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lorg/telegram/ui/Components/CheckBox;->checkOffset:I

    add-int v10, v6, v9

    add-int/2addr v0, v4

    add-int/2addr v6, v2

    add-int/2addr v6, v9

    invoke-virtual {v8, v4, v10, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/CheckBox;->checkCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v4, 0x40200000    # 2.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v7

    mul-float v6, v6, v5

    sget-object v5, Lorg/telegram/ui/Components/CheckBox;->eraser2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.CheckBox"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBox;->isChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CheckBox;->color:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCheckColor(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCheckOffset(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkOffset:I

    return-void
.end method

.method public setChecked(IZZ)V
    .locals 2

    .line 0
    if-ltz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkedText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CheckBox;->isChecked:Z

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Components/CheckBox;->isChecked:Z

    iget-boolean p1, p0, Lorg/telegram/ui/Components/CheckBox;->attachedToWindow:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/CheckBox;->animateToCheckedState(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBox;->cancelCheckAnimator()V

    if-eqz p2, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CheckBox;->setProgress(F)V

    :goto_1
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox;->setChecked(IZZ)V

    return-void
.end method

.method public setColor(II)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/CheckBox;->color:I

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBox;->drawBackground:Z

    return-void
.end method

.method public setHasBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBox;->hasBorder:Z

    return-void
.end method

.method public setNum(I)V
    .locals 2

    if-ltz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkedText:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/CheckBox;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->textPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/CheckBox;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    :try_start_0
    iget p1, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    iget p1, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/CheckBox;->size:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBox;->checkBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBox;->checkCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
