.class public Lorg/telegram/ui/Stories/recorder/SliderView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final clipPath:Landroid/graphics/Path;

.field private final currentType:I

.field public fixWidth:I

.field private h:I

.field private lastTouchX:F

.field private maxVolume:F

.field private minVolume:F

.field private onValueChange:Lorg/telegram/messenger/Utilities$Callback;

.field private pressTime:J

.field private r:F

.field private final speaker1Paint:Landroid/graphics/Paint;

.field private final speaker1Path:Landroid/graphics/Path;

.field private final speaker2Paint:Landroid/graphics/Paint;

.field private final speaker2Path:Landroid/graphics/Path;

.field private final speakerWave1Paint:Landroid/graphics/Paint;

.field private final speakerWave1Path:Landroid/graphics/Path;

.field private final speakerWave2Paint:Landroid/graphics/Paint;

.field private final speakerWave2Path:Landroid/graphics/Path;

.field private final text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private final text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private final textPaint:Landroid/text/TextPaint;

.field private value:F

.field private valueAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private valueIsAnimated:Z

.field private w:I

.field private final wave1Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final wave2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->minVolume:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->maxVolume:F

    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->valueAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v9, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->whitePaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v12, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Paint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker2Paint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave1Paint:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v15, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave2Paint:Landroid/graphics/Paint;

    new-instance v6, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v4, 0x0

    invoke-direct {v6, v4, v11, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v6, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->clipPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker2Path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave1Path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave2Path:Landroid/graphics/Path;

    new-instance v5, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v16, 0x15e

    move-object v0, v5

    move-object v11, v5

    move-wide/from16 v4, v16

    move-object/from16 v16, v9

    move-object v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->wave1Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->wave2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->textPaint:Landroid/text/TextPaint;

    iput v8, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->currentType:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const-wide/16 v4, 0x28

    const v1, 0x3e99999a    # 0.3f

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v11, -0x1

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    if-nez v8, :cond_0

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const/4 v0, 0x0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v15, v11}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    new-instance v12, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v12, v2, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v12, v7, Lorg/telegram/ui/Stories/recorder/SliderView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x28

    const v1, 0x3e99999a    # 0.3f

    move-object v0, v12

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v12, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->FlashWarmth:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->FlashIntensity:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v8, v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->WallpaperDimming:I

    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, ""

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private updateText(F)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->valueIsAnimated:Z

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x140

    :goto_0
    move-wide v6, v3

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x28

    goto :goto_0

    :goto_1
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->currentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->getColor(F)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public animateValueTo(F)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->valueIsAnimated:Z

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->minVolume:F

    sub-float v1, p1, v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->maxVolume:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/SliderView;->updateText(F)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->h:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->clipPath:Landroid/graphics/Path;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->r:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->valueIsAnimated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->valueAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    int-to-float v7, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->h:I

    int-to-float v8, v1

    const/16 v9, 0xff

    const/16 v10, 0x1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->currentType:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    :goto_1
    iget v7, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->h:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v4, 0x414547ae    # 12.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->h:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    const/high16 v5, 0x42de0000    # 111.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_1

    :goto_2
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->currentType:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Path:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker2Path:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->maxVolume:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->minVolume:F

    sub-float/2addr v1, v4

    cmpl-float v5, v1, v3

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->wave1Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmpl-double v10, v4, v6

    if-lez v10, :cond_3

    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const v6, 0x3ea8f5c3    # 0.33f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    neg-float v6, v6

    sub-float v7, v2, v1

    mul-float v6, v6, v7

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave1Paint:Landroid/graphics/Paint;

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v1, v1, v7

    float-to-int v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave1Path:Landroid/graphics/Path;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->wave2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v4, v10

    if-lez v6, :cond_4

    const/4 v8, 0x1

    :cond_4
    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const v4, 0x3f28f5c3    # 0.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    sub-float/2addr v2, v1

    mul-float v4, v4, v2

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave2Paint:Landroid/graphics/Paint;

    mul-float v1, v1, v7

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave2Path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    int-to-float v1, v1

    mul-float v5, v1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->h:I

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->whitePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->pressTime:J

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->valueIsAnimated:Z

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_a

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->maxVolume:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->minVolume:F

    sub-float/2addr v2, v4

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    mul-float v6, v6, v2

    add-float/2addr v4, v6

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->pressTime:J

    sub-long/2addr v6, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v8, p1

    cmp-long p1, v6, v8

    if-gez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->valueAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    int-to-float p1, p1

    div-float p1, v0, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->valueIsAnimated:Z

    goto :goto_1

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->lastTouchX:F

    sub-float v2, v0, v2

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    add-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->valueIsAnimated:Z

    const/4 v1, 0x1

    :goto_1
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->maxVolume:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->minVolume:F

    sub-float v6, p1, v2

    cmpl-float v7, v6, v5

    if-eqz v7, :cond_5

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    mul-float v5, v5, v6

    add-float/2addr v5, v2

    :cond_5
    if-eqz v1, :cond_9

    cmpg-float v1, v5, v2

    if-gtz v1, :cond_6

    cmpl-float v1, v4, v5

    if-gtz v1, :cond_7

    :cond_6
    cmpl-float p1, v5, p1

    if-ltz p1, :cond_8

    cmpg-float p1, v4, v5

    if-gez p1, :cond_8

    :cond_7
    const/4 p1, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_8
    const/high16 p1, 0x40a00000    # 5.0f

    mul-float v4, v4, p1

    float-to-double v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    mul-float p1, p1, v5

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double p1, v1, v6

    if-eqz p1, :cond_9

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    :cond_9
    :goto_2
    invoke-direct {p0, v5}, Lorg/telegram/ui/Stories/recorder/SliderView;->updateText(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->onValueChange:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_a

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_a
    :goto_3
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->lastTouchX:F

    return v3
.end method

.method protected onMeasure(II)V
    .locals 9

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->currentType:I

    const/4 v0, 0x3

    const/high16 v1, 0x41000000    # 8.0f

    if-ne p2, v0, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->r:F

    goto :goto_1

    :cond_0
    const p2, 0x40ca8f5c    # 6.33f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->textPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->fixWidth:I

    const/high16 v0, 0x42400000    # 48.0f

    if-lez p2, :cond_1

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    :goto_3
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->h:I

    goto :goto_4

    :cond_1
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->currentType:I

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->textPaint:Landroid/text/TextPaint;

    sget v2, Lorg/telegram/messenger/R$string;->StoryAudioRemove:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    goto :goto_2

    :cond_2
    const/high16 p1, 0x433e0000    # 190.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    const/high16 p1, 0x42300000    # 44.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_3

    :goto_4
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->w:I

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->h:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->currentType:I

    if-nez p1, :cond_3

    const/high16 p1, 0x41c80000    # 25.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->h:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    const v4, 0x3faa3d71    # 1.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Path:Landroid/graphics/Path;

    const v3, 0x410a8f5c    # 8.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, p1, v4

    const v5, 0x4039999a    # 2.9f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    sub-float v6, p2, v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Path:Landroid/graphics/Path;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    sub-float v6, p1, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float v7, p2, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Path:Landroid/graphics/Path;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, p1, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v6, p2

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v3, p1, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker1Path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker2Paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    const v4, 0x402a3d71    # 2.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker2Path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker2Path:Landroid/graphics/Path;

    const/high16 v3, 0x40f00000    # 7.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float v3, p1, v3

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker2Path:Landroid/graphics/Path;

    const v3, 0x40ea8f5c    # 7.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, p2, v4

    invoke-virtual {v2, p1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker2Path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speaker2Path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave1Path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, p1, v4

    const v5, 0x408a8f5c    # 4.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, p2, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float v7, p1, v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {v2, v4, v6, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave1Path:Landroid/graphics/Path;

    const/high16 v5, -0x3d900000    # -60.0f

    const/high16 v6, 0x42f00000    # 120.0f

    invoke-virtual {v4, v2, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave1Path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave2Paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave2Paint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave2Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr p1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    invoke-virtual {v2, v0, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->speakerWave2Path:Landroid/graphics/Path;

    const/high16 p2, -0x3d740000    # -70.0f

    const/high16 v0, 0x430c0000    # 140.0f

    invoke-virtual {p1, v2, p2, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_3
    return-void
.end method

.method public setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->minVolume:F

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->maxVolume:F

    return-object p0
.end method

.method public setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->onValueChange:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method public setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->minVolume:F

    sub-float v1, p1, v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->maxVolume:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->value:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->valueAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/SliderView;->updateText(F)V

    return-object p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SliderView;->text2:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
