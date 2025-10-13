.class public abstract Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsReactionsSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsSlider"
.end annotation


# instance fields
.field public aprogress:F

.field private final arc:Landroid/graphics/RectF;

.field private final counterImage:Landroid/graphics/drawable/Drawable;

.field private final counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private currentTop:J

.field public drawCounterImage:Z

.field private final gradient:Landroid/graphics/LinearGradient;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private lastX:F

.field private lastY:F

.field private final overTop:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final overTopText:Lorg/telegram/ui/Components/AnimatedFloat;

.field private pointerId:I

.field private pressTime:J

.field public progress:F

.field private progressAnimator:Landroid/animation/ValueAnimator;

.field private final sliderCirclePaint:Landroid/graphics/Paint;

.field private final sliderCircleRect:Landroid/graphics/RectF;

.field private final sliderInnerPaint:Landroid/graphics/Paint;

.field private final sliderInnerPath:Landroid/graphics/Path;

.field private final sliderInnerRect:Landroid/graphics/RectF;

.field private final sliderPaint:Landroid/graphics/Paint;

.field private final sliderParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field private final sliderPath:Landroid/graphics/Path;

.field private final sliderRect:Landroid/graphics/RectF;

.field private final starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

.field public steps:I

.field public stops:[I

.field private final textBackgroundPaint:Landroid/graphics/Paint;

.field private final textParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field private final textPath:Landroid/graphics/Path;

.field private final textRect:Landroid/graphics/RectF;

.field private final topPaint:Landroid/graphics/Paint;

.field private final topText:Lorg/telegram/ui/Components/Text;

.field private tracking:Z


# direct methods
.method public static synthetic $r8$lambda$j1JkCgrGyGLW3NAaDgjHLnt_Xfg(Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->lambda$animateProgressTo$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderCirclePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    new-instance v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/4 v2, 0x2

    const/16 v4, 0x1e

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    new-instance v0, Landroid/graphics/LinearGradient;

    const v4, -0x1153f3

    const v5, -0x62cea

    filled-new-array {v4, v5}, [I

    move-result-object v13

    const/4 v6, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    new-array v14, v2, [F

    fill-array-data v14, :array_0

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v11, 0x437f0000    # 255.0f

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->gradient:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->gradientMatrix:Landroid/graphics/Matrix;

    iput-boolean v1, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->drawCounterImage:Z

    new-instance v8, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v8, v3, v1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v8, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-array v0, v1, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/Components/Text;

    sget v1, Lorg/telegram/messenger/R$string;->StarsReactionTop:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fonts/rcondensedbold.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topText:Lorg/telegram/ui/Components/Text;

    new-instance v10, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v11, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, v10

    move-object/from16 v1, p0

    const/4 v12, 0x0

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v10, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->overTop:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v10, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v10, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->overTopText:Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v0, -0x1

    iput-wide v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->currentTop:J

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderCircleRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    iput v12, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterImage:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const-string v0, "fonts/num.otf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->tracking:Z

    return p0
.end method

.method private animateProgressTo(F)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    aput p1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider$1;-><init>(Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;F)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x140

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progressAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue()I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue(F)I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->onValueChanged(I)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue(F)I

    move-result p1

    int-to-long v2, p1

    const/16 p1, 0x2c

    invoke-static {v2, v3, p1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private synthetic lambda$animateProgressTo$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->gradientMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->gradientMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->gradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getProgress(I)F

    move-result v11

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    const/high16 v13, 0x41700000    # 15.0f

    mul-float v2, v2, v13

    add-float/2addr v2, v9

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setSpeed(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    const v3, 0x3e19999a    # 0.15f

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setVisible(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const v14, -0xa46f2

    invoke-virtual {v1, v7, v14}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    iget-wide v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->currentTop:J

    const/high16 v15, 0x41600000    # 14.0f

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/high16 v18, 0x41200000    # 10.0f

    const/high16 v19, 0x41800000    # 16.0f

    const/high16 v20, 0x41100000    # 9.0f

    const-wide/16 v21, -0x1

    cmp-long v3, v1, v21

    if-eqz v3, :cond_3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getProgress(I)F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_3

    iget-wide v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->currentTop:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getProgress(I)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-wide v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->currentTop:J

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getProgress(I)F

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v3

    mul-float v2, v2, v3

    add-float v4, v1, v2

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->overTop:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->overTopText:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v6, v13

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    cmpg-float v6, v6, v13

    if-gez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    add-float/2addr v3, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    sub-float v2, v4, v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    sub-float/2addr v2, v3

    :goto_2
    move v13, v2

    goto :goto_3

    :cond_2
    add-float/2addr v2, v4

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topPaint:Landroid/graphics/Paint;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topPaint:Landroid/graphics/Paint;

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v14, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v5, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topText:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const v5, -0xa46f2

    const v6, 0x3f19999a    # 0.6f

    move-object/from16 v2, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderPath:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/4 v13, -0x1

    invoke-virtual {v1, v7, v13}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    iget-wide v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->currentTop:J

    cmp-long v3, v1, v21

    if-eqz v3, :cond_7

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getProgress(I)F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_7

    iget-wide v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->currentTop:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getProgress(I)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-wide v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->currentTop:J

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getProgress(I)F

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v3

    mul-float v2, v2, v3

    add-float v4, v1, v2

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->overTop:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->overTopText:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v6, v15

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    cmpg-float v6, v6, v15

    if-gez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    add-float/2addr v3, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_6

    sub-float v2, v4, v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    sub-float/2addr v2, v3

    :goto_6
    move v15, v2

    goto :goto_7

    :cond_6
    add-float/2addr v2, v4

    goto :goto_6

    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topPaint:Landroid/graphics/Paint;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v5, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->topText:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const/4 v5, -0x1

    const/high16 v6, 0x3f400000    # 0.75f

    move-object/from16 v2, p1

    move v3, v15

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderCircleRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v5, v15

    iget-object v15, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderRect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v6

    add-float/2addr v15, v12

    invoke-virtual {v1, v2, v4, v5, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderCircleRect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderCircleRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v2, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderCircleRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderCircleRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v5, v12

    invoke-static {v4, v5, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    div-float v5, v11, v1

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v5

    sub-float v11, v9, v11

    div-float/2addr v11, v1

    invoke-static {v11}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v2

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float v5, v2, v6

    sub-float v5, v1, v5

    iget-object v11, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v12, v3

    invoke-static {v5, v11, v12}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget-object v11, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    const/high16 v12, 0x41a80000    # 21.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v11, v15

    sub-float/2addr v11, v4

    add-float/2addr v2, v3

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v4, v12

    invoke-virtual {v5, v3, v11, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v3, v2, v6

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v5, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v11, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v11, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    iget-object v11, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->right:F

    iget v11, v11, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v12, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    iget v11, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    iget v12, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->aprogress:F

    sub-float/2addr v11, v12

    const/high16 v12, -0x40800000    # -1.0f

    invoke-static {v11, v9, v12}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v11

    const/high16 v12, 0x42700000    # 60.0f

    mul-float v11, v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    iget-object v14, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v10, v14, Landroid/graphics/RectF;->left:F

    iget v14, v14, Landroid/graphics/RectF;->top:F

    add-float v9, v10, v2

    add-float v15, v14, v2

    invoke-virtual {v13, v10, v14, v9, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    const/high16 v13, -0x3ccc0000    # -180.0f

    const/high16 v14, 0x42b40000    # 90.0f

    invoke-virtual {v9, v10, v13, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v13, v10, Landroid/graphics/RectF;->right:F

    sub-float v15, v13, v2

    iget v10, v10, Landroid/graphics/RectF;->top:F

    add-float v6, v10, v2

    invoke-virtual {v9, v15, v10, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-virtual {v6, v9, v10, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->right:F

    sub-float v13, v10, v2

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float v15, v9, v2

    invoke-virtual {v6, v13, v15, v10, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float v6, v5, v6

    div-float/2addr v6, v3

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    iget-object v10, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v14

    const-wide v24, 0x3feb333340000000L    # 0.8500000238418579

    mul-double v14, v14, v24

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    div-double v14, v14, v26

    const-wide v28, 0x4066800000000000L    # 180.0

    mul-double v30, v14, v28

    const-wide v32, 0x4056800000000000L    # 90.0

    const-wide/16 v34, 0x0

    invoke-static/range {v30 .. v35}, Lorg/telegram/messenger/Utilities;->clamp(DDD)D

    move-result-wide v14

    double-to-float v6, v14

    invoke-virtual {v9, v10, v8, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->right:F

    const v9, 0x3f333333    # 0.7f

    mul-float v9, v9, v2

    sub-float/2addr v8, v9

    cmpg-float v8, v4, v8

    if-gez v8, :cond_8

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    const/high16 v8, 0x40000000    # 2.0f

    add-float v10, v1, v8

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v8, v15

    invoke-virtual {v6, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8

    :cond_8
    const/high16 v14, 0x41000000    # 8.0f

    :goto_8
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v8, v10

    invoke-virtual {v6, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v9

    cmpl-float v5, v5, v8

    if-lez v5, :cond_9

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    const/high16 v8, 0x40000000    # 2.0f

    sub-float v8, v1, v8

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_9
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v9, v6, v2

    add-float/2addr v2, v8

    invoke-virtual {v5, v8, v9, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double v2, v2, v24

    div-double v2, v2, v26

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double v23, v2, v4

    const-wide v25, 0x4056800000000000L    # 90.0

    const-wide/16 v27, 0x0

    invoke-static/range {v23 .. v28}, Lorg/telegram/messenger/Utilities;->clamp(DDD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->arc:Landroid/graphics/RectF;

    const/high16 v5, 0x43340000    # 180.0f

    sub-float/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    const/high16 v4, 0x41700000    # 15.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setSpeed(F)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const v3, -0xa46f2

    invoke-virtual {v2, v7, v3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v11, v1, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    iget v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->aprogress:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    iget v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->aprogress:F

    iget v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->aprogress:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textBackgroundPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textPath:Landroid/graphics/Path;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    neg-float v2, v11

    invoke-virtual {v7, v2, v1, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/4 v2, -0x1

    invoke-virtual {v1, v7, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterImage:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x42040000    # 33.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->drawCounterImage:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->textRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v4, v5, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->lastY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->pointerId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->pressTime:J

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->tracking:Z

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    const/high16 v4, 0x3fc00000    # 1.5f

    if-ne v0, v3, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->pointerId:I

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->lastX:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->lastY:F

    sub-float/2addr v2, v3

    iget-boolean v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->tracking:Z

    if-nez v3, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->tracking:Z

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->tracking:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->onValueChanged(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->updateText(Z)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->lastX:F

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_7

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->tracking:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->pointerId:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->lastX:F

    iget v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->lastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v0, v3, v5, v6}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->pressTime:J

    sub-long/2addr v5, v7

    long-to-float v0, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result p1

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->currentTop:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    long-to-int v0, v3

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getProgress(I)F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3d0f5c29    # 0.035f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->currentTop:J

    long-to-int p1, v3

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getProgress(I)F

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result p1

    :cond_6
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->animateProgressTo(F)V

    goto/16 :goto_0

    :cond_7
    :goto_1
    return v1
.end method

.method public getProgress()F
    .locals 1

    .line 0
    iget v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    return v0
.end method

.method public getProgress(I)F
    .locals 5

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->stops:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v3, v2, v1

    if-gt p1, v3, :cond_0

    sub-int/2addr v1, v0

    aget v4, v2, v1

    sub-int/2addr p1, v4

    int-to-float p1, p1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr p1, v3

    int-to-float v1, v1

    add-float/2addr v1, p1

    array-length p1, v2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getValue()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue(F)I

    move-result v0

    return v0
.end method

.method public getValue(F)I
    .locals 4

    .line 0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->stops:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->stops:[I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    return p1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->stops:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    aget v2, v0, v1

    int-to-float v3, v2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float p1, p1, v0

    add-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x435c0000    # 220.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    const/high16 p2, 0x41600000    # 14.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x43070000    # 135.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerRect:Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, v0

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderInnerPaint:Landroid/graphics/Paint;

    const p2, 0x26efad0d

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderPaint:Landroid/graphics/Paint;

    const p2, -0x1052f3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->sliderCirclePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected abstract onValueChanged(I)V
.end method

.method public setStarsTop(J)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->currentTop:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public varargs setSteps(I[I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->steps:I

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->stops:[I

    return-void
.end method

.method public setValue(I)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->setValue(IZ)V

    return-void
.end method

.method public setValue(IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getProgress(I)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->progress:F

    if-nez p2, :cond_0

    iput p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->aprogress:F

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->updateText(Z)V

    return-void
.end method

.method public updateText(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->getValue()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x2c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->starRef:[Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$StarsSlider;->counterText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

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
