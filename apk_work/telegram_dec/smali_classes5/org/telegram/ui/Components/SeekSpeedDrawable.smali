.class public Lorg/telegram/ui/Components/SeekSpeedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final animatedDirection:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedHintShown:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedShown:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedSpeed:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final arrowPaint:Landroid/graphics/Paint;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private direction:I

.field private final hideHintRunnable:Ljava/lang/Runnable;

.field private hideHintScheduled:Z

.field private final hintArrow:Landroid/graphics/Path;

.field private hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private final hintRect:Landroid/graphics/RectF;

.field private final hintText:Lorg/telegram/ui/Components/Text;

.field private invalidate:Ljava/lang/Runnable;

.field private final isPiP:Z

.field private final isRound:Z

.field private lastFrameTime:J

.field private lastSpeed:F

.field private final leftArrow:Landroid/graphics/Path;

.field private final rightArrow:Landroid/graphics/Path;

.field private showHint:Z

.field private shown:Z

.field private final speedRect:Landroid/graphics/RectF;

.field private final speedText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private t:F


# direct methods
.method public static synthetic $r8$lambda$f0pjZyLEFgUH2shZlKotGAsQi7I(Lorg/telegram/ui/Components/SeekSpeedDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;ZZ)V
    .locals 23

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->arrowPaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    iput-object v12, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintArrow:Landroid/graphics/Path;

    new-instance v0, Lorg/telegram/ui/Components/Text;

    sget v1, Lorg/telegram/messenger/R$string;->SeekSpeedHint:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v0, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintText:Lorg/telegram/ui/Components/Text;

    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    iput-object v13, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->leftArrow:Landroid/graphics/Path;

    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    iput-object v14, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->rightArrow:Landroid/graphics/Path;

    iput v10, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->direction:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    new-instance v0, Lorg/telegram/ui/Components/SeekSpeedDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/SeekSpeedDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SeekSpeedDrawable;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hideHintRunnable:Ljava/lang/Runnable;

    move-object/from16 v6, p1

    iput-object v6, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->invalidate:Ljava/lang/Runnable;

    iput-boolean v8, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->isPiP:Z

    iput-boolean v9, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->isRound:Z

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v22, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x168

    move-object v15, v0

    move-object/from16 v16, p1

    move-object/from16 v21, v22

    invoke-direct/range {v15 .. v21}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedShown:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v19, 0x140

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedDirection:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v19, 0xc8

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedSpeed:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v19, 0x168

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedHintShown:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v5, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    new-instance v15, Lorg/telegram/ui/Components/SeekSpeedDrawable$1;

    const/4 v4, 0x1

    const/16 v16, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    const/4 v10, 0x0

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/SeekSpeedDrawable$1;-><init>(Lorg/telegram/ui/Components/SeekSpeedDrawable;ZZZZLjava/lang/Runnable;)V

    iput-object v15, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setScaleProperty(F)V

    const-wide/16 v19, 0x28a

    const v21, 0x3fcccccd    # 1.6f

    const v16, 0x3ecccccd    # 0.4f

    move-object v0, v15

    invoke-virtual/range {v15 .. v22}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJFLandroid/animation/TimeInterpolator;)V

    const-string v1, "fonts/num.otf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v7, v1, v10}, Lorg/telegram/ui/Components/SeekSpeedDrawable;->setSpeed(FZ)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    new-instance v0, Landroid/graphics/CornerPathEffect;

    const v1, 0x3fd47ae1    # 1.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const v0, 0x410a8f5c    # 8.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x40ca8f5c    # 6.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v13, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v13}, Landroid/graphics/Path;->close()V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v14, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "seekSpeedHintShowed"

    invoke-interface {v0, v3, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v10, 0x1

    :cond_0
    iput-boolean v10, v7, Lorg/telegram/ui/Components/SeekSpeedDrawable;->showHint:Z

    const/high16 v0, 0x40d00000    # 6.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v12, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SeekSpeedDrawable;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->invalidate:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->showHint:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->invalidate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v2

    const/high16 v3, 0x42380000    # 46.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedShown:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->shown:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedDirection:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v5, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->direction:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-gtz v6, :cond_0

    return-void

    :cond_0
    iget-object v6, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedSpeed:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v8, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->lastSpeed:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->lastFrameTime:J

    sub-long v10, v8, v10

    long-to-float v10, v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    const v11, 0x3c83126f    # 0.016f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput-wide v8, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->lastFrameTime:J

    iget v8, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->t:F

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float v6, v6, v9

    mul-float v10, v10, v6

    add-float/2addr v8, v10

    iput v8, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->t:F

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->invalidate:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v2, v9

    sub-float/2addr v8, v2

    iget v10, v1, Landroid/graphics/Rect;->top:I

    const/high16 v11, 0x41100000    # 9.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v10, v12

    int-to-float v10, v10

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v2

    iget v13, v1, Landroid/graphics/Rect;->top:I

    const/high16 v14, 0x42140000    # 37.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v6, v8, v10, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v6, 0x3ecccccd    # 0.4f

    mul-float v8, v3, v6

    const v10, 0x3f19999a    # 0.6f

    add-float/2addr v10, v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f333333    # 0.7f

    mul-float v13, v13, v14

    const/high16 v14, 0x3f400000    # 0.75f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    mul-float v10, v10, v14

    iget-boolean v12, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->isPiP:Z

    if-eqz v12, :cond_1

    const/high16 v12, 0x42340000    # 45.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {v7, v12, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    iget-object v12, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v10, v10, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v13, v12, v3

    mul-float v10, v10, v13

    invoke-virtual {v7, v5, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v13, -0x1000000

    invoke-static {v13, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v9

    iget-object v15, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    div-float/2addr v15, v9

    iget-object v13, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v10, v15, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/RectF;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v8, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float/2addr v8, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    const/high16 v10, 0x41f00000    # 30.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    neg-float v13, v4

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v15

    sub-float v15, v12, v15

    mul-float v11, v11, v15

    sub-float/2addr v8, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {v7, v8, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget v8, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->t:F

    float-to-double v10, v8

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v8, v10

    div-float/2addr v8, v9

    add-float/2addr v8, v12

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    mul-float v11, v11, v3

    mul-float v8, v8, v14

    const v18, 0x3e4ccccd    # 0.2f

    add-float v8, v8, v18

    mul-float v11, v11, v8

    const/4 v8, -0x1

    invoke-static {v8, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->leftArrow:Landroid/graphics/Path;

    iget-object v11, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const v10, 0x412a8f5c    # 10.66f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v11, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v11, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->t:F

    const v19, 0x3e2e147b    # 0.17f

    add-float v11, v11, v19

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    div-float/2addr v10, v9

    add-float/2addr v10, v12

    iget-object v11, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    mul-float v13, v13, v3

    mul-float v10, v10, v14

    add-float v10, v10, v18

    mul-float v13, v13, v10

    invoke-static {v8, v13}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->leftArrow:Landroid/graphics/Path;

    iget-object v11, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v10, 0x41e00000    # 28.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    mul-float v10, v10, v4

    invoke-virtual {v7, v10, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float v13, v3, v11

    float-to-int v13, v13

    invoke-virtual {v10, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v10, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    add-float/2addr v10, v2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v10, v13

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    sub-float v13, v12, v13

    mul-float v2, v2, v13

    add-float/2addr v10, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v7, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->t:F

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    div-float/2addr v2, v9

    add-float/2addr v2, v12

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v7, v7, v3

    mul-float v2, v2, v14

    add-float v2, v2, v18

    mul-float v7, v7, v2

    invoke-static {v8, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->rightArrow:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->arrowPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual {v7, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const v2, 0x412a8f5c    # 10.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->t:F

    sub-float v2, v2, v19

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v2, v10

    div-float/2addr v2, v9

    add-float/2addr v2, v12

    iget-object v10, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v4, v4, v3

    mul-float v2, v2, v14

    add-float v2, v2, v18

    mul-float v4, v4, v2

    invoke-static {v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->rightArrow:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedHintShown:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->showHint:Z

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->shown:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    cmpl-float v2, v10, v5

    if-lez v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/high16 v4, 0x41c00000    # 24.0f

    if-nez v2, :cond_3

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v5, Lorg/telegram/messenger/R$raw;->seek_speed_hint:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move/from16 v17, v5

    invoke-direct/range {v16 .. v22}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v5, Lorg/telegram/ui/Components/SeekSpeedDrawable$2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/SeekSpeedDrawable$2;-><init>(Lorg/telegram/ui/Components/SeekSpeedDrawable;)V

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    const/high16 v5, 0x42580000    # 54.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v11, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v2, v9

    sub-float/2addr v12, v2

    iget-object v9, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    iget v15, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float v9, v9, v3

    add-float/2addr v15, v9

    const/high16 v9, 0x41300000    # 11.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v15, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedRect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v3

    add-float/2addr v6, v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v6, v2

    add-float/2addr v6, v5

    invoke-virtual {v11, v12, v15, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v1, v1, v10

    add-float/2addr v1, v14

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->backgroundPaint:Landroid/graphics/Paint;

    const v2, 0x3ecccccd    # 0.4f

    mul-float v6, v10, v2

    const/high16 v2, -0x1000000

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintArrow:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    const/high16 v6, 0x420c0000    # 35.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v11, v10, v2

    float-to-int v2, v11

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->restart(Z)Z

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintText:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x421c0000    # 39.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const/4 v5, -0x1

    move-object/from16 v2, p1

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isShown()Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->shown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedShown:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setShown(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->shown:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedShown:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->invalidate:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    iget-object p2, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->showHint:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->restart()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSpeed(FZ)V
    .locals 6

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->lastSpeed:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    mul-float v2, v2, p1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    cmpl-double v5, v3, v1

    if-eqz v5, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->speedText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "%.1fx"

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iput p1, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->lastSpeed:F

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->direction:I

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->animatedDirection:Lorg/telegram/ui/Components/AnimatedFloat;

    int-to-float v1, v1

    invoke-virtual {p2, v1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->invalidate:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    iget-boolean p2, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->showHint:Z

    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40400000    # 3.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hideHintScheduled:Z

    if-nez p1, :cond_3

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hideHintScheduled:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekSpeedDrawable;->hideHintRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x9c4

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "seekSpeedHintShowed"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method
