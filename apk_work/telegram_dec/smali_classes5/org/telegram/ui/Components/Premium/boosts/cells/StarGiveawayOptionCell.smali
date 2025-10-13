.class public Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final animatedStarsCount:Lorg/telegram/ui/Components/AnimatedFloat;

.field private currentOption:Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

.field private currentOptionStarsPerUser:J

.field private loading1:Landroid/text/SpannableString;

.field private loading2:Landroid/text/SpannableString;

.field private priceView:Landroid/widget/TextView;

.field private radioButton:Lorg/telegram/ui/Components/RadioButton;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final starDrawable:Landroid/graphics/drawable/Drawable;

.field private final starDrawableOutline:Landroid/graphics/drawable/Drawable;

.field private starsCount:I

.field private subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private titleView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v10, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->animatedStarsCount:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-object v9, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->star_small_outline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->starDrawableOutline:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->starDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v1, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v15, 0x42a00000    # 80.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x41a00000    # 20.0f

    const/16 v12, 0x33

    const/high16 v13, 0x42800000    # 64.0f

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/text/SpannableString;

    const-string v3, "x"

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->loading1:Landroid/text/SpannableString;

    new-instance v4, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v5, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    const/4 v5, 0x1

    const/16 v6, 0x21

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v1, v8, v0, v5, v5}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v4, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v1, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v10, 0x41500000    # 13.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v1, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v10, -0x1

    const/high16 v11, 0x41600000    # 14.0f

    const/high16 v14, 0x41f80000    # 31.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->loading2:Landroid/text/SpannableString;

    new-instance v3, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v10, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v11, 0x428c0000    # 70.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-direct {v3, v10, v11}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v3, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->priceView:Landroid/widget/TextView;

    invoke-static {v4, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->priceView:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->priceView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->priceView:Landroid/widget/TextView;

    const/high16 v15, 0x41980000    # 19.0f

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x15

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    invoke-static {v1, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/16 v8, 0x14

    const/high16 v9, 0x41a00000    # 20.0f

    const/16 v10, 0x13

    const/high16 v11, 0x41b00000    # 22.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getOption()Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->currentOption:Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->animatedStarsCount:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->starsCount:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40200000    # 2.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v6, v6, -0x1

    :goto_0
    if-ltz v6, :cond_0

    int-to-float v7, v6

    sub-float v7, v0, v7

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v9, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v7

    add-int/lit8 v8, v6, -0x1

    int-to-float v8, v8

    sub-float v10, v9, v7

    sub-float/2addr v8, v10

    mul-float v8, v8, v3

    mul-float v8, v8, v9

    add-float/2addr v8, v4

    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->starDrawableOutline:Landroid/graphics/drawable/Drawable;

    float-to-int v10, v8

    float-to-int v11, v5

    add-float/2addr v8, v2

    float-to-int v8, v8

    add-float v12, v5, v1

    float-to-int v12, v12

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->starDrawableOutline:Landroid/graphics/drawable/Drawable;

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float v7, v7, v13

    float-to-int v7, v7

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->starDrawableOutline:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->starDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10, v11, v8, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->starDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->starDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v3, v0

    add-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setOption(Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;IJZZ)V
    .locals 5

    iget-object p6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->currentOption:Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p6, p1, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v2, p5, p6}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->currentOption:Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;

    iput-wide p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->currentOptionStarsPerUser:J

    if-eqz p6, :cond_1

    iget-object p5, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p5}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->loading1:Landroid/text/SpannableString;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->loading2:Landroid/text/SpannableString;

    invoke-virtual {p1, p3, p6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->priceView:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p5, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->stars:J

    long-to-int v3, v2

    const-string v2, "GiveawayStars"

    const/16 v4, 0x20

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p5, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->subtitleView:Lorg/telegram/ui/Components/AnimatedTextView;

    long-to-int p4, p3

    const-string p3, "BoostingStarOptionPerUser"

    const/16 v0, 0x2c

    invoke-static {p3, p4, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3, p6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->priceView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p4

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->amount:J

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;->currency:Ljava/lang/String;

    invoke-virtual {p4, v2, v3, p1}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->starsCount:I

    if-nez p6, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/StarGiveawayOptionCell;->animatedStarsCount:Lorg/telegram/ui/Components/AnimatedFloat;

    int-to-float p2, p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
