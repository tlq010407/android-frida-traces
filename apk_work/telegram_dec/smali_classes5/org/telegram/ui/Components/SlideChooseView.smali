.class public Lorg/telegram/ui/Components/SlideChooseView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SlideChooseView$Callback;
    }
.end annotation


# instance fields
.field private final accessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

.field private callback:Lorg/telegram/ui/Components/SlideChooseView$Callback;

.field private circleSize:I

.field private dashedFrom:I

.field private gapSize:I

.field private lastDash:I

.field private leftDrawables:[Landroid/graphics/drawable/Drawable;

.field private linePaint:Landroid/graphics/Paint;

.field private lineSize:I

.field private minIndex:I

.field private moving:Z

.field private movingAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

.field private optionsSizes:[I

.field private optionsStr:[Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedIndex:I

.field private selectedIndexAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

.field private selectedIndexTouch:F

.field private sideSide:I

.field private startMoving:Z

.field private startMovingPreset:I

.field private textPaint:Landroid/text/TextPaint;

.field private touchWasClose:Z

.field private xTouchDown:F

.field private yTouchDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 0
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->dashedFrom:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->minIndex:I

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0x78

    invoke-direct {p1, p0, v1, v2, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v1, 0x96

    invoke-direct {p1, p0, v1, v2, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->movingAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->touchWasClose:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->linePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->linePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Lorg/telegram/ui/Components/SlideChooseView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SlideChooseView$1;-><init>(Lorg/telegram/ui/Components/SlideChooseView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->accessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SlideChooseView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SlideChooseView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SlideChooseView;->setOption(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SlideChooseView;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private setOption(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    if-eq v0, p1, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->callback:Lorg/telegram/ui/Components/SlideChooseView$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/SlideChooseView$Callback;->onOptionSelected(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v9, 0x2

    iget-object v1, v0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v11

    iget-object v1, v0, Lorg/telegram/ui/Components/SlideChooseView;->movingAnimatedHolder:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v9

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v15, v1, v2

    const/4 v6, 0x0

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v1, v1

    const/high16 v16, 0x41400000    # 12.0f

    const/high16 v2, 0x40c00000    # 6.0f

    if-ge v6, v1, :cond_c

    iget v1, v0, Lorg/telegram/ui/Components/SlideChooseView;->sideSide:I

    iget v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->lineSize:I

    iget v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    add-int/2addr v3, v4

    mul-int v3, v3, v6

    add-int/2addr v1, v3

    div-int/2addr v4, v9

    add-int v5, v1, v4

    int-to-float v1, v6

    sub-float v3, v1, v11

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v13, v4

    invoke-static {v12, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v1, v11, v1

    add-float/2addr v1, v13

    invoke-static {v1, v12, v13}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v13

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v12

    iget v8, v0, Lorg/telegram/ui/Components/SlideChooseView;->minIndex:I

    const/high16 v10, -0x80000000

    if-eq v8, v10, :cond_1

    if-gt v6, v8, :cond_1

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_2
    invoke-static {v12, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    invoke-static {v13, v8, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iget-object v8, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/SlideChooseView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v5

    int-to-float v8, v15

    iget v10, v0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    div-int/2addr v10, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v10, v12, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v10

    int-to-float v10, v10

    iget-object v12, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v10, 0x40400000    # 3.0f

    if-eqz v6, :cond_4

    iget v1, v0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    div-int/2addr v1, v9

    sub-int v1, v5, v1

    iget v12, v0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    sub-int/2addr v1, v12

    iget v12, v0, Lorg/telegram/ui/Components/SlideChooseView;->lineSize:I

    sub-int/2addr v1, v12

    iget v13, v0, Lorg/telegram/ui/Components/SlideChooseView;->dashedFrom:I

    const/4 v9, -0x1

    if-eq v13, v9, :cond_3

    const/4 v9, 0x1

    add-int/lit8 v2, v6, -0x1

    if-lt v2, v13, :cond_3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v12, v2

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    div-int v2, v12, v2

    iget v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->lastDash:I

    if-eq v3, v2, :cond_2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int v3, v3, v2

    sub-int v3, v12, v3

    int-to-float v3, v3

    const/4 v9, 0x1

    add-int/lit8 v13, v2, -0x1

    int-to-float v13, v13

    div-float/2addr v3, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/SlideChooseView;->linePaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/DashPathEffect;

    const/high16 v19, 0x40c00000    # 6.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    move/from16 v20, v4

    move/from16 v21, v5

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/16 v18, 0x0

    aput v9, v5, v18

    const/4 v4, 0x1

    aput v3, v5, v4

    const/4 v3, 0x0

    invoke-direct {v10, v5, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iput v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->lastDash:I

    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_2
    move/from16 v20, v4

    move/from16 v21, v5

    const/16 v18, 0x0

    goto :goto_3

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    add-int/2addr v1, v12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v4, v1

    iget-object v9, v0, Lorg/telegram/ui/Components/SlideChooseView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v8

    move/from16 v10, v20

    move/from16 v13, v21

    move v5, v8

    move v8, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_5

    :cond_3
    move v10, v4

    move v13, v5

    move v8, v6

    const/16 v18, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v2, v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v2, v3

    invoke-static {v3, v6, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    int-to-float v2, v12

    const/high16 v9, 0x40400000    # 3.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v1, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v5

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v3, v1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v15, v4

    int-to-float v4, v4

    add-int/2addr v1, v2

    int-to-float v5, v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v15

    int-to-float v6, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_4
    move v10, v4

    move v13, v5

    move v8, v6

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/SlideChooseView;->optionsSizes:[I

    aget v1, v1, v8

    iget-object v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    aget-object v2, v2, v8

    iget-object v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v5

    invoke-static {v4, v5, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v5, 0x41e00000    # 28.0f

    if-eqz v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-nez v8, :cond_5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x41780000    # 15.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    :goto_6
    invoke-virtual {v7, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_8

    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v3, v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    const/high16 v6, 0x41480000    # 12.5f

    const/high16 v10, 0x41200000    # 10.0f

    if-ne v8, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    sub-int v3, v3, v16

    :goto_7
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v3, v10

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v10, v6

    int-to-float v6, v10

    goto :goto_6

    :cond_6
    const/4 v3, 0x2

    div-int/lit8 v16, v1, 0x2

    sub-int v3, v13, v16

    goto :goto_7

    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v8

    iget-object v6, v0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    if-nez v8, :cond_7

    const/high16 v10, 0x40400000    # 3.0f

    goto :goto_9

    :cond_7
    const/high16 v10, 0x40000000    # 2.0f

    :goto_9
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_a

    :cond_8
    const/4 v6, 0x0

    :goto_a
    if-nez v8, :cond_9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_b
    int-to-float v1, v1

    :goto_c
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v3, v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    if-ne v8, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    goto :goto_c

    :cond_a
    const/4 v3, 0x2

    div-int/2addr v1, v3

    sub-int v1, v13, v1

    goto :goto_b

    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    const/4 v1, 0x1

    add-int/lit8 v2, v8, 0x1

    move v6, v2

    const/4 v9, 0x2

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_c
    iget v1, v0, Lorg/telegram/ui/Components/SlideChooseView;->sideSide:I

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->lineSize:I

    iget v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v11

    add-float/2addr v1, v2

    div-int/2addr v3, v4

    int-to-float v2, v3

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v4

    const/16 v5, 0x50

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v15

    mul-float v14, v14, v16

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SlideChooseView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SlideChooseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->accessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 p2, 0x42940000    # 74.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/high16 p1, 0x40c00000    # 6.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    const/high16 p1, 0x41b00000    # 22.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->sideSide:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v1, v0

    mul-int p2, p2, v1

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    mul-int/lit8 p2, p2, 0x2

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int p2, p2, v1

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->sideSide:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    array-length p2, v0

    sub-int/2addr p2, v2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->lineSize:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/SlideChooseView;->sideSide:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lorg/telegram/ui/Components/SlideChooseView;->circleSize:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iget v4, p0, Lorg/telegram/ui/Components/SlideChooseView;->lineSize:I

    iget v5, p0, Lorg/telegram/ui/Components/SlideChooseView;->gapSize:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3eb33333    # 0.35f

    const/4 v7, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    :cond_1
    iget v5, p0, Lorg/telegram/ui/Components/SlideChooseView;->minIndex:I

    const/high16 v8, -0x80000000

    if-eq v5, v8, :cond_2

    int-to-float v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    iput v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->xTouchDown:F

    iput v1, p0, Lorg/telegram/ui/Components/SlideChooseView;->yTouchDown:F

    iput v2, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMovingPreset:I

    iput-boolean v4, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMoving:Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    if-nez p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->xTouchDown:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lorg/telegram/ui/Components/SlideChooseView;->yTouchDown:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMoving:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->xTouchDown:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    iput-boolean v4, p0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    iput-boolean v7, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMoving:Z

    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    if-eqz p1, :cond_3

    iput v2, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    if-eq p1, v0, :cond_3

    if-eqz v3, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SlideChooseView;->setOption(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    if-nez v0, :cond_9

    iput v2, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_a

    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    if-eq p1, v0, :cond_a

    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndexTouch:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SlideChooseView;->setOption(I)V

    goto :goto_3

    :cond_9
    iget p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMovingPreset:I

    if-eq p1, v0, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->callback:Lorg/telegram/ui/Components/SlideChooseView$Callback;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/telegram/ui/Components/SlideChooseView$Callback;->onTouchEnd()V

    :cond_b
    iput-boolean v7, p0, Lorg/telegram/ui/Components/SlideChooseView;->startMoving:Z

    iput-boolean v7, p0, Lorg/telegram/ui/Components/SlideChooseView;->moving:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_c
    :goto_4
    return v4
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->accessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;->performAccessibilityActionInternal(Landroid/view/View;ILandroid/os/Bundle;)Z

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

.method public setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->callback:Lorg/telegram/ui/Components/SlideChooseView$Callback;

    return-void
.end method

.method public setDashedFrom(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->dashedFrom:I

    return-void
.end method

.method public setMinAllowedIndex(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->minIndex:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->minIndex:I

    iget v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    if-ge v0, p1, :cond_1

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public varargs setOptions(I[Landroid/graphics/drawable/Drawable;[Ljava/lang/String;)V
    .locals 4

    .line 0
    iput-object p3, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->selectedIndex:I

    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsSizes:[I

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsStr:[Ljava/lang/String;

    array-length v0, p3

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView;->optionsSizes:[I

    iget-object v1, p0, Lorg/telegram/ui/Components/SlideChooseView;->textPaint:Landroid/text/TextPaint;

    aget-object p3, p3, p2

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p3, v1

    aput p3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SlideChooseView;->leftDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    array-length p3, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public varargs setOptions(I[Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Landroid/graphics/drawable/Drawable;[Ljava/lang/String;)V

    return-void
.end method
