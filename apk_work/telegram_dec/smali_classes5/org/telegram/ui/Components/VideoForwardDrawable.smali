.class public Lorg/telegram/ui/Components/VideoForwardDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;
    }
.end annotation


# static fields
.field private static final playPath:[I


# instance fields
.field private animating:Z

.field private animationProgress:F

.field private clippingPath:Landroid/graphics/Path;

.field private delegate:Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;

.field private enterAnimationProgress:F

.field private isOneShootAnimation:Z

.field private isRound:Z

.field private lastAnimationTime:J

.field private lastClippingPath:I

.field private leftSide:Z

.field private paint:Landroid/graphics/Paint;

.field private path1:Landroid/graphics/Path;

.field private playScaleFactor:F

.field private showing:Z

.field private textPaint:Landroid/text/TextPaint;

.field private time:J

.field private timeStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/VideoForwardDrawable;->playPath:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x7
        0x1a
        0x10
        0xa
        0x19
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->path1:Landroid/graphics/Path;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->playScaleFactor:F

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isRound:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->textPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->textPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->path1:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/VideoForwardDrawable;->playPath:[I

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->path1:Landroid/graphics/Path;

    mul-int/lit8 v3, p1, 0x2

    if-nez p1, :cond_0

    aget v4, v0, v3

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-int/2addr v3, v1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_0
    aget v4, v0, v3

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-int/2addr v3, v1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->path1:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->delegate:Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addTime(J)V
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->time:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->time:J

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    long-to-int p1, v0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Seconds"

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->timeStr:Ljava/lang/String;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->leftSide:Z

    const/high16 v4, 0x41800000    # 16.0f

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isRound:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->clippingPath:Landroid/graphics/Path;

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->clippingPath:Landroid/graphics/Path;

    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v3, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v3, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->lastClippingPath:I

    if-eq v5, v3, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->clippingPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->clippingPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iput v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->lastClippingPath:I

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->clippingPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_1

    :cond_3
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isOneShootAnimation:Z

    const/high16 v5, 0x42a00000    # 80.0f

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    mul-float v8, v8, v5

    float-to-int v5, v8

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    :goto_2
    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_4
    iget v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    const v8, 0x3f333333    # 0.7f

    const v9, 0x3e99999a    # 0.3f

    cmpg-float v10, v3, v8

    if-gtz v10, :cond_5

    iget-object v8, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    div-float/2addr v3, v9

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    div-float/2addr v5, v9

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_2

    :cond_5
    iget-object v10, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    sub-float/2addr v3, v8

    div-float/2addr v3, v9

    sub-float v3, v7, v3

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    sub-float/2addr v5, v8

    div-float/2addr v5, v9

    sub-float v5, v7, v5

    goto :goto_2

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    iget-boolean v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->leftSide:Z

    const/4 v8, 0x1

    const/4 v9, -0x1

    if-eqz v5, :cond_6

    const/4 v5, -0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x1

    :goto_4
    mul-int v3, v3, v5

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->timeStr:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->getIntrinsicWidth()I

    move-result v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->leftSide:Z

    if-eqz v4, :cond_7

    const/4 v8, -0x1

    :cond_7
    mul-int v3, v3, v8

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v2

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->playScaleFactor:F

    int-to-float v1, v1

    int-to-float v3, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {p1, v0, v0, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->leftSide:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_9
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    const v1, 0x3f19999a    # 0.6f

    const/16 v2, 0xff

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3ecccccd    # 0.4f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_c

    cmpg-float v1, v0, v4

    if-gez v1, :cond_a

    mul-float v0, v0, v6

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    :cond_a
    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    sub-float v0, v7, v0

    mul-float v0, v0, v6

    float-to-int v0, v0

    :goto_5
    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isOneShootAnimation:Z

    if-nez v1, :cond_b

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->path1:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_c
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    cmpl-float v8, v1, v3

    if-ltz v8, :cond_f

    const v8, 0x3f4ccccd    # 0.8f

    cmpg-float v8, v1, v8

    if-gtz v8, :cond_f

    sub-float/2addr v1, v3

    cmpg-float v8, v1, v4

    if-gez v8, :cond_d

    mul-float v1, v1, v6

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6

    :cond_d
    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    sub-float v1, v7, v1

    mul-float v1, v1, v6

    float-to-int v1, v1

    :goto_6
    iget-boolean v8, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isOneShootAnimation:Z

    if-nez v8, :cond_e

    int-to-float v1, v1

    iget v8, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    mul-float v1, v1, v8

    float-to-int v1, v1

    :cond_e
    iget-object v8, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->path1:Landroid/graphics/Path;

    iget-object v8, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_f
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_12

    cmpg-float v1, v0, v7

    if-gtz v1, :cond_12

    sub-float/2addr v0, v4

    cmpg-float v1, v0, v4

    if-gez v1, :cond_10

    mul-float v0, v0, v6

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_7

    :cond_10
    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    sub-float v0, v7, v0

    mul-float v0, v0, v6

    float-to-int v0, v0

    :goto_7
    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isOneShootAnimation:Z

    if-nez v1, :cond_11

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->path1:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animating:Z

    if-eqz p1, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->lastAnimationTime:J

    sub-long v2, v0, v2

    const-wide/16 v8, 0x11

    cmp-long p1, v2, v8

    if-lez p1, :cond_13

    move-wide v2, v8

    :cond_13
    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->lastAnimationTime:J

    iget p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    cmpg-float v0, p1, v7

    if-gez v0, :cond_17

    long-to-float v0, v2

    const/high16 v1, 0x44480000    # 800.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isOneShootAnimation:Z

    cmpl-float p1, p1, v7

    if-nez v0, :cond_15

    if-ltz p1, :cond_16

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->showing:Z

    if-eqz p1, :cond_14

    iput v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    goto :goto_8

    :cond_14
    iput v7, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    goto :goto_8

    :cond_15
    if-ltz p1, :cond_16

    iput v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animating:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->time:J

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->timeStr:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->delegate:Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;

    if-eqz p1, :cond_16

    invoke-interface {p1}, Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;->onAnimationEnd()V

    :cond_16
    :goto_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->invalidate()V

    :cond_17
    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isOneShootAnimation:Z

    if-nez p1, :cond_1b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->showing:Z

    const v0, 0x3dda740e

    if-eqz p1, :cond_18

    iget v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    cmpl-float v2, v1, v7

    if-eqz v2, :cond_18

    add-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    :goto_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->invalidate()V

    goto :goto_a

    :cond_18
    if-nez p1, :cond_19

    iget p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    cmpl-float v1, p1, v5

    if-eqz v1, :cond_19

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    goto :goto_9

    :cond_19
    :goto_a
    iget p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    cmpg-float v0, p1, v5

    if-gez v0, :cond_1a

    iput v5, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    goto :goto_b

    :cond_1a
    cmpl-float p1, p1, v7

    if-lez p1, :cond_1b

    iput v7, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->enterAnimationProgress:F

    :cond_1b
    :goto_b
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animating:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->delegate:Lorg/telegram/ui/Components/VideoForwardDrawable$VideoForwardDrawableDelegate;

    return-void
.end method

.method public setLeftSide(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->leftSide:Z

    if-ne v0, p1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isOneShootAnimation:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eq v0, p1, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->time:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->timeStr:Ljava/lang/String;

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->leftSide:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->startAnimation()V

    return-void
.end method

.method public setOneShootAnimation(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isOneShootAnimation:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->isOneShootAnimation:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->timeStr:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->time:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    :cond_0
    return-void
.end method

.method public setPlayScaleFactor(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->playScaleFactor:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->invalidate()V

    return-void
.end method

.method public setShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->showing:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->invalidate()V

    return-void
.end method

.method public setTime(J)V
    .locals 3

    iput-wide p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->time:J

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    div-long/2addr p1, v0

    long-to-int p2, p1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Seconds"

    invoke-static {v0, p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->timeStr:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public startAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animating:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoForwardDrawable;->animationProgress:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
