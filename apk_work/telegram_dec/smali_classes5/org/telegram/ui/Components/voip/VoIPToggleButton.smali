.class public Lorg/telegram/ui/Components/voip/VoIPToggleButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private animateBackground:Z

.field animateToBackgroundColor:I

.field public animationDelay:I

.field private backgroundCheck1:I

.field private backgroundCheck2:I

.field backgroundColor:I

.field private bitmapPaint:Landroid/graphics/Paint;

.field private checkAnimator:Landroid/animation/ValueAnimator;

.field private checkable:Z

.field private checkableForAccessibility:Z

.field private checked:Z

.field private checkedProgress:F

.field circlePaint:Landroid/graphics/Paint;

.field private crossOffset:F

.field private crossPaint:Landroid/graphics/Paint;

.field private crossProgress:F

.field currentBackgroundColor:I

.field currentIconColor:I

.field currentIconRes:I

.field currentText:Ljava/lang/String;

.field private drawBackground:Z

.field private drawCross:Z

.field icon:[Landroid/graphics/drawable/Drawable;

.field private iconChangeColor:Z

.field private pressedScale:F

.field private pressedScaleAnimator:Landroid/animation/ValueAnimator;

.field private radius:F

.field replaceAnimator:Landroid/animation/ValueAnimator;

.field private replaceColorFrom:I

.field replaceProgress:F

.field rippleDrawable:Landroid/graphics/drawable/Drawable;

.field textLayoutContainer:Landroid/widget/FrameLayout;

.field textView:[Landroid/widget/TextView;

.field private xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$Dh0lprCeNQ4A7Wwg3OnwBBlV_yw(Lorg/telegram/ui/Components/voip/VoIPToggleButton;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->lambda$setData$1(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LHV-BRsfkg8ePZAAg_eXxZyuiL8(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->lambda$setPressedBtn$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jE7JEw5vVkeG7U3fo6FTl_C5YyU(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->lambda$setChecked$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/high16 v0, 0x42500000    # 52.0f

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;-><init>(Landroid/content/Context;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 13

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->circlePaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawBackground:Z

    const/4 v0, 0x2

    new-array v2, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    new-array v2, v0, [Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->xRefPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->pressedScale:F

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    const/high16 v5, 0x40c00000    # 6.0f

    add-float v10, p2, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->xRefPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->xRefPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->xRefPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/voip/VoIPToggleButton;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkedProgress:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checked:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck1:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck2:I

    return p0
.end method

.method private synthetic lambda$setChecked$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkedProgress:F

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck1:I

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck2:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    return-void
.end method

.method private synthetic lambda$setData$1(ZLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    sub-float v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    sub-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setPressedBtn$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->pressedScale:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->pressedScale:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v2, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animateBackground:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->circlePaint:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundColor:I

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animateToBackgroundColor:I

    invoke-static {v4, v5, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->circlePaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v1, v9

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float v11, v1, v9

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    iget-boolean v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawBackground:Z

    if-eqz v3, :cond_1

    iget v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v11, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    if-nez v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x1000000

    invoke-static {v3, v12, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    sub-float v4, v10, v1

    float-to-int v4, v4

    sub-float v5, v11, v1

    float-to-int v5, v5

    add-float v6, v10, v1

    float-to-int v6, v6

    add-float/2addr v1, v11

    float-to-int v1, v1

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconRes:I

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawCross:Z

    const/16 v3, 0xff

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    if-nez v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    goto/16 :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    const/4 v6, 0x1

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_5

    iget-boolean v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x2

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-ge v1, v5, :cond_11

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    if-eqz v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    cmpl-float v7, v5, v2

    if-eqz v7, :cond_7

    iget-boolean v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-nez v7, :cond_7

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v14, v7, v12

    if-eqz v14, :cond_7

    aget-object v6, v7, v6

    if-eqz v6, :cond_7

    if-nez v1, :cond_6

    sub-float v5, v4, v5

    :cond_6
    invoke-virtual {v8, v5, v5, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v1

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v5, v5, v7

    float-to-int v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4

    :cond_7
    iget-boolean v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-eqz v6, :cond_8

    iget v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceColorFrom:I

    iget v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    invoke-static {v6, v7, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v1

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v5, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    sub-float v6, v10, v6

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/2addr v7, v13

    int-to-float v7, v7

    sub-float v7, v11, v7

    float-to-int v7, v7

    iget-object v14, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v14, v14, v1

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    div-int/2addr v14, v13

    int-to-float v14, v14

    add-float/2addr v14, v10

    float-to-int v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v15, v15, v1

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    div-int/2addr v15, v13

    int-to-float v15, v15

    add-float/2addr v15, v11

    float-to-int v15, v15

    invoke-virtual {v5, v6, v7, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_5
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-eqz v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceColorFrom:I

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    iget v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    invoke-static {v1, v5, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v12

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    cmpl-float v5, v1, v2

    if-eqz v5, :cond_c

    iget-boolean v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-eqz v5, :cond_c

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceColorFrom:I

    iget v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    invoke-static {v5, v6, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v12

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawCross:Z

    const v3, 0x3da3d70a    # 0.08f

    if-eqz v1, :cond_d

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    cmpg-float v6, v5, v4

    if-gez v6, :cond_d

    add-float/2addr v5, v3

    iput v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    cmpl-float v1, v5, v4

    if-lez v1, :cond_e

    iput v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    goto :goto_6

    :cond_d
    if-nez v1, :cond_f

    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    iput v2, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    goto :goto_6

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_f
    :goto_6
    iget v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    sub-float v1, v10, v1

    float-to-int v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/2addr v2, v13

    int-to-float v2, v2

    sub-float v2, v11, v2

    float-to-int v2, v2

    int-to-float v1, v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v1, v5

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossOffset:F

    add-float v14, v1, v5

    int-to-float v1, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float v15, v1, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v14, v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    mul-float v3, v3, v5

    add-float v16, v1, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v1, v1, v2

    add-float v17, v15, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    sub-float v2, v10, v2

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v13

    int-to-float v3, v3

    sub-float v3, v11, v3

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, v13

    int-to-float v4, v4

    add-float/2addr v10, v4

    float-to-int v4, v10

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v12

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v5, v13

    int-to-float v5, v5

    add-float/2addr v11, v5

    float-to-int v5, v11

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v15, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v17, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->xRefPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    move v3, v15

    move/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    sub-float v2, v10, v2

    float-to-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v13

    int-to-float v3, v3

    sub-float v3, v11, v3

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, v13

    int-to-float v4, v4

    add-float/2addr v10, v4

    float-to-int v4, v10

    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v12

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v5, v13

    int-to-float v5, v5

    add-float/2addr v11, v5

    float-to-int v5, v11

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v12

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_11
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkableForAccessibility:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-class v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public setBackgroundColor(II)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck1:I

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck2:I

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkedProgress:F

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    return-void
.end method

.method public setCheckableForAccessibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkableForAccessibility:Z

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checked:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkedProgress:F

    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checked:Z

    if-eqz p2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput p1, p2, v1

    const/4 p1, 0x1

    aput v0, p2, p1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/voip/VoIPToggleButton$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/voip/VoIPToggleButton$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton$2;-><init>(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkedProgress:F

    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck1:I

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundCheck2:I

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setCrossOffset(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossOffset:F

    return-void
.end method

.method public setData(IIIFZLjava/lang/String;ZZ)V
    .locals 6

    .line 0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p8, 0x0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconRes:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentBackgroundColor:I

    if-ne v0, p3, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentText:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawCross:Z

    if-ne p7, v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    if-eqz p5, :cond_5

    :cond_3
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p5

    const/16 v0, 0xff

    if-ne p5, v0, :cond_4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p5

    float-to-double v2, p5

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double p5, v2, v4

    if-lez p5, :cond_4

    iget p5, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    const/high16 v0, 0x41cc0000    # 25.5f

    mul-float p4, p4, v0

    float-to-int p4, p4

    const/high16 v0, -0x1000000

    :goto_0
    invoke-static {v0, p4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p4

    invoke-static {p5, v1, p4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    :cond_4
    iget p5, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->radius:F

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    const/high16 v0, 0x42990000    # 76.5f

    mul-float p4, p4, v0

    float-to-int p4, p4

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentBackgroundColor:I

    const/4 p5, 0x1

    if-eq p4, p3, :cond_7

    const/4 p4, 0x1

    goto :goto_2

    :cond_7
    const/4 p4, 0x0

    :goto_2
    iput-boolean p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animateBackground:Z

    iget p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconRes:I

    if-ne p4, p1, :cond_8

    const/4 p4, 0x1

    goto :goto_3

    :cond_8
    const/4 p4, 0x0

    :goto_3
    iput-boolean p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    if-eqz p4, :cond_9

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceColorFrom:I

    :cond_9
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconRes:I

    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentIconColor:I

    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentBackgroundColor:I

    iput-object p6, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->currentText:Ljava/lang/String;

    iput-boolean p7, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawCross:Z

    const/high16 p7, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-nez p8, :cond_d

    if-eqz p1, :cond_a

    iget-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, p4, v1

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p2, p5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    if-nez p1, :cond_b

    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->backgroundColor:I

    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawCross:Z

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    const/4 p7, 0x0

    :goto_4
    iput p7, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->crossProgress:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->iconChangeColor:Z

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceProgress:F

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_7

    :cond_d
    if-nez p4, :cond_e

    if-eqz p1, :cond_e

    iget-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-static {p7, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, p4, p5

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, p5

    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    sget-object p7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p2, p7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_e
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->checkable:Z

    if-nez p1, :cond_f

    iput p3, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->animateToBackgroundColor:I

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p5

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    if-nez p1, :cond_10

    aget-object p2, p2, v1

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_10
    aget-object p2, p2, p5

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, p5

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, p5

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, p5

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, p5

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    :goto_6
    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/Components/voip/VoIPToggleButton$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPToggleButton;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->replaceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_5

    :goto_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setData(IIILjava/lang/String;ZZ)V
    .locals 9

    .line 0
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->drawBackground:Z

    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setPressedBtn(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->pressedScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->pressedScale:F

    if-eqz p1, :cond_1

    const p1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->pressedScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPToggleButton$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPToggleButton$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/VoIPToggleButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->pressedScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->pressedScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    int-to-float v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shakeView()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void
.end method

.method public showText(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->textLayoutContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
