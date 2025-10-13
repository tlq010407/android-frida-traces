.class public Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiColorPickerWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiColorPickerView"
.end annotation


# instance fields
.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private arrowX:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private both:Z

.field private currentEmoji:Ljava/lang/String;

.field private downStart:J

.field private drawables:[Landroid/graphics/drawable/Drawable;

.field private final emojiSize:I

.field private ignore:Z

.field private isCompound:Z

.field private lastSelection:[I

.field private onSelectionUpdate:Lorg/telegram/messenger/Utilities$Callback2;

.field private rect:Landroid/graphics/RectF;

.field private rectPaint:Landroid/graphics/Paint;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selection:[I

.field private selection1Animated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private selection2Animated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private touchY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x42200000    # 40.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42000000    # 32.0f

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    const/16 p1, 0xb

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->lastSelection:[I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x7d

    invoke-direct {p1, p0, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection1Animated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection2Animated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->touchY:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->both:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->stickers_back_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->stickers_back_arrow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->updateColors()V

    return-void
.end method


# virtual methods
.method public getEmoji()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aget p1, v0, p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->arrowX:I

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const v8, 0x40cae148    # 6.34f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->arrowX:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v8, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v3, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->isCompound:Z

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x5

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v2, v11, :cond_2

    if-nez v2, :cond_0

    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection1Animated:Lorg/telegram/ui/Components/AnimatedFloat;

    goto :goto_1

    :cond_0
    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection2Animated:Lorg/telegram/ui/Components/AnimatedFloat;

    :goto_1
    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aget v13, v13, v2

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v12

    iget v13, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    int-to-float v13, v13

    add-float v14, v12, v10

    mul-float v13, v13, v14

    invoke-static {v10, v14}, Ljava/lang/Math;->min(FF)F

    move-result v15

    const/4 v5, 0x0

    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v15, v15, v16

    add-float/2addr v15, v8

    mul-float v14, v14, v9

    add-float/2addr v15, v14

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    float-to-int v13, v13

    neg-float v12, v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget v14, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v14, v15

    mul-int v14, v14, v2

    add-int/2addr v12, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    sub-int/2addr v14, v15

    div-int/2addr v14, v11

    invoke-static {v12, v14, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    int-to-float v14, v13

    int-to-float v15, v11

    iget v8, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    add-int/2addr v13, v8

    int-to-float v13, v13

    add-int/2addr v11, v8

    int-to-float v8, v11

    invoke-virtual {v12, v14, v15, v13, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    mul-float v12, v5, v7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-static {v10, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-static {v11, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v8, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v8, v2, 0x5

    add-int/2addr v8, v5

    iget v11, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    mul-int v11, v11, v5

    mul-int/lit8 v12, v5, 0x4

    add-int/lit8 v12, v12, 0x8

    int-to-float v12, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v13, v14

    mul-int v13, v13, v2

    add-int/2addr v12, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v13, v13, v8

    iget v14, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    add-int v15, v11, v14

    add-int/2addr v14, v12

    invoke-virtual {v13, v11, v12, v15, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v11, v8

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v8, 0x40a00000    # 5.0f

    goto/16 :goto_0

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v7, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    sub-int/2addr v5, v7

    div-int/2addr v5, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v7, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    add-int/2addr v3, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    add-int/2addr v7, v8

    div-int/2addr v7, v11

    invoke-virtual {v2, v4, v5, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const v2, 0x41073333    # 8.45f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v6, v2

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection1Animated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    mul-float v8, v2, v9

    const/high16 v11, 0x40a00000    # 5.0f

    add-float/2addr v8, v11

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v5, v8

    float-to-int v5, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    int-to-float v12, v5

    int-to-float v13, v8

    iget v14, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    add-int/2addr v5, v14

    int-to-float v5, v5

    add-int/2addr v14, v8

    int-to-float v14, v14

    invoke-virtual {v11, v12, v13, v5, v14}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v11, v7}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v9, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    const/4 v5, 0x6

    if-ge v6, v5, :cond_5

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    iget v7, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    mul-int v7, v7, v6

    mul-int/lit8 v9, v6, 0x4

    add-int/2addr v9, v4

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v7, v9

    int-to-float v9, v6

    sub-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v9, v9, v11

    sub-float v9, v10, v9

    const v12, 0x3dcccccd    # 0.1f

    mul-float v9, v9, v12

    const v12, 0x3f666666    # 0.9f

    add-float/2addr v9, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v12, v7

    iget v14, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    int-to-float v14, v14

    div-float/2addr v14, v11

    add-float/2addr v12, v14

    add-float/2addr v14, v13

    invoke-virtual {v1, v9, v9, v12, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v9, v0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->emojiSize:I

    add-int v12, v7, v9

    add-int/2addr v9, v8

    invoke-virtual {v5, v7, v8, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_4
    const/high16 v11, 0x40000000    # 2.0f

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->ignore:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->ignore:Z

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->isCompound:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    array-length v3, v2

    const/16 v4, 0xa

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ge v0, v3, :cond_5

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->touchY:I

    if-eq v2, v7, :cond_4

    if-eqz v0, :cond_3

    if-nez v2, :cond_2

    if-lt v0, v8, :cond_2

    if-le v0, v5, :cond_3

    :cond_2
    if-ne v2, v8, :cond_4

    if-lt v0, v6, :cond_4

    if-gt v0, v4, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v8, :cond_7

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_a

    iput v7, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->touchY:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->downStart:J

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aget v9, v2, v1

    aget v2, v2, v8

    if-ne v9, v2, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->both:Z

    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->lastSelection:[I

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aget v10, v9, v1

    aput v10, v2, v1

    aget v9, v9, v8

    aput v9, v2, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->downStart:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x12c

    cmp-long v2, v9, v11

    if-lez v2, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aput v7, v0, v1

    aput v7, v0, v8

    goto :goto_5

    :cond_c
    if-lt v0, v8, :cond_f

    if-gt v0, v5, :cond_f

    iget v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->touchY:I

    if-eq v3, v7, :cond_d

    if-nez v3, :cond_f

    :cond_d
    iput v1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->touchY:I

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    sub-int/2addr v0, v8

    aput v0, v3, v1

    aget v4, v3, v8

    if-eq v4, v7, :cond_e

    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->both:Z

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    :cond_e
    aput v0, v3, v8

    goto :goto_5

    :cond_f
    if-lt v0, v6, :cond_12

    if-gt v0, v4, :cond_12

    iget v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->touchY:I

    if-eq v3, v7, :cond_10

    if-ne v3, v8, :cond_12

    :cond_10
    iput v8, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->touchY:I

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    sub-int/2addr v0, v6

    aput v0, v3, v8

    aget v4, v3, v1

    if-eq v4, v7, :cond_11

    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->both:Z

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    :cond_11
    aput v0, v3, v1

    :cond_12
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->lastSelection:[I

    aget v2, v0, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aget v4, v3, v1

    if-ne v2, v4, :cond_13

    aget v0, v0, v8

    aget v2, v3, v8

    if-eq v0, v2, :cond_14

    :cond_13
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->onSelectionUpdate:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aget v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v8, :cond_15

    iput v7, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->touchY:I

    :cond_15
    return v8
.end method

.method public setArrowX(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->arrowX:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEmoji(ZLjava/lang/String;)V
    .locals 11

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->isCompound:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v4, v3}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v3

    aput-object v3, p1, v1

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, p1, v5

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, p1, v6

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, p1, v7

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, p1, v8

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, p1, v9

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v9, v2}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v2

    aput-object v2, p1, v0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, p1, v2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, p1, v2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, p1, v2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, p1, v2

    invoke-static {p2}, Lorg/telegram/messenger/CompoundEmoji;->isHandshake(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->setSelection(II)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->setSelection(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aget p2, p1, v1

    aget p1, p1, v5

    if-ne p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->both:Z

    :cond_1
    iput-boolean v5, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->ignore:Z

    goto :goto_2

    :cond_2
    :goto_0
    if-ge v1, v0, :cond_4

    if-eqz v1, :cond_3

    sget-object p1, Lorg/telegram/messenger/CompoundEmoji;->skinTones:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, p2

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->drawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnSelectionUpdateListener(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->onSelectionUpdate:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public setSelection(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->selection:[I

    aget v1, v0, p1

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    aput p2, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelIcon:I

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/CompoundEmoji;->setPlaceholderColor(I)V

    return-void
.end method
