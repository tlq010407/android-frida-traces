.class public abstract Lorg/telegram/ui/Business/ProfileHoursCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private arrowView:Landroid/widget/ImageView;

.field private expanded:Z

.field private firstAfterAttach:Z

.field private final labelText:[Landroid/widget/TextView;

.field private labelTimeText:[Landroid/widget/TextView;

.field private final lines:[Landroid/view/ViewGroup;

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

.field private textView:Landroid/widget/TextView;

.field private final timeText:[[Landroid/widget/TextView;

.field private todayLinesCount:I

.field private todayLinesHeight:I

.field private todayTimeContainer:Landroid/widget/FrameLayout;

.field private todayTimeTextContainer:Landroid/widget/FrameLayout;

.field private todayTimeTextContainer2:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/widget/TextView;

    iput-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    const/4 v4, 0x7

    new-array v5, v4, [Landroid/view/ViewGroup;

    iput-object v5, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->lines:[Landroid/view/ViewGroup;

    new-array v5, v4, [Landroid/widget/TextView;

    iput-object v5, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    new-array v5, v4, [[Landroid/widget/TextView;

    iput-object v5, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    const/4 v5, 0x1

    iput v5, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesCount:I

    const/4 v6, 0x0

    iput v6, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesHeight:I

    iput-boolean v5, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->firstAfterAttach:Z

    iput-object v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_e

    const/16 v8, 0x77

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v11, 0x5

    if-nez v7, :cond_7

    new-instance v12, Lorg/telegram/ui/Business/ProfileHoursCell$1;

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/Business/ProfileHoursCell$1;-><init>(Lorg/telegram/ui/Business/ProfileHoursCell;Landroid/content/Context;)V

    const/high16 v13, 0x42700000    # 60.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setMinimumHeight(I)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->textView:Landroid/widget/TextView;

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_0

    const/4 v14, 0x5

    goto :goto_1

    :cond_0
    const/4 v14, 0x3

    :goto_1
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->textView:Landroid/widget/TextView;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v13, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->textView:Landroid/widget/TextView;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, -0x40000000    # -2.0f

    const v16, 0x800033

    const/16 v17, 0x0

    const v18, 0x411547ae    # 9.33f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v14, v13, v7

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v13, v13, v7

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_1

    const/4 v14, 0x5

    goto :goto_2

    :cond_1
    const/4 v14, 0x3

    :goto_2
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v13, v13, v7

    const/high16 v14, 0x41500000    # 13.0f

    invoke-virtual {v13, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v13, v13, v7

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v13, v13, v7

    const/16 v20, 0x0

    const/high16 v21, 0x41200000    # 10.0f

    const/high16 v15, -0x40000000    # -2.0f

    const/high16 v16, -0x40000000    # -2.0f

    const v17, 0x800033

    const/16 v18, 0x0

    const/high16 v19, 0x42040000    # 33.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer2:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer:Landroid/widget/FrameLayout;

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    new-array v15, v3, [Landroid/widget/TextView;

    aput-object v15, v13, v7

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v3, :cond_3

    iget-object v15, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v15, v15, v7

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v15, v13

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v4, v4, v7

    aget-object v4, v4, v13

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v4, v4, v7

    aget-object v4, v4, v13

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v4, v4, v7

    aget-object v4, v4, v13

    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_2

    const/4 v15, 0x3

    goto :goto_4

    :cond_2
    const/4 v15, 0x5

    :goto_4
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer:Landroid/widget/FrameLayout;

    iget-object v15, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v15, v15, v7

    aget-object v15, v15, v13

    const/high16 v22, 0x41a00000    # 20.0f

    const/16 v23, 0x0

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x77

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x7

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_5

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v13, v10, v4

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    aget-object v10, v10, v4

    invoke-virtual {v10, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    aget-object v10, v10, v4

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    aget-object v10, v10, v4

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_4

    const/4 v13, 0x3

    goto :goto_6

    :cond_4
    const/4 v13, 0x5

    :goto_6
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer:Landroid/widget/FrameLayout;

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    aget-object v13, v13, v4

    const/high16 v22, 0x41a00000    # 20.0f

    const/16 v23, 0x0

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x77

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v10, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->arrowView:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->arrowView:Landroid/widget/ImageView;

    const v9, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->arrowView:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->arrowView:Landroid/widget/ImageView;

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v13, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->arrowView:Landroid/widget/ImageView;

    const v13, 0x800015

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static {v15, v15, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer2:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer:Landroid/widget/FrameLayout;

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v13, v13, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/ClickableAnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v4

    iput-boolean v5, v4, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->updateAll:Z

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v10, v6, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_6

    const/4 v10, 0x3

    goto :goto_7

    :cond_6
    const/4 v10, 0x5

    :goto_7
    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Business/ProfileHoursCell;->processColor(I)I

    move-result v11

    const v13, 0x3dcccccd    # 0.1f

    invoke-static {v11, v13}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v11

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Business/ProfileHoursCell;->processColor(I)I

    move-result v13

    const v14, 0x3e6147ae    # 0.22f

    invoke-static {v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v13

    invoke-static {v8, v11, v13}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/ClickableAnimatedTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Business/ProfileHoursCell;->processColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setScaleProperty(F)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer2:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    const/high16 v22, 0x41900000    # 18.0f

    const/16 v23, 0x0

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v18, 0x41880000    # 17.0f

    const v19, 0x800005

    const/16 v20, 0x0

    const/high16 v21, 0x40800000    # 4.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeContainer:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer2:Landroid/widget/LinearLayout;

    const/16 v22, 0x0

    const/high16 v18, -0x40000000    # -2.0f

    const v19, 0x800055

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeContainer:Landroid/widget/FrameLayout;

    const/high16 v23, 0x41400000    # 12.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v12, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->lines:[Landroid/view/ViewGroup;

    aput-object v12, v4, v7

    const/high16 v22, 0x41500000    # 13.0f

    const/16 v23, 0x0

    const/16 v19, 0x33

    const/high16 v20, 0x41b00000    # 22.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_e

    :cond_7
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v12, v10, v7

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v10, v10, v7

    invoke-virtual {v10, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v10, v10, v7

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v12, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v10, v10, v7

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_8

    const/4 v12, 0x5

    goto :goto_8

    :cond_8
    const/4 v12, 0x3

    :goto_8
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v12, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    new-array v13, v3, [Landroid/widget/TextView;

    aput-object v13, v12, v7

    const/4 v12, 0x0

    :goto_9
    const/4 v13, -0x1

    if-ge v12, v3, :cond_a

    iget-object v14, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v14, v14, v7

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v15, v14, v12

    iget-object v14, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v14, v14, v7

    aget-object v14, v14, v12

    invoke-virtual {v14, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v14, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v14, v14, v7

    aget-object v14, v14, v12

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v14, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v14, v14, v7

    aget-object v14, v14, v12

    sget-boolean v15, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v15, :cond_9

    const/4 v15, 0x3

    goto :goto_a

    :cond_9
    const/4 v15, 0x5

    :goto_a
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v14, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v14, v14, v7

    aget-object v14, v14, v12

    invoke-static {v13, v13, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v10, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_a
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v9, 0x35

    const/16 v11, 0x33

    const/4 v12, -0x2

    if-eqz v8, :cond_b

    invoke-static {v12, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v8, v8, v7

    invoke-static {v13, v13, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_b
    iget-object v8, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v8, v8, v7

    invoke-static {v12, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v13, v13, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    iget-object v8, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->lines:[Landroid/view/ViewGroup;

    aput-object v4, v8, v7

    if-ne v7, v5, :cond_c

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_c
    const v8, 0x413a8f5c    # 11.66f

    const v13, 0x413a8f5c    # 11.66f

    :goto_c
    const/4 v8, 0x6

    if-ne v7, v8, :cond_d

    const v8, 0x418547ae    # 16.66f

    const v15, 0x418547ae    # 16.66f

    goto :goto_d

    :cond_d
    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_d
    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40000000    # -2.0f

    const/16 v11, 0x33

    const/high16 v12, 0x41b00000    # 22.0f

    const/high16 v14, 0x42040000    # 33.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_e
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->needDivider:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "paintDivider"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :cond_0
    move-object v6, v0

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const v1, 0x41aaa3d7    # 21.33f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x41aaa3d7    # 21.33f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p1

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-boolean v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->expanded:Z

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const/high16 p2, 0x42700000    # 60.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesCount:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesHeight:I

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/high16 v2, 0x41a80000    # 21.0f

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    :goto_2
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-boolean v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->needDivider:Z

    add-int/2addr p2, v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->lines:[Landroid/view/ViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->lines:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ClickableAnimatedTextView;->getClickBounds()Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected abstract processColor(I)I
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;ZZZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iput-boolean v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->expanded:Z

    move/from16 v3, p4

    iput-boolean v3, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->needDivider:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Business/OpeningHoursActivity;->is24x7(Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iput-boolean v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->expanded:Z

    const/4 v2, 0x0

    :cond_1
    iget-object v5, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->arrowView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v3, :cond_2

    const/16 v7, 0x8

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeTextContainer2:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    const/high16 v8, 0x41300000    # 11.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationX(F)V

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/ui/Business/TimezonesController;->getInstance(I)Lorg/telegram/ui/Business/TimezonesController;

    move-result-object v5

    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->timezone_id:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Business/TimezonesController;->findTimezone(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_timezone;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    div-int/lit16 v9, v9, 0x3e8

    if-nez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_timezone;->utc_offset:I

    :goto_2
    sub-int/2addr v9, v5

    const/16 v5, 0x3c

    div-int/2addr v9, v5

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    if-eqz v9, :cond_5

    if-nez v3, :cond_5

    const/4 v6, 0x0

    :cond_5
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    if-nez v9, :cond_6

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    move/from16 v6, p3

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-boolean v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->firstAfterAttach:Z

    const-wide/16 v12, 0x140

    const/4 v15, 0x1

    if-eqz v10, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    aget-object v10, v10, v4

    if-nez v2, :cond_7

    if-nez v6, :cond_7

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v10, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    aget-object v7, v7, v15

    if-nez v2, :cond_8

    if-eqz v6, :cond_8

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->arrowView:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    const/high16 v11, 0x43340000    # 180.0f

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v7, v11}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_c

    :cond_a
    iget-object v7, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-nez v2, :cond_b

    if-nez v6, :cond_b

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v7, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    aget-object v7, v7, v15

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-nez v2, :cond_c

    if-eqz v6, :cond_c

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v7, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v7, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v7, v7, v4

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-eqz v2, :cond_d

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_d
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v7, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v7, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v7, v7, v4

    aget-object v7, v7, v15

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-eqz v2, :cond_e

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_e
    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v7, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v7, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-eqz v2, :cond_f

    const/high16 v11, 0x43340000    # 180.0f

    goto :goto_b

    :cond_f
    const/4 v11, 0x0

    :goto_b
    invoke-virtual {v7, v11}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_c
    const/4 v7, 0x0

    :goto_d
    iget-object v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    array-length v10, v10

    if-ge v7, v10, :cond_15

    const/4 v10, 0x0

    :goto_e
    iget-object v11, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v11, v11, v7

    array-length v14, v11

    if-ge v10, v14, :cond_14

    if-nez v7, :cond_10

    if-eqz v2, :cond_12

    :cond_10
    if-ne v10, v15, :cond_11

    const/4 v14, 0x1

    goto :goto_f

    :cond_11
    const/4 v14, 0x0

    :goto_f
    if-ne v14, v6, :cond_12

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_12
    const/4 v14, 0x0

    :goto_10
    iget-boolean v15, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->firstAfterAttach:Z

    if-eqz v15, :cond_13

    aget-object v11, v11, v10

    invoke-virtual {v11, v14}, Landroid/view/View;->setAlpha(F)V

    goto :goto_11

    :cond_13
    aget-object v11, v11, v10

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    sget-object v14, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v11, v14}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_11
    add-int/lit8 v10, v10, 0x1

    const/4 v15, 0x1

    goto :goto_e

    :cond_14
    add-int/lit8 v7, v7, 0x1

    const/4 v15, 0x1

    goto :goto_d

    :cond_15
    iget-object v7, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    if-eqz v7, :cond_18

    if-eqz v6, :cond_16

    sget v6, Lorg/telegram/messenger/R$string;->BusinessHoursProfileSwitchMy:I

    goto :goto_12

    :cond_16
    sget v6, Lorg/telegram/messenger/R$string;->BusinessHoursProfileSwitchLocal:I

    :goto_12
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v10, :cond_17

    iget-boolean v10, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->firstAfterAttach:Z

    if-nez v10, :cond_17

    const/4 v10, 0x1

    goto :goto_13

    :cond_17
    const/4 v10, 0x0

    :goto_13
    invoke-virtual {v7, v6, v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_18
    iput-boolean v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->firstAfterAttach:Z

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Lorg/telegram/ui/Business/OpeningHoursActivity;->getDaysHours(Ljava/util/ArrayList;)[Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x5

    add-int/2addr v10, v11

    rem-int/2addr v10, v7

    const/16 v12, 0xb

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v13, 0xc

    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessWorkHours;->weekly_open:Ljava/util/ArrayList;

    invoke-static {v1, v9}, Lorg/telegram/ui/Business/OpeningHoursActivity;->adaptWeeklyOpen(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    mul-int/lit8 v12, v12, 0x3c

    add-int/2addr v8, v12

    mul-int/lit16 v9, v10, 0x5a0

    add-int/2addr v8, v9

    const/4 v9, 0x0

    :goto_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_1d

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    iget v13, v12, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    if-lt v8, v13, :cond_19

    iget v14, v12, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    if-le v8, v14, :cond_1b

    :cond_19
    add-int/lit16 v14, v8, 0x2760

    if-lt v14, v13, :cond_1a

    iget v15, v12, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    if-le v14, v15, :cond_1b

    :cond_1a
    add-int/lit16 v14, v8, -0x2760

    if-lt v14, v13, :cond_1c

    iget v12, v12, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->end_minute:I

    if-gt v14, v12, :cond_1c

    :cond_1b
    const/4 v9, 0x1

    goto :goto_15

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_1d
    const/4 v9, 0x0

    :goto_15
    invoke-static {v1}, Lorg/telegram/ui/Business/OpeningHoursActivity;->getDaysHours(Ljava/util/ArrayList;)[Ljava/util/ArrayList;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->textView:Landroid/widget/TextView;

    if-eqz v9, :cond_1e

    sget v14, Lorg/telegram/messenger/R$string;->BusinessHoursProfileNowOpen:I

    goto :goto_16

    :cond_1e
    sget v14, Lorg/telegram/messenger/R$string;->BusinessHoursProfileNowClosed:I

    :goto_16
    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->textView:Landroid/widget/TextView;

    if-eqz v9, :cond_1f

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageGreen:I

    goto :goto_17

    :cond_1f
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_17
    iget-object v15, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    iget v13, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesHeight:I

    iget v14, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesCount:I

    const/4 v15, 0x1

    iput v15, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesCount:I

    iput v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesHeight:I

    const/4 v15, 0x0

    :goto_18
    const/4 v11, 0x2

    if-ge v15, v11, :cond_37

    if-nez v15, :cond_20

    move-object/from16 v16, v6

    goto :goto_19

    :cond_20
    move-object/from16 v16, v12

    :goto_19
    const/4 v11, 0x0

    :goto_1a
    if-ge v11, v7, :cond_36

    add-int v17, v10, v11

    rem-int/lit8 v17, v17, 0x7

    if-nez v11, :cond_21

    iget-object v7, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v7, v7, v11

    sget v18, Lorg/telegram/messenger/R$string;->BusinessHoursProfile:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v18, v6

    goto :goto_1d

    :cond_21
    invoke-static {}, Lj$/time/DayOfWeek;->values()[Lj$/time/DayOfWeek;

    move-result-object v5

    aget-object v5, v5, v17

    sget-object v7, Lj$/time/format/TextStyle;->FULL:Lj$/time/format/TextStyle;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lj$/time/DayOfWeek;->getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v5, v5, v11

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x4

    if-eqz v2, :cond_22

    const/4 v6, 0x0

    goto :goto_1b

    :cond_22
    const/4 v6, 0x4

    :goto_1b
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v4, v4, v11

    const/4 v6, 0x1

    aget-object v4, v4, v6

    if-eqz v2, :cond_23

    const/4 v6, 0x0

    goto :goto_1c

    :cond_23
    const/4 v6, 0x4

    :goto_1c
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelText:[Landroid/widget/TextView;

    aget-object v4, v4, v11

    if-eqz v2, :cond_24

    const/4 v5, 0x0

    :cond_24
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1d
    const/4 v7, 0x0

    :goto_1e
    if-nez v11, :cond_25

    const/4 v4, 0x2

    goto :goto_1f

    :cond_25
    const/4 v4, 0x1

    :goto_1f
    if-ge v7, v4, :cond_35

    if-nez v7, :cond_26

    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->timeText:[[Landroid/widget/TextView;

    aget-object v4, v4, v11

    aget-object v4, v4, v15

    goto :goto_20

    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->labelTimeText:[Landroid/widget/TextView;

    aget-object v4, v4, v15

    :goto_20
    if-nez v11, :cond_2e

    if-nez v9, :cond_2e

    const/4 v5, 0x1

    if-ne v7, v5, :cond_2e

    const/4 v6, 0x0

    :goto_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v20, v2

    const/4 v2, -0x1

    if-ge v6, v5, :cond_28

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    if-ge v8, v5, :cond_27

    goto :goto_22

    :cond_27
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v20

    goto :goto_21

    :cond_28
    const/4 v5, -0x1

    :goto_22
    if-ne v5, v2, :cond_29

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_29

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;

    iget v5, v5, Lorg/telegram/tgnet/tl/TL_account$TL_businessWeeklyOpen;->start_minute:I

    :cond_29
    if-ne v5, v2, :cond_2a

    goto :goto_27

    :cond_2a
    if-ge v5, v8, :cond_2b

    rsub-int v2, v8, 0x2760

    add-int/2addr v5, v2

    :goto_23
    const/16 v2, 0x3c

    goto :goto_24

    :cond_2b
    sub-int/2addr v5, v8

    goto :goto_23

    :goto_24
    if-ge v5, v2, :cond_2c

    const/4 v6, 0x0

    new-array v2, v6, [Ljava/lang/Object;

    const-string v6, "BusinessHoursProfileOpensInMinutes"

    invoke-static {v6, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_25
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    :cond_2c
    const/high16 v2, 0x42700000    # 60.0f

    const/16 v6, 0x5a0

    if-ge v5, v6, :cond_2d

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v5, "BusinessHoursProfileOpensInHours"

    invoke-static {v5, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    :cond_2d
    int-to-float v5, v5

    div-float/2addr v5, v2

    const/high16 v2, 0x41c00000    # 24.0f

    div-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v5, "BusinessHoursProfileOpensInDays"

    invoke-static {v5, v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    :cond_2e
    move/from16 v20, v2

    if-eqz v3, :cond_2f

    sget v2, Lorg/telegram/messenger/R$string;->BusinessHoursProfileFullOpen:I

    :goto_26
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    :cond_2f
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    :goto_27
    sget v2, Lorg/telegram/messenger/R$string;->BusinessHoursProfileClose:I

    goto :goto_26

    :cond_30
    aget-object v2, v16, v17

    invoke-static {v2}, Lorg/telegram/ui/Business/OpeningHoursActivity;->isFull(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_31

    sget v2, Lorg/telegram/messenger/R$string;->BusinessHoursProfileOpen:I

    goto :goto_26

    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_28
    aget-object v6, v16, v17

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_33

    if-lez v5, :cond_32

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    aget-object v6, v16, v17

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_33
    aget-object v5, v16, v17

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v11, :cond_34

    iget v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesCount:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesCount:I

    iget v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesHeight:I

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int v4, v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesHeight:I

    :cond_34
    :goto_29
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v20

    goto/16 :goto_1e

    :cond_35
    move/from16 v20, v2

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v18

    const/4 v4, 0x0

    const/16 v5, 0x3c

    const/4 v7, 0x7

    goto/16 :goto_1a

    :cond_36
    move/from16 v20, v2

    move-object/from16 v18, v6

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x3c

    const/4 v7, 0x7

    goto/16 :goto_18

    :cond_37
    iget-object v1, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayTimeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesCount:I

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x2

    if-gt v2, v5, :cond_39

    iget-object v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_38

    goto :goto_2a

    :cond_38
    const/high16 v2, 0x41400000    # 12.0f

    goto :goto_2b

    :cond_39
    :goto_2a
    const/high16 v2, 0x40c00000    # 6.0f

    :goto_2b
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesCount:I

    if-gt v2, v5, :cond_3b

    iget-object v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_2c

    :cond_3a
    const/high16 v3, 0x41400000    # 12.0f

    :cond_3b
    :goto_2c
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesCount:I

    if-gt v2, v5, :cond_3d

    iget-object v2, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_2d

    :cond_3c
    const/16 v2, 0x50

    goto :goto_2e

    :cond_3d
    :goto_2d
    const/16 v2, 0x10

    :goto_2e
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3e

    const/4 v11, 0x3

    goto :goto_2f

    :cond_3e
    const/4 v11, 0x5

    :goto_2f
    or-int/2addr v2, v11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesCount:I

    if-ne v14, v1, :cond_3f

    iget v1, v0, Lorg/telegram/ui/Business/ProfileHoursCell;->todayLinesHeight:I

    if-eq v13, v1, :cond_40

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    :cond_40
    return-void
.end method

.method public setOnTimezoneSwitchClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public updateColors()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    iget-object v3, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Business/ProfileHoursCell;->processColor(I)I

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Business/ProfileHoursCell;->processColor(I)I

    move-result v4

    const v5, 0x3e6147ae    # 0.22f

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClickableAnimatedTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->switchText:Lorg/telegram/ui/Components/ClickableAnimatedTextView;

    iget-object v1, p0, Lorg/telegram/ui/Business/ProfileHoursCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Business/ProfileHoursCell;->processColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void
.end method
