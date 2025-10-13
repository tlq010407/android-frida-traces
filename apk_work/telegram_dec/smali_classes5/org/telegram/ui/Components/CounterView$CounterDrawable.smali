.class public Lorg/telegram/ui/Components/CounterView$CounterDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/CounterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CounterDrawable"
.end annotation


# instance fields
.field public addServiceGradient:Z

.field animationType:I

.field private circleColor:I

.field private circleColorKey:I

.field public circlePaint:Landroid/graphics/Paint;

.field public circleScale:F

.field private countAnimationInLayout:Landroid/text/StaticLayout;

.field private countAnimationIncrement:Z

.field private countAnimationStableLayout:Landroid/text/StaticLayout;

.field private countAnimator:Landroid/animation/ValueAnimator;

.field public countChangeProgress:F

.field private countLayout:Landroid/text/StaticLayout;

.field private countLayoutWidth:F

.field countLeft:F

.field private countOldLayout:Landroid/text/StaticLayout;

.field private countWidth:I

.field private countWidthOld:I

.field currentCount:I

.field currentText:Ljava/lang/CharSequence;

.field private drawBackground:Z

.field public gravity:I

.field public horizontalPadding:F

.field lastH:I

.field private parent:Landroid/view/View;

.field public radius:F

.field public rectF:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private reverseAnimation:Z

.field public shortFormat:Z

.field private textColor:I

.field private textColorKey:I

.field public textPaint:Landroid/text/TextPaint;

.field type:I

.field public updateVisibility:Z

.field width:I

.field x:F


# direct methods
.method public static synthetic $r8$lambda$Q3XKFRUZsz7kSJnw0IIyy2Zxr-I(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lambda$setText$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButtonCounter:I

    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textColorKey:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButtonCounterBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleColorKey:I

    const/16 v0, 0x11

    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->gravity:I

    const/high16 v0, 0x41380000    # 11.5f

    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->type:I

    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawBackground:Z

    if-eqz p2, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/CounterView$CounterDrawable;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textColorKey:I

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/CounterView$CounterDrawable;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleColorKey:I

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->reverseAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countOldLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationStableLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/CounterView$CounterDrawable;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationInLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/CounterView$CounterDrawable;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    return-object p0
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {v1, v3, v2, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawBackground:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->addServiceGradient:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v3, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method private getStringOfCCount(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->shortFormat:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setText$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    iget-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateX(F)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawBackground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40b00000    # 5.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->gravity:I

    const/4 v3, 0x5

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->width:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->horizontalPadding:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_1

    div-float v1, p1, v4

    add-float/2addr v3, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :cond_1
    sub-float/2addr v2, p1

    iput v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v2, v1, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->width:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    div-float/2addr v1, v4

    float-to-int p1, v1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textColorKey:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getThemedColor(I)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleColorKey:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getThemedColor(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textColor:I

    if-eq v3, v0, :cond_0

    iput v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textColor:I

    iget-object v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleColor:I

    if-eq v3, v2, :cond_1

    iput v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_14

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_12

    if-ne v3, v1, :cond_2

    goto/16 :goto_b

    :cond_2
    mul-float v0, v0, v4

    cmpl-float v3, v0, v2

    if-lez v3, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    mul-float v5, v5, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    iget v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidthOld:I

    if-ne v5, v6, :cond_4

    int-to-float v5, v5

    goto :goto_0

    :cond_4
    int-to-float v5, v5

    mul-float v5, v5, v0

    int-to-float v6, v6

    sub-float v7, v2, v0

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    :goto_0
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    iget-boolean v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationIncrement:Z

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v6, :cond_6

    iget v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const v8, 0x3dcccccd    # 0.1f

    cmpg-float v9, v6, v7

    if-gtz v9, :cond_5

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    mul-float v6, v6, v4

    :goto_1
    invoke-virtual {v9, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float v6, v6, v8

    add-float/2addr v6, v2

    goto :goto_2

    :cond_5
    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float/2addr v6, v7

    mul-float v6, v6, v4

    sub-float v6, v2, v6

    goto :goto_1

    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v9, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    add-float/2addr v5, v9

    iget v10, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    sub-float/2addr v10, v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v7, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    mul-float v7, v7, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {v8, v9, v3, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    iget-object v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {p1, v4, v4, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    iget-boolean v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawBackground:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circlePaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v8, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v8, v8, v9

    invoke-virtual {p1, v7, v8, v8, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->addServiceGradient:Z

    if-eqz v6, :cond_8

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v7, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v7, v7, v8

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-boolean v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->reverseAnimation:Z

    iget-boolean v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationIncrement:Z

    if-eq v4, v6, :cond_a

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationInLayout:Landroid/text/StaticLayout;

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x41500000    # 13.0f

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    neg-int v9, v9

    :goto_5
    int-to-float v9, v9

    sub-float v10, v2, v0

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    mul-float v8, v0, v5

    float-to-int v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationInLayout:Landroid/text/StaticLayout;

    :goto_6
    invoke-virtual {v4, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    neg-int v9, v9

    :goto_7
    int-to-float v9, v9

    sub-float v10, v2, v0

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    mul-float v8, v0, v5

    float-to-int v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    goto :goto_6

    :cond_e
    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countOldLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v3

    if-eqz v1, :cond_f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    goto :goto_9

    :cond_f
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_9
    int-to-float v1, v1

    mul-float v1, v1, v0

    add-float/2addr v8, v1

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    sub-float/2addr v2, v0

    mul-float v2, v2, v5

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countOldLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationStableLayout:Landroid/text/StaticLayout;

    const/16 v1, 0xff

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationStableLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    :cond_12
    :goto_b
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    if-nez v3, :cond_13

    iget v2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    goto :goto_c

    :cond_13
    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    sub-float/2addr v2, v3

    :goto_c
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawInternal(Landroid/graphics/Canvas;)V

    goto :goto_a

    :cond_14
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->drawInternal(Landroid/graphics/Canvas;)V

    :goto_d
    return-void
.end method

.method public getCenterX()F
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLeft:F

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentWidth()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayoutWidth:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public getWidth()I
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public setCount(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getStringOfCCount(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p1, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setText(Ljava/lang/CharSequence;ZIZ)V

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    return-void
.end method

.method public setSize(II)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    iget v1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    :cond_1
    iput p2, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->width:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;ZIZ)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    const/4 v1, 0x2

    const/4 v11, 0x1

    iget-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-static {v9, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v12, 0x0

    if-lez v10, :cond_2

    iget-boolean v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateVisibility:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    sub-int v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x63

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move/from16 v2, p2

    :goto_0
    const/high16 v3, 0x41400000    # 12.0f

    const/4 v13, 0x0

    if-nez v2, :cond_8

    iput v10, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    iput-object v9, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentText:Ljava/lang/CharSequence;

    if-nez v10, :cond_5

    iget-boolean v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateVisibility:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    if-eqz v1, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    new-instance v10, Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v10, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lt v1, v11, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v13

    :cond_6
    iput v13, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayoutWidth:F

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void

    :cond_8
    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    iput v13, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Components/CounterView$CounterDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/CounterView$CounterDrawable;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable$1;-><init>(Lorg/telegram/ui/Components/CounterView$CounterDrawable;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    if-gtz v2, :cond_a

    iput v12, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xdc

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    :goto_1
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :cond_a
    if-nez v10, :cond_b

    iput v11, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    :goto_2
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    goto :goto_1

    :cond_b
    iput v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1ae

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v2, v4, :cond_e

    if-nez p4, :cond_e

    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_d

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-interface {v9, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_c

    new-instance v6, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v15, v6, v5, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v2, v6, v5, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_c
    new-instance v6, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v6}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v6, v5, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_5
    add-int/2addr v5, v11

    goto :goto_4

    :cond_d
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v5, Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v14, v5

    move-object/from16 v16, v6

    move/from16 v17, v1

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countOldLayout:Landroid/text/StaticLayout;

    new-instance v5, Landroid/text/StaticLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move/from16 v19, v1

    move-object/from16 v20, v7

    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationStableLayout:Landroid/text/StaticLayout;

    new-instance v4, Landroid/text/StaticLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v4, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationInLayout:Landroid/text/StaticLayout;

    goto :goto_6

    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    iput-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countOldLayout:Landroid/text/StaticLayout;

    :cond_f
    :goto_6
    iget v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    iput v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidthOld:I

    iget v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    if-le v10, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimationIncrement:Z

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_11
    if-lez v10, :cond_13

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    new-instance v14, Landroid/text/StaticLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v14, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lt v1, v11, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v13

    :cond_12
    iput v13, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countLayoutWidth:F

    :cond_13
    iput v10, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentCount:I

    iput-object v9, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->currentText:Ljava/lang/CharSequence;

    iget-object v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->parent:Landroid/view/View;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_14
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->type:I

    return-void
.end method

.method public updateBackgroundRect()V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const/high16 v1, 0x41b80000    # 23.0f

    const/high16 v2, 0x41300000    # 11.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->animationType:I

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    mul-float v0, v0, v3

    cmpl-float v5, v0, v4

    if-lez v5, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    iget v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    mul-float v6, v6, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    iget v6, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidthOld:I

    if-ne v3, v6, :cond_2

    int-to-float v0, v3

    goto :goto_0

    :cond_2
    int-to-float v3, v3

    mul-float v3, v3, v0

    int-to-float v6, v6

    sub-float/2addr v4, v0

    mul-float v6, v6, v4

    add-float v0, v3, v6

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    add-float/2addr v0, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v5

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateX(F)V

    iget v0, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->lastH:I

    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->radius:F

    mul-float v4, v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->rectF:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->x:F

    iget v5, p0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    return-void
.end method
