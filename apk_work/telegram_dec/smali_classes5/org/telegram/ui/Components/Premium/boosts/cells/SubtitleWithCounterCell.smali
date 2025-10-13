.class public Lorg/telegram/ui/Components/Premium/boosts/cells/SubtitleWithCounterCell;
.super Lorg/telegram/ui/Cells/HeaderCell;
.source "SourceFile"


# instance fields
.field private final counterTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v9, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-direct {v9, v3, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v9, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/SubtitleWithCounterCell;->counterTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xf0

    const v3, 0x3ee66666    # 0.45f

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    :cond_1
    or-int/lit8 v12, v3, 0x50

    const/high16 v15, 0x41c00000    # 24.0f

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x41c00000    # 24.0f

    const/high16 v13, 0x41c00000    # 24.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public updateCounter(ZI)V
    .locals 3

    if-gtz p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "BoostingBoostsCountTitle"

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/SubtitleWithCounterCell;->counterTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/SubtitleWithCounterCell;->counterTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method
